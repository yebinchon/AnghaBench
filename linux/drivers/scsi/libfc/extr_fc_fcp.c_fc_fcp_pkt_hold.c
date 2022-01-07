
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_fcp_pkt {int ref_cnt; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void fc_fcp_pkt_hold(struct fc_fcp_pkt *fsp)
{
 refcount_inc(&fsp->ref_cnt);
}
