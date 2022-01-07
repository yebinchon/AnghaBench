
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCN_NUM_XP_PORTS ;

__attribute__((used)) static int arm_ccn_node_to_xp_port(int node)
{
 return node % CCN_NUM_XP_PORTS;
}
