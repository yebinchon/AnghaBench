
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcw {scalar_t__ intrg; } ;
typedef scalar_t__ addr_t ;



void tcw_set_intrg(struct tcw *tcw, struct tcw *intrg_tcw)
{
 tcw->intrg = (u32) ((addr_t) intrg_tcw);
}
