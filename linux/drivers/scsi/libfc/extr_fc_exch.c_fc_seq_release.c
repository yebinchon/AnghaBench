
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;


 int fc_exch_release (int ) ;
 int fc_seq_exch (struct fc_seq*) ;

void fc_seq_release(struct fc_seq *sp)
{
 fc_exch_release(fc_seq_exch(sp));
}
