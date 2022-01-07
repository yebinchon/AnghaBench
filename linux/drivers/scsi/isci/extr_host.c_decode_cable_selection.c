
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_host {int dummy; } ;
typedef enum cable_selections { ____Placeholder_cable_selections } cable_selections ;


 int decode_selection_byte (int,int ) ;
 int * to_cable_select (struct isci_host*) ;

enum cable_selections decode_cable_selection(struct isci_host *ihost, int phy)
{
 return decode_selection_byte(phy, *to_cable_select(ihost));
}
