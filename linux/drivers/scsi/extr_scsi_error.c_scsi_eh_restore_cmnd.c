
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_eh_save {int eh_eflags; int prot_op; int underflow; int resid_len; int result; int sdb; int data_direction; int cmnd; int cmd_len; } ;
struct TYPE_2__ {int resid_len; } ;
struct scsi_cmnd {int eh_eflags; int prot_op; int underflow; TYPE_1__ req; int result; int sdb; int sc_data_direction; int cmnd; int cmd_len; } ;



void scsi_eh_restore_cmnd(struct scsi_cmnd* scmd, struct scsi_eh_save *ses)
{



 scmd->cmd_len = ses->cmd_len;
 scmd->cmnd = ses->cmnd;
 scmd->sc_data_direction = ses->data_direction;
 scmd->sdb = ses->sdb;
 scmd->result = ses->result;
 scmd->req.resid_len = ses->resid_len;
 scmd->underflow = ses->underflow;
 scmd->prot_op = ses->prot_op;
 scmd->eh_eflags = ses->eh_eflags;
}
