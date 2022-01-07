
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct rt2x00_dev {TYPE_1__ csr; int * eeprom; int * rf; } ;


 int iounmap (int ) ;
 int kfree (int *) ;

__attribute__((used)) static void rt2x00soc_free_reg(struct rt2x00_dev *rt2x00dev)
{
 kfree(rt2x00dev->rf);
 rt2x00dev->rf = ((void*)0);

 kfree(rt2x00dev->eeprom);
 rt2x00dev->eeprom = ((void*)0);

 iounmap(rt2x00dev->csr.base);
}
