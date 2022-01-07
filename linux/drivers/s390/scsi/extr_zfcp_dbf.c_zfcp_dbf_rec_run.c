
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int dummy; } ;


 int zfcp_dbf_rec_run_lvl (int,char*,struct zfcp_erp_action*) ;

void zfcp_dbf_rec_run(char *tag, struct zfcp_erp_action *erp)
{
 zfcp_dbf_rec_run_lvl(1, tag, erp);
}
