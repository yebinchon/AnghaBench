
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int TOTAL_NUMBER_OF_PORTS ;
 struct net_device** cvm_oct_device ;
 int cvm_oct_free_tx_skbs (struct net_device*) ;

__attribute__((used)) static void cvm_oct_tx_do_cleanup(unsigned long arg)
{
 int port;

 for (port = 0; port < TOTAL_NUMBER_OF_PORTS; port++) {
  if (cvm_oct_device[port]) {
   struct net_device *dev = cvm_oct_device[port];

   cvm_oct_free_tx_skbs(dev);
  }
 }
}
