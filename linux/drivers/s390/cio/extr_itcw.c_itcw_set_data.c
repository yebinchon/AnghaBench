
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itcw {int tcw; } ;


 int tcw_set_data (int ,void*,int) ;

void itcw_set_data(struct itcw *itcw, void *addr, int use_tidal)
{
 tcw_set_data(itcw->tcw, addr, use_tidal);
}
