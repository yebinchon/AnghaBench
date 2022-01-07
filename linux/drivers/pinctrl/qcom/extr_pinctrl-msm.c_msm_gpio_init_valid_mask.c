
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct msm_pinctrl {int dev; TYPE_1__* soc; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int* reserved_gpios; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bitmap_fill (unsigned long*,unsigned int) ;
 int bitmap_zero (unsigned long*,unsigned int) ;
 int clear_bit (int const,unsigned long*) ;
 int dev_err (int ,char*) ;
 int device_property_count_u16 (int ,char*) ;
 int device_property_read_u16_array (int ,char*,int *,unsigned int) ;
 struct msm_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int kfree (int *) ;
 int * kmalloc_array (unsigned int,int,int ) ;
 int set_bit (int ,unsigned long*) ;

__attribute__((used)) static int msm_gpio_init_valid_mask(struct gpio_chip *gc,
        unsigned long *valid_mask,
        unsigned int ngpios)
{
 struct msm_pinctrl *pctrl = gpiochip_get_data(gc);
 int ret;
 unsigned int len, i;
 const int *reserved = pctrl->soc->reserved_gpios;
 u16 *tmp;


 if (reserved) {
  bitmap_fill(valid_mask, ngpios);
  for (i = 0; reserved[i] >= 0; i++) {
   if (i >= ngpios || reserved[i] >= ngpios) {
    dev_err(pctrl->dev, "invalid list of reserved GPIOs\n");
    return -EINVAL;
   }
   clear_bit(reserved[i], valid_mask);
  }

  return 0;
 }


 len = ret = device_property_count_u16(pctrl->dev, "gpios");
 if (ret < 0)
  return 0;

 if (ret > ngpios)
  return -EINVAL;

 tmp = kmalloc_array(len, sizeof(*tmp), GFP_KERNEL);
 if (!tmp)
  return -ENOMEM;

 ret = device_property_read_u16_array(pctrl->dev, "gpios", tmp, len);
 if (ret < 0) {
  dev_err(pctrl->dev, "could not read list of GPIOs\n");
  goto out;
 }

 bitmap_zero(valid_mask, ngpios);
 for (i = 0; i < len; i++)
  set_bit(tmp[i], valid_mask);

out:
 kfree(tmp);
 return ret;
}
