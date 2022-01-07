
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; int type; } ;
struct wcnss_download_nv_req {int last; scalar_t__ seq; TYPE_1__ hdr; scalar_t__ frag_size; int fragment; } ;
struct wcnss_ctrl {scalar_t__ ack_status; int dev; int ack; int channel; } ;
struct firmware {void* data; scalar_t__ size; } ;
typedef scalar_t__ ssize_t ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int NVBIN_FILE ;
 scalar_t__ NV_FRAGMENT_SIZE ;
 scalar_t__ WCNSS_ACK_COLD_BOOTING ;
 int WCNSS_DOWNLOAD_NV_REQ ;
 int WCNSS_REQUEST_TIMEOUT ;
 int dev_err (int ,char*,...) ;
 int kfree (struct wcnss_download_nv_req*) ;
 struct wcnss_download_nv_req* kzalloc (scalar_t__,int ) ;
 int memcpy (int ,void const*,scalar_t__) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int ) ;
 int rpmsg_send (int ,struct wcnss_download_nv_req*,scalar_t__) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int wcnss_download_nv(struct wcnss_ctrl *wcnss, bool *expect_cbc)
{
 struct wcnss_download_nv_req *req;
 const struct firmware *fw;
 const void *data;
 ssize_t left;
 int ret;

 req = kzalloc(sizeof(*req) + NV_FRAGMENT_SIZE, GFP_KERNEL);
 if (!req)
  return -ENOMEM;

 ret = request_firmware(&fw, NVBIN_FILE, wcnss->dev);
 if (ret < 0) {
  dev_err(wcnss->dev, "Failed to load nv file %s: %d\n",
   NVBIN_FILE, ret);
  goto free_req;
 }

 data = fw->data;
 left = fw->size;

 req->hdr.type = WCNSS_DOWNLOAD_NV_REQ;
 req->hdr.len = sizeof(*req) + NV_FRAGMENT_SIZE;

 req->last = 0;
 req->frag_size = NV_FRAGMENT_SIZE;

 req->seq = 0;
 do {
  if (left <= NV_FRAGMENT_SIZE) {
   req->last = 1;
   req->frag_size = left;
   req->hdr.len = sizeof(*req) + left;
  }

  memcpy(req->fragment, data, req->frag_size);

  ret = rpmsg_send(wcnss->channel, req, req->hdr.len);
  if (ret < 0) {
   dev_err(wcnss->dev, "failed to send smd packet\n");
   goto release_fw;
  }


  req->seq++;

  data += NV_FRAGMENT_SIZE;
  left -= NV_FRAGMENT_SIZE;
 } while (left > 0);

 ret = wait_for_completion_timeout(&wcnss->ack, WCNSS_REQUEST_TIMEOUT);
 if (!ret) {
  dev_err(wcnss->dev, "timeout waiting for nv upload ack\n");
  ret = -ETIMEDOUT;
 } else {
  *expect_cbc = wcnss->ack_status == WCNSS_ACK_COLD_BOOTING;
  ret = 0;
 }

release_fw:
 release_firmware(fw);
free_req:
 kfree(req);

 return ret;
}
