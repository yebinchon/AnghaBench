
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ext_vpd {int * wwid; int vpd; } ;


 int be32_to_cpu (int ) ;
 int ipr_err (char*,int ,int ) ;
 int ipr_log_vpd (int *) ;

__attribute__((used)) static void ipr_log_ext_vpd(struct ipr_ext_vpd *vpd)
{
 ipr_log_vpd(&vpd->vpd);
 ipr_err("    WWN: %08X%08X\n", be32_to_cpu(vpd->wwid[0]),
  be32_to_cpu(vpd->wwid[1]));
}
