
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {int async_qp; int * parentdp; } ;
typedef TYPE_1__ Sg_fd ;
typedef int Sg_device ;


 int ENXIO ;
 int KERN_INFO ;
 int SCSI_LOG_TIMEOUT (int,int ) ;
 int fasync_helper (int,struct file*,int,int *) ;
 int sg_printk (int ,int *,char*,int) ;

__attribute__((used)) static int
sg_fasync(int fd, struct file *filp, int mode)
{
 Sg_device *sdp;
 Sg_fd *sfp;

 if ((!(sfp = (Sg_fd *) filp->private_data)) || (!(sdp = sfp->parentdp)))
  return -ENXIO;
 SCSI_LOG_TIMEOUT(3, sg_printk(KERN_INFO, sdp,
          "sg_fasync: mode=%d\n", mode));

 return fasync_helper(fd, filp, mode, &sfp->async_qp);
}
