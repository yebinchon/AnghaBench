
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iss_ipipeif_device {int dummy; } ;
struct iss_device {int dummy; } ;


 int ISIF_CADL ;
 int ISIF_CADL_MASK ;
 int ISIF_CADU ;
 int ISIF_CADU_MASK ;
 int OMAP4_ISS_MEM_ISP_ISIF ;
 int iss_reg_write (struct iss_device*,int ,int ,int) ;
 struct iss_device* to_iss_device (struct iss_ipipeif_device*) ;

__attribute__((used)) static void ipipeif_set_outaddr(struct iss_ipipeif_device *ipipeif, u32 addr)
{
 struct iss_device *iss = to_iss_device(ipipeif);


 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_ISIF, ISIF_CADU,
        (addr >> (16 + 5)) & ISIF_CADU_MASK);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_ISIF, ISIF_CADL,
        (addr >> 5) & ISIF_CADL_MASK);
}
