
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {int dummy; } ;
struct aer_rpc {int dummy; } ;


 int aer_disable_rootport (struct aer_rpc*) ;
 struct aer_rpc* get_service_data (struct pcie_device*) ;

__attribute__((used)) static void aer_remove(struct pcie_device *dev)
{
 struct aer_rpc *rpc = get_service_data(dev);

 aer_disable_rootport(rpc);
}
