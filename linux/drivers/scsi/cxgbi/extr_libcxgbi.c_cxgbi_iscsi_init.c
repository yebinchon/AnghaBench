
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_transport_template {int dummy; } ;
struct iscsi_transport {int name; } ;


 int CXGBI_DBG_ISCSI ;
 int ENODEV ;
 struct scsi_transport_template* iscsi_register_transport (struct iscsi_transport*) ;
 int log_debug (int,char*,int ,struct scsi_transport_template**) ;
 int pr_err (char*,int ,struct iscsi_transport*) ;

int cxgbi_iscsi_init(struct iscsi_transport *itp,
   struct scsi_transport_template **stt)
{
 *stt = iscsi_register_transport(itp);
 if (*stt == ((void*)0)) {
  pr_err("unable to register %s transport 0x%p.\n",
   itp->name, itp);
  return -ENODEV;
 }
 log_debug(1 << CXGBI_DBG_ISCSI,
  "%s, registered iscsi transport 0x%p.\n",
  itp->name, stt);
 return 0;
}
