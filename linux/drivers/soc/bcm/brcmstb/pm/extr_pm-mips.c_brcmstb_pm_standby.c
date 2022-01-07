
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAUSEF_IV ;
 int ST0_BEV ;
 int brcmstb_pm_handshake () ;
 int brcmstb_pm_s2 () ;
 int brcmstb_pm_s3 () ;
 int clear_c0_cause (int ) ;
 int clear_c0_status (int ) ;
 int irq_disable_hazard () ;
 int set_c0_cause (int ) ;
 int set_c0_status (int ) ;

__attribute__((used)) static int brcmstb_pm_standby(bool deep_standby)
{
 brcmstb_pm_handshake();


 clear_c0_cause(CAUSEF_IV);
 irq_disable_hazard();
 set_c0_status(ST0_BEV);
 irq_disable_hazard();

 if (deep_standby)
  brcmstb_pm_s3();
 else
  brcmstb_pm_s2();


 clear_c0_status(ST0_BEV);
 irq_disable_hazard();
 set_c0_cause(CAUSEF_IV);
 irq_disable_hazard();

 return 0;
}
