
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stm32_usbphyc {scalar_t__ switch_setup; scalar_t__ base; } ;


 scalar_t__ STM32_USBPHYC_MISC ;
 int SWITHOST ;
 int stm32_usbphyc_clr_bits (scalar_t__,int ) ;
 int stm32_usbphyc_set_bits (scalar_t__,int ) ;

__attribute__((used)) static void stm32_usbphyc_switch_setup(struct stm32_usbphyc *usbphyc,
           u32 utmi_switch)
{
 if (!utmi_switch)
  stm32_usbphyc_clr_bits(usbphyc->base + STM32_USBPHYC_MISC,
           SWITHOST);
 else
  stm32_usbphyc_set_bits(usbphyc->base + STM32_USBPHYC_MISC,
           SWITHOST);
 usbphyc->switch_setup = utmi_switch;
}
