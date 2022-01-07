
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int pport; } ;
struct lpfc_board_event_header {int subcategory; int event_type; } ;
struct Scsi_Host {int dummy; } ;
typedef int board_event ;


 int FC_REG_BOARD_EVENT ;
 int LPFC_EVENT_PORTINTERR ;
 int LPFC_NL_VENDOR_ID ;
 int fc_get_event_number () ;
 int fc_host_post_vendor_event (struct Scsi_Host*,int ,int,char*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (int ) ;

__attribute__((used)) static void
lpfc_board_errevt_to_mgmt(struct lpfc_hba *phba)
{
 struct lpfc_board_event_header board_event;
 struct Scsi_Host *shost;

 board_event.event_type = FC_REG_BOARD_EVENT;
 board_event.subcategory = LPFC_EVENT_PORTINTERR;
 shost = lpfc_shost_from_vport(phba->pport);
 fc_host_post_vendor_event(shost, fc_get_event_number(),
      sizeof(board_event),
      (char *) &board_event,
      LPFC_NL_VENDOR_ID);
}
