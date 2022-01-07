
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iss_resizer_device {int dummy; } ;
struct iss_device {int dummy; } ;


 int OMAP4_ISS_MEM_ISP_RESIZER ;
 int RSZ_EN_EN ;
 int RSZ_SRC_EN ;
 int RSZ_SRC_EN_SRC_EN ;
 int RZA_EN ;
 int iss_reg_update (struct iss_device*,int ,int ,int ,int ) ;
 struct iss_device* to_iss_device (struct iss_resizer_device*) ;

__attribute__((used)) static void resizer_enable(struct iss_resizer_device *resizer, u8 enable)
{
 struct iss_device *iss = to_iss_device(resizer);

 iss_reg_update(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SRC_EN,
         RSZ_SRC_EN_SRC_EN, enable ? RSZ_SRC_EN_SRC_EN : 0);


 iss_reg_update(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_EN, RSZ_EN_EN,
         enable ? RSZ_EN_EN : 0);
}
