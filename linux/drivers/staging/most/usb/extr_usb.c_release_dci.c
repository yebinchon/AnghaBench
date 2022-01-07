
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_dci_obj {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct most_dci_obj*) ;
 struct most_dci_obj* to_dci_obj (struct device*) ;

__attribute__((used)) static void release_dci(struct device *dev)
{
 struct most_dci_obj *dci = to_dci_obj(dev);

 kfree(dci);
}
