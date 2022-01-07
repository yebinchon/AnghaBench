
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iss_ipipe_device {int dummy; } ;
struct iss_device {int dummy; } ;


 int IPIPE_SRC_EN ;
 int IPIPE_SRC_EN_EN ;
 int OMAP4_ISS_MEM_ISP_IPIPE ;
 int iss_reg_update (struct iss_device*,int ,int ,int ,int ) ;
 struct iss_device* to_iss_device (struct iss_ipipe_device*) ;

__attribute__((used)) static void ipipe_enable(struct iss_ipipe_device *ipipe, u8 enable)
{
 struct iss_device *iss = to_iss_device(ipipe);

 iss_reg_update(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_SRC_EN,
         IPIPE_SRC_EN_EN, enable ? IPIPE_SRC_EN_EN : 0);
}
