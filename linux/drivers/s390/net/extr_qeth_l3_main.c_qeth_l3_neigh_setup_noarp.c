
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {TYPE_1__* ops; int output; int ha; int nud_state; } ;
struct TYPE_2__ {int connected_output; } ;


 int NUD_NOARP ;
 int memcpy (int ,char*,int) ;

__attribute__((used)) static int qeth_l3_neigh_setup_noarp(struct neighbour *n)
{
 n->nud_state = NUD_NOARP;
 memcpy(n->ha, "FAKELL", 6);
 n->output = n->ops->connected_output;
 return 0;
}
