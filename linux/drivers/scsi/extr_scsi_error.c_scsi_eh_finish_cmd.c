
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int eh_entry; } ;
struct list_head {int dummy; } ;


 int list_move_tail (int *,struct list_head*) ;

void scsi_eh_finish_cmd(struct scsi_cmnd *scmd, struct list_head *done_q)
{
 list_move_tail(&scmd->eh_entry, done_q);
}
