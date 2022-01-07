
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_device {int dummy; } ;
struct se_cmd {scalar_t__ data_length; struct se_device* se_dev; } ;
struct scatterlist {int dummy; } ;
struct fd_dev {int fbd_flags; } ;
typedef int sense_reason_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int FDBD_HAS_ASYNC_IO ;
 struct fd_dev* FD_DEV (struct se_device*) ;
 scalar_t__ FD_MAX_BYTES ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int fd_execute_rw_aio (struct se_cmd*,struct scatterlist*,int ,int) ;
 int fd_execute_rw_buffered (struct se_cmd*,struct scatterlist*,int ,int) ;
 int pr_err (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static sense_reason_t
fd_execute_rw(struct se_cmd *cmd, struct scatterlist *sgl, u32 sgl_nents,
       enum dma_data_direction data_direction)
{
 struct se_device *dev = cmd->se_dev;
 struct fd_dev *fd_dev = FD_DEV(dev);





 if (cmd->data_length > FD_MAX_BYTES) {
  pr_err("FILEIO: Not able to process I/O of %u bytes due to"
         "FD_MAX_BYTES: %u iovec count limitation\n",
   cmd->data_length, FD_MAX_BYTES);
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
 }

 if (fd_dev->fbd_flags & FDBD_HAS_ASYNC_IO)
  return fd_execute_rw_aio(cmd, sgl, sgl_nents, data_direction);
 return fd_execute_rw_buffered(cmd, sgl, sgl_nents, data_direction);
}
