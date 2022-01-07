
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int CMD_STATE (struct scsi_cmnd*) ;
 int SNIC_IOREQ_ABTS_PENDING ;
 int SNIC_IOREQ_LR_PENDING ;

__attribute__((used)) static int
snic_tmreq_pending(struct scsi_cmnd *sc)
{
 int state = CMD_STATE(sc);

 return ((state == SNIC_IOREQ_ABTS_PENDING) ||
   (state == SNIC_IOREQ_LR_PENDING));
}
