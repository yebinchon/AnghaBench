
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct at91_udc {int matrix; } ;


 int AT91SAM9261_MATRIX_USBPUCR ;
 int AT91_MATRIX_USBPUCR_PUON ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void at91sam9261_udc_pullup(struct at91_udc *udc, int is_on)
{
 u32 usbpucr = 0;

 if (is_on)
  usbpucr = AT91_MATRIX_USBPUCR_PUON;

 regmap_update_bits(udc->matrix, AT91SAM9261_MATRIX_USBPUCR,
      AT91_MATRIX_USBPUCR_PUON, usbpucr);
}
