
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_pcie {int reset; } ;


 scalar_t__ PERST_DELAY_US ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int msleep (int) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static void qcom_ep_reset_deassert(struct qcom_pcie *pcie)
{

 msleep(100);
 gpiod_set_value_cansleep(pcie->reset, 0);
 usleep_range(PERST_DELAY_US, PERST_DELAY_US + 500);
}
