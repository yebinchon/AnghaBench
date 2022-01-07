
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct meson_spicc_device {TYPE_1__* pdev; int core; } ;
struct TYPE_2__ {int dev; } ;


 unsigned long FIELD_PREP (unsigned long,unsigned int) ;
 unsigned long SPICC_DATARATE_MASK ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (int *,char*,unsigned long,unsigned long,unsigned long,unsigned int) ;
 int dev_warn_once (int *,char*,unsigned long) ;

__attribute__((used)) static u32 meson_spicc_setup_speed(struct meson_spicc_device *spicc, u32 conf,
       u32 speed)
{
 unsigned long parent, value;
 unsigned int i, div;

 parent = clk_get_rate(spicc->core);


 for (i = 0 ; i < 7 ; ++i) {

  value = parent >> (i + 2);

  if (value <= speed)
   break;
 }


 if (i > 7) {
  div = 7;
  dev_warn_once(&spicc->pdev->dev, "unable to get close to speed %u\n",
         speed);
 } else
  div = i;

 dev_dbg(&spicc->pdev->dev, "parent %lu, speed %u -> %lu (%u)\n",
  parent, speed, value, div);

 conf &= ~SPICC_DATARATE_MASK;
 conf |= FIELD_PREP(SPICC_DATARATE_MASK, div);

 return conf;
}
