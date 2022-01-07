
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ imm_struct ;


 int EINVAL ;
 TYPE_1__* imm_dev (struct Scsi_Host*) ;
 int printk (char*) ;
 int simple_strtoul (char*,int *,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int imm_write_info(struct Scsi_Host *host, char *buffer, int length)
{
 imm_struct *dev = imm_dev(host);

 if ((length > 5) && (strncmp(buffer, "mode=", 5) == 0)) {
  dev->mode = simple_strtoul(buffer + 5, ((void*)0), 0);
  return length;
 }
 printk("imm /proc: invalid variable\n");
 return -EINVAL;
}
