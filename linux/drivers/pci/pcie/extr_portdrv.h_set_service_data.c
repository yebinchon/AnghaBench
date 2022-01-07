
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {void* priv_data; } ;



__attribute__((used)) static inline void set_service_data(struct pcie_device *dev, void *data)
{
 dev->priv_data = data;
}
