
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uniphier_tm_dev {TYPE_1__* data; int regmap; } ;
struct TYPE_2__ {scalar_t__ map_base; } ;


 int ALERT_CH_NUM ;
 scalar_t__ PMALERTINTCTL ;
 int PMALERTINTCTL_CLR (int) ;
 int PMALERTINTCTL_SET (int) ;
 int regmap_write_bits (int ,scalar_t__,int,int) ;

__attribute__((used)) static void uniphier_tm_irq_clear(struct uniphier_tm_dev *tdev)
{
 u32 mask = 0, bits = 0;
 int i;

 for (i = 0; i < ALERT_CH_NUM; i++) {
  mask |= (PMALERTINTCTL_CLR(i) | PMALERTINTCTL_SET(i));
  bits |= PMALERTINTCTL_CLR(i);
 }


 regmap_write_bits(tdev->regmap,
     tdev->data->map_base + PMALERTINTCTL, mask, bits);
}
