
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int clear_bit (int ,int ) ;
 int hvpci_dom_map ;

__attribute__((used)) static void hv_put_dom_num(u16 dom)
{
 clear_bit(dom, hvpci_dom_map);
}
