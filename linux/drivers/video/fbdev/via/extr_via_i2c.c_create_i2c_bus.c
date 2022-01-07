
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_port_cfg {int ioport_index; } ;
struct pci_dev {int dev; } ;
struct i2c_algo_bit_data {int udelay; int timeout; struct via_port_cfg* data; int getscl; int getsda; int (* setscl ) (struct via_port_cfg*,int) ;int (* setsda ) (struct via_port_cfg*,int) ;} ;
struct TYPE_2__ {int * parent; } ;
struct i2c_adapter {TYPE_1__ dev; struct i2c_algo_bit_data* algo_data; int class; int owner; int name; } ;


 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 int i2c_bit_add_bus (struct i2c_adapter*) ;
 int sprintf (int ,char*,int) ;
 int udelay (int) ;
 int via_i2c_getscl ;
 int via_i2c_getsda ;
 int via_i2c_setscl (struct via_port_cfg*,int) ;
 int via_i2c_setsda (struct via_port_cfg*,int) ;

__attribute__((used)) static int create_i2c_bus(struct i2c_adapter *adapter,
     struct i2c_algo_bit_data *algo,
     struct via_port_cfg *adap_cfg,
     struct pci_dev *pdev)
{
 algo->setsda = via_i2c_setsda;
 algo->setscl = via_i2c_setscl;
 algo->getsda = via_i2c_getsda;
 algo->getscl = via_i2c_getscl;
 algo->udelay = 10;
 algo->timeout = 2;
 algo->data = adap_cfg;

 sprintf(adapter->name, "viafb i2c io_port idx 0x%02x",
  adap_cfg->ioport_index);
 adapter->owner = THIS_MODULE;
 adapter->class = I2C_CLASS_DDC;
 adapter->algo_data = algo;
 if (pdev)
  adapter->dev.parent = &pdev->dev;
 else
  adapter->dev.parent = ((void*)0);



 via_i2c_setsda(adap_cfg, 1);
 via_i2c_setscl(adap_cfg, 1);
 udelay(20);

 return i2c_bit_add_bus(adapter);
}
