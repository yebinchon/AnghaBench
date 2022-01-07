
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icom_adapter {int icom_adapter_entry; } ;


 int kfree (struct icom_adapter*) ;
 int list_del (int *) ;

__attribute__((used)) static void icom_free_adapter(struct icom_adapter *icom_adapter)
{
 list_del(&icom_adapter->icom_adapter_entry);
 kfree(icom_adapter);
}
