
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcw {int dummy; } ;
struct itcw {struct tcw* tcw; } ;



struct tcw *itcw_get_tcw(struct itcw *itcw)
{
 return itcw->tcw;
}
