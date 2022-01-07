
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {scalar_t__* time; scalar_t__* count_trans; scalar_t__* count; scalar_t__ busfree_with_check_condition; scalar_t__ busfree_without_done_command; scalar_t__ busfree_without_new_command; scalar_t__ busfree_without_old_command; scalar_t__ busfree_without_any_action; scalar_t__ disconnections; scalar_t__ total_commands; } ;


 int EINVAL ;
 TYPE_1__* HOSTDATA (struct Scsi_Host*) ;
 int KERN_INFO ;
 int idle ;
 int maxstate ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int aha152x_set_info(struct Scsi_Host *shpnt, char *buffer, int length)
{
 if(!shpnt || !buffer || length<8 || strncmp("aha152x ", buffer, 8)!=0)
  return -EINVAL;
 {
  return -EINVAL;
 }


 return length;
}
