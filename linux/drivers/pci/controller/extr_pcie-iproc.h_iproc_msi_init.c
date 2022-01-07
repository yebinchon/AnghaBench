
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_pcie {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int iproc_msi_init(struct iproc_pcie *pcie,
     struct device_node *node)
{
 return -ENODEV;
}
