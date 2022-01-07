
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libfc_function_template {int dummy; } ;
struct fc_lport {int tt; } ;


 int bnx2fc_libfc_fcn_templ ;
 int fc_disc_config (struct fc_lport*,struct fc_lport*) ;
 int fc_disc_init (struct fc_lport*) ;
 int fc_elsct_init (struct fc_lport*) ;
 int fc_exch_init (struct fc_lport*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int bnx2fc_libfc_config(struct fc_lport *lport)
{


 memcpy(&lport->tt, &bnx2fc_libfc_fcn_templ,
  sizeof(struct libfc_function_template));
 fc_elsct_init(lport);
 fc_exch_init(lport);
 fc_disc_init(lport);
 fc_disc_config(lport, lport);
 return 0;
}
