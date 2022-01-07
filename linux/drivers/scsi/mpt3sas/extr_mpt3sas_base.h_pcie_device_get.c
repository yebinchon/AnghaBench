
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _pcie_device {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void pcie_device_get(struct _pcie_device *p)
{
 kref_get(&p->refcount);
}
