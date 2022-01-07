
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int dummy; } ;


 int aac_adapter_disable_int (struct aac_dev*) ;
 int aac_free_irq (struct aac_dev*) ;

__attribute__((used)) static void aac_release_resources(struct aac_dev *aac)
{
 aac_adapter_disable_int(aac);
 aac_free_irq(aac);
}
