
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int * ipv4_iface; int * ipv6_iface; } ;


 int iscsi_destroy_iface (int *) ;

void beiscsi_iface_destroy_default(struct beiscsi_hba *phba)
{
 if (phba->ipv6_iface) {
  iscsi_destroy_iface(phba->ipv6_iface);
  phba->ipv6_iface = ((void*)0);
 }
 if (phba->ipv4_iface) {
  iscsi_destroy_iface(phba->ipv4_iface);
  phba->ipv4_iface = ((void*)0);
 }
}
