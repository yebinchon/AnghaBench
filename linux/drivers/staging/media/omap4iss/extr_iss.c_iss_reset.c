
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {int crashed; int dev; } ;


 int ETIMEDOUT ;
 int ISS_HL_SYSCONFIG ;
 int ISS_HL_SYSCONFIG_SOFTRESET ;
 int OMAP4_ISS_MEM_TOP ;
 int dev_err (int ,char*) ;
 unsigned int iss_poll_condition_timeout (int,int,int,int) ;
 int iss_reg_read (struct iss_device*,int ,int ) ;
 int iss_reg_set (struct iss_device*,int ,int ,int) ;
 int media_entity_enum_zero (int *) ;

__attribute__((used)) static int iss_reset(struct iss_device *iss)
{
 unsigned int timeout;

 iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
      ISS_HL_SYSCONFIG_SOFTRESET);

 timeout = iss_poll_condition_timeout(
  !(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
  ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
 if (timeout) {
  dev_err(iss->dev, "ISS reset timeout\n");
  return -ETIMEDOUT;
 }

 media_entity_enum_zero(&iss->crashed);

 return 0;
}
