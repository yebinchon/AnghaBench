
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
struct TYPE_11__ {unsigned int class; TYPE_1__ dev; TYPE_2__* algo_data; int owner; int name; } ;
struct TYPE_8__ {int udelay; struct nvidia_i2c_chan* data; int timeout; int getscl; int getsda; int (* setscl ) (struct nvidia_i2c_chan*,int) ;int (* setsda ) (struct nvidia_i2c_chan*,int) ;} ;
struct nvidia_i2c_chan {TYPE_4__* par; TYPE_5__ adapter; TYPE_2__ algo; } ;
struct TYPE_10__ {TYPE_3__* pci_dev; } ;
struct TYPE_9__ {int dev; } ;


 int THIS_MODULE ;
 int dev_dbg (int *,char*,char const*) ;
 int dev_warn (int *,char*,char const*) ;
 int i2c_bit_add_bus (TYPE_5__*) ;
 int i2c_set_adapdata (TYPE_5__*,struct nvidia_i2c_chan*) ;
 int msecs_to_jiffies (int) ;
 int nvidia_gpio_getscl ;
 int nvidia_gpio_getsda ;
 int nvidia_gpio_setscl (struct nvidia_i2c_chan*,int) ;
 int nvidia_gpio_setsda (struct nvidia_i2c_chan*,int) ;
 int strcpy (int ,char const*) ;
 int udelay (int) ;

__attribute__((used)) static int nvidia_setup_i2c_bus(struct nvidia_i2c_chan *chan, const char *name,
    unsigned int i2c_class)
{
 int rc;

 strcpy(chan->adapter.name, name);
 chan->adapter.owner = THIS_MODULE;
 chan->adapter.class = i2c_class;
 chan->adapter.algo_data = &chan->algo;
 chan->adapter.dev.parent = &chan->par->pci_dev->dev;
 chan->algo.setsda = nvidia_gpio_setsda;
 chan->algo.setscl = nvidia_gpio_setscl;
 chan->algo.getsda = nvidia_gpio_getsda;
 chan->algo.getscl = nvidia_gpio_getscl;
 chan->algo.udelay = 40;
 chan->algo.timeout = msecs_to_jiffies(2);
 chan->algo.data = chan;

 i2c_set_adapdata(&chan->adapter, chan);


 nvidia_gpio_setsda(chan, 1);
 nvidia_gpio_setscl(chan, 1);
 udelay(20);

 rc = i2c_bit_add_bus(&chan->adapter);
 if (rc == 0)
  dev_dbg(&chan->par->pci_dev->dev,
   "I2C bus %s registered.\n", name);
 else {
  dev_warn(&chan->par->pci_dev->dev,
    "Failed to register I2C bus %s.\n", name);
  chan->par = ((void*)0);
 }

 return rc;
}
