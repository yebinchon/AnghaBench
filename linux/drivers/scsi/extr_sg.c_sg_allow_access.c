
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_fd {TYPE_2__* parentdp; } ;
struct file {int f_mode; struct sg_fd* private_data; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ TYPE_SCANNER ;
 int blk_verify_command (unsigned char*,int ) ;

__attribute__((used)) static int sg_allow_access(struct file *filp, unsigned char *cmd)
{
 struct sg_fd *sfp = filp->private_data;

 if (sfp->parentdp->device->type == TYPE_SCANNER)
  return 0;

 return blk_verify_command(cmd, filp->f_mode);
}
