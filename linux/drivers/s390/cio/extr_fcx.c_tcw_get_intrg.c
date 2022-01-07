
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcw {scalar_t__ intrg; } ;
typedef scalar_t__ addr_t ;



struct tcw *tcw_get_intrg(struct tcw *tcw)
{
 return (struct tcw *) ((addr_t) tcw->intrg);
}
