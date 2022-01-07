
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_hcb {int scsi_mode; } ;
struct Scsi_Host {int dummy; } ;


 int INB (struct sym_hcb*,int ) ;
 int SMODE ;
 int nc_stest4 ;
 int printf (char*,char*,char*,char*) ;
 struct sym_hcb* sym_get_hcb (struct Scsi_Host*) ;
 char* sym_name (struct sym_hcb*) ;
 char* sym_scsi_bus_mode (int) ;
 int sym_start_up (struct Scsi_Host*,int) ;

__attribute__((used)) static void sym_int_sbmc(struct Scsi_Host *shost)
{
 struct sym_hcb *np = sym_get_hcb(shost);
 u_char scsi_mode = INB(np, nc_stest4) & SMODE;




 printf("%s: SCSI BUS mode change from %s to %s.\n", sym_name(np),
  sym_scsi_bus_mode(np->scsi_mode), sym_scsi_bus_mode(scsi_mode));





 sym_start_up(shost, 2);
}
