
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * parent; } ;
struct TYPE_11__ {TYPE_1__ dev; TYPE_2__* algo_data; int owner; int name; } ;
struct TYPE_8__ {int udelay; int timeout; struct radeon_i2c_chan* data; int getscl; int getsda; int (* setscl ) (struct radeon_i2c_chan*,int) ;int (* setsda ) (struct radeon_i2c_chan*,int) ;} ;
struct radeon_i2c_chan {TYPE_4__* rinfo; TYPE_5__ adapter; TYPE_2__ algo; } ;
struct TYPE_10__ {TYPE_3__* pdev; } ;
struct TYPE_9__ {int dev; } ;


 int THIS_MODULE ;
 int dev_dbg (int *,char*,char const*) ;
 int dev_warn (int *,char*,char const*) ;
 int i2c_bit_add_bus (TYPE_5__*) ;
 int i2c_set_adapdata (TYPE_5__*,struct radeon_i2c_chan*) ;
 int radeon_gpio_getscl ;
 int radeon_gpio_getsda ;
 int radeon_gpio_setscl (struct radeon_i2c_chan*,int) ;
 int radeon_gpio_setsda (struct radeon_i2c_chan*,int) ;
 int snprintf (int ,int,char*,char const*) ;
 int udelay (int) ;

__attribute__((used)) static int radeon_setup_i2c_bus(struct radeon_i2c_chan *chan, const char *name)
{
 int rc;

 snprintf(chan->adapter.name, sizeof(chan->adapter.name),
   "radeonfb %s", name);
 chan->adapter.owner = THIS_MODULE;
 chan->adapter.algo_data = &chan->algo;
 chan->adapter.dev.parent = &chan->rinfo->pdev->dev;
 chan->algo.setsda = radeon_gpio_setsda;
 chan->algo.setscl = radeon_gpio_setscl;
 chan->algo.getsda = radeon_gpio_getsda;
 chan->algo.getscl = radeon_gpio_getscl;
 chan->algo.udelay = 10;
 chan->algo.timeout = 20;
 chan->algo.data = chan;

 i2c_set_adapdata(&chan->adapter, chan);


 radeon_gpio_setsda(chan, 1);
 radeon_gpio_setscl(chan, 1);
 udelay(20);

 rc = i2c_bit_add_bus(&chan->adapter);
 if (rc == 0)
  dev_dbg(&chan->rinfo->pdev->dev, "I2C bus %s registered.\n", name);
 else
  dev_warn(&chan->rinfo->pdev->dev, "Failed to register I2C bus %s.\n", name);
 return rc;
}
