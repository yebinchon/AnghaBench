
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_hostrcb {int dummy; } ;
struct ipr_ext_vpd {int * wwid; int vpd; } ;


 int be32_to_cpu (int ) ;
 int ipr_hcam_err (struct ipr_hostrcb*,char*,char*,int ,int ) ;
 int ipr_log_vpd_compact (char*,struct ipr_hostrcb*,int *) ;

__attribute__((used)) static void ipr_log_ext_vpd_compact(char *prefix, struct ipr_hostrcb *hostrcb,
        struct ipr_ext_vpd *vpd)
{
 ipr_log_vpd_compact(prefix, hostrcb, &vpd->vpd);
 ipr_hcam_err(hostrcb, "%s WWN: %08X%08X\n", prefix,
       be32_to_cpu(vpd->wwid[0]), be32_to_cpu(vpd->wwid[1]));
}
