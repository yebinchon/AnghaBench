
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_transport_template {int dummy; } ;
struct iscsi_transport {int name; } ;


 int CXGBI_DBG_ISCSI ;
 int iscsi_unregister_transport (struct iscsi_transport*) ;
 int log_debug (int,char*,struct iscsi_transport*,int ,struct scsi_transport_template*) ;

void cxgbi_iscsi_cleanup(struct iscsi_transport *itp,
   struct scsi_transport_template **stt)
{
 if (*stt) {
  log_debug(1 << CXGBI_DBG_ISCSI,
   "de-register transport 0x%p, %s, stt 0x%p.\n",
   itp, itp->name, *stt);
  *stt = ((void*)0);
  iscsi_unregister_transport(itp);
 }
}
