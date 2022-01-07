
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct tcw {scalar_t__ tccb; } ;
struct tccb {int dummy; } ;
typedef scalar_t__ addr_t ;



void tcw_set_tccb(struct tcw *tcw, struct tccb *tccb)
{
 tcw->tccb = (u64) ((addr_t) tccb);
}
