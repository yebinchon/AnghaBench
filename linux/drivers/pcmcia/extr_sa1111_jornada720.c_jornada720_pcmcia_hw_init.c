
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;
struct soc_pcmcia_socket {struct jornada720_data* driver_data; scalar_t__ nr; TYPE_1__ socket; } ;
struct jornada720_data {void** gpio; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 size_t J720_GPIO_3V ;
 size_t J720_GPIO_PWR ;
 int PTR_ERR (void*) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 struct jornada720_data* devm_kzalloc (struct device*,int,int ) ;

__attribute__((used)) static int jornada720_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 struct device *dev = skt->socket.dev.parent;
 struct jornada720_data *j;

 j = devm_kzalloc(dev, sizeof(*j), GFP_KERNEL);
 if (!j)
  return -ENOMEM;

 j->gpio[J720_GPIO_PWR] = devm_gpiod_get(dev, skt->nr ? "s1-power" :
      "s0-power", GPIOD_OUT_LOW);
 if (IS_ERR(j->gpio[J720_GPIO_PWR]))
  return PTR_ERR(j->gpio[J720_GPIO_PWR]);

 j->gpio[J720_GPIO_3V] = devm_gpiod_get(dev, skt->nr ? "s1-3v" :
            "s0-3v", GPIOD_OUT_LOW);
 if (IS_ERR(j->gpio[J720_GPIO_3V]))
  return PTR_ERR(j->gpio[J720_GPIO_3V]);

 skt->driver_data = j;

 return 0;
}
