
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;


 int fc_fcp_pkt_release (void*) ;

__attribute__((used)) static void fc_fcp_pkt_destroy(struct fc_seq *seq, void *fsp)
{
 fc_fcp_pkt_release(fsp);
}
