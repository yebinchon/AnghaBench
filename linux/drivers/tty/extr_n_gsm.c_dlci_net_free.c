
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_dlci {int * net; int prev_data; int data; int prev_adaption; int adaption; } ;


 int WARN_ON (int) ;
 int free_netdev (int *) ;

__attribute__((used)) static void dlci_net_free(struct gsm_dlci *dlci)
{
 if (!dlci->net) {
  WARN_ON(1);
  return;
 }
 dlci->adaption = dlci->prev_adaption;
 dlci->data = dlci->prev_data;
 free_netdev(dlci->net);
 dlci->net = ((void*)0);
}
