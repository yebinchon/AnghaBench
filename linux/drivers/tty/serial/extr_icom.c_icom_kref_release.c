
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kref {int dummy; } ;
struct icom_adapter {int dummy; } ;


 int icom_remove_adapter (struct icom_adapter*) ;
 struct icom_adapter* to_icom_adapter (struct kref*) ;

__attribute__((used)) static void icom_kref_release(struct kref *kref)
{
 struct icom_adapter *icom_adapter;

 icom_adapter = to_icom_adapter(kref);
 icom_remove_adapter(icom_adapter);
}
