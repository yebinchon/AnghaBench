
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbo {int context; } ;


 scalar_t__ WARN_ONCE (int,char*) ;
 int nq_hdm_mbo (struct mbo*) ;

void most_submit_mbo(struct mbo *mbo)
{
 if (WARN_ONCE(!mbo || !mbo->context,
        "bad mbo or missing channel reference\n"))
  return;

 nq_hdm_mbo(mbo);
}
