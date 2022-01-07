
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iss_ipipeif_device {int dummy; } ;
struct iss_device {int dummy; } ;


 int ISIF_SYNCEN ;
 int ISIF_SYNCEN_SYEN ;
 int OMAP4_ISS_MEM_ISP_ISIF ;
 int iss_reg_update (struct iss_device*,int ,int ,int ,int ) ;
 struct iss_device* to_iss_device (struct iss_ipipeif_device*) ;

__attribute__((used)) static void ipipeif_enable(struct iss_ipipeif_device *ipipeif, u8 enable)
{
 struct iss_device *iss = to_iss_device(ipipeif);

 iss_reg_update(iss, OMAP4_ISS_MEM_ISP_ISIF, ISIF_SYNCEN,
         ISIF_SYNCEN_SYEN, enable ? ISIF_SYNCEN_SYEN : 0);
}
