
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx150x_pinctrl {struct sx150x_device_data* data; } ;
struct sx150x_device_data {unsigned int reg_sense; int ngpios; scalar_t__ model; } ;


 scalar_t__ SX150X_123 ;
 scalar_t__ SX150X_456 ;

__attribute__((used)) static unsigned int sx150x_maybe_swizzle(struct sx150x_pinctrl *pctl,
      unsigned int reg, unsigned int val)
{
 unsigned int a, b;
 const struct sx150x_device_data *data = pctl->data;
 if (reg == data->reg_sense &&
     data->ngpios == 16 &&
     (data->model == SX150X_123 ||
      data->model == SX150X_456)) {
  a = val & 0x00ff0000;
  b = val & 0x0000ff00;

  val &= 0xff0000ff;
  val |= b << 8;
  val |= a >> 8;
 }

 return val;
}
