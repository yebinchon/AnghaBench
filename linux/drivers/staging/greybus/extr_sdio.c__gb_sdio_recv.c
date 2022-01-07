
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct scatterlist {int dummy; } ;
struct mmc_data {unsigned int sg_len; int flags; size_t blksz; struct scatterlist* sg; } ;
struct gb_sdio_transfer_response {int * data; int data_blksz; int data_blocks; } ;
struct gb_sdio_transfer_request {int data_flags; void* data_blksz; void* data_blocks; } ;
struct gb_sdio_host {size_t data_max; int mmc; int connection; } ;
struct gb_operation {TYPE_2__* response; TYPE_1__* request; } ;
typedef int off_t ;
struct TYPE_4__ {struct gb_sdio_transfer_response* payload; } ;
struct TYPE_3__ {struct gb_sdio_transfer_request* payload; } ;


 int EINVAL ;
 int ENOMEM ;
 int GB_SDIO_TYPE_TRANSFER ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 void* cpu_to_le16 (size_t) ;
 int dev_err (int ,char*,size_t,size_t) ;
 struct gb_operation* gb_operation_create (int ,int ,int,size_t,int ) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_request_send_sync (struct gb_operation*) ;
 size_t le16_to_cpu (int ) ;
 int mmc_dev (int ) ;
 size_t sg_pcopy_from_buffer (struct scatterlist*,unsigned int,int *,size_t,int ) ;

__attribute__((used)) static int _gb_sdio_recv(struct gb_sdio_host *host, struct mmc_data *data,
    size_t len, u16 nblocks, off_t skip)
{
 struct gb_sdio_transfer_request *request;
 struct gb_sdio_transfer_response *response;
 struct gb_operation *operation;
 struct scatterlist *sg = data->sg;
 unsigned int sg_len = data->sg_len;
 size_t copied;
 u16 recv_blksz;
 u16 recv_blocks;
 int ret;

 WARN_ON(len > host->data_max);

 operation = gb_operation_create(host->connection, GB_SDIO_TYPE_TRANSFER,
     sizeof(*request),
     len + sizeof(*response), GFP_KERNEL);
 if (!operation)
  return -ENOMEM;

 request = operation->request->payload;
 request->data_flags = data->flags >> 8;
 request->data_blocks = cpu_to_le16(nblocks);
 request->data_blksz = cpu_to_le16(data->blksz);

 ret = gb_operation_request_send_sync(operation);
 if (ret < 0)
  goto err_put_operation;

 response = operation->response->payload;
 recv_blocks = le16_to_cpu(response->data_blocks);
 recv_blksz = le16_to_cpu(response->data_blksz);

 if (len != recv_blksz * recv_blocks) {
  dev_err(mmc_dev(host->mmc), "recv: size received: %d != %zu\n",
   recv_blksz * recv_blocks, len);
  ret = -EINVAL;
  goto err_put_operation;
 }

 copied = sg_pcopy_from_buffer(sg, sg_len, &response->data[0], len,
          skip);
 if (copied != len)
  ret = -EINVAL;

err_put_operation:
 gb_operation_put(operation);

 return ret;
}
