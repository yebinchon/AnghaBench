
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uas_cmd_info {int state; int uas_tag; } ;
struct scsi_cmnd {int SCp; } ;


 int ALLOC_CMD_URB ;
 int ALLOC_DATA_IN_URB ;
 int ALLOC_DATA_OUT_URB ;
 int COMMAND_ABORTED ;
 int COMMAND_INFLIGHT ;
 int DATA_IN_URB_INFLIGHT ;
 int DATA_OUT_URB_INFLIGHT ;
 int IS_IN_WORK_LIST ;
 int KERN_INFO ;
 int SUBMIT_CMD_URB ;
 int SUBMIT_DATA_IN_URB ;
 int SUBMIT_DATA_OUT_URB ;
 int SUBMIT_STATUS_URB ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,char const*,int,int ,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int scsi_print_command (struct scsi_cmnd*) ;

__attribute__((used)) static void uas_log_cmd_state(struct scsi_cmnd *cmnd, const char *prefix,
         int status)
{
 struct uas_cmd_info *ci = (void *)&cmnd->SCp;
 struct uas_cmd_info *cmdinfo = (void *)&cmnd->SCp;

 scmd_printk(KERN_INFO, cmnd,
      "%s %d uas-tag %d inflight:%s%s%s%s%s%s%s%s%s%s%s%s ",
      prefix, status, cmdinfo->uas_tag,
      (ci->state & SUBMIT_STATUS_URB) ? " s-st" : "",
      (ci->state & ALLOC_DATA_IN_URB) ? " a-in" : "",
      (ci->state & SUBMIT_DATA_IN_URB) ? " s-in" : "",
      (ci->state & ALLOC_DATA_OUT_URB) ? " a-out" : "",
      (ci->state & SUBMIT_DATA_OUT_URB) ? " s-out" : "",
      (ci->state & ALLOC_CMD_URB) ? " a-cmd" : "",
      (ci->state & SUBMIT_CMD_URB) ? " s-cmd" : "",
      (ci->state & COMMAND_INFLIGHT) ? " CMD" : "",
      (ci->state & DATA_IN_URB_INFLIGHT) ? " IN" : "",
      (ci->state & DATA_OUT_URB_INFLIGHT) ? " OUT" : "",
      (ci->state & COMMAND_ABORTED) ? " abort" : "",
      (ci->state & IS_IN_WORK_LIST) ? " work" : "");
 scsi_print_command(cmnd);
}
