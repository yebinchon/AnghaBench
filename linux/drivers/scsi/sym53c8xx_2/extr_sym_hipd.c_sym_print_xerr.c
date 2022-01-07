
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int XE_BAD_PHASE ;
 int XE_EXTRA_DATA ;
 int XE_PARITY_ERR ;
 int XE_SODL_UNRUN ;
 int XE_SWIDE_OVRUN ;
 int sym_print_addr (struct scsi_cmnd*,char*) ;

void sym_print_xerr(struct scsi_cmnd *cmd, int x_status)
{
 if (x_status & XE_PARITY_ERR) {
  sym_print_addr(cmd, "unrecovered SCSI parity error.\n");
 }
 if (x_status & XE_EXTRA_DATA) {
  sym_print_addr(cmd, "extraneous data discarded.\n");
 }
 if (x_status & XE_BAD_PHASE) {
  sym_print_addr(cmd, "illegal scsi phase (4/5).\n");
 }
 if (x_status & XE_SODL_UNRUN) {
  sym_print_addr(cmd, "ODD transfer in DATA OUT phase.\n");
 }
 if (x_status & XE_SWIDE_OVRUN) {
  sym_print_addr(cmd, "ODD transfer in DATA IN phase.\n");
 }
}
