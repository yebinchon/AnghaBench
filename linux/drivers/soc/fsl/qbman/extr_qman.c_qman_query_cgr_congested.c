
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qman_cgr {int dummy; } ;
struct TYPE_2__ {int cs; } ;
struct qm_mcr_querycgr {TYPE_1__ cgr; } ;


 int qman_query_cgr (struct qman_cgr*,struct qm_mcr_querycgr*) ;

int qman_query_cgr_congested(struct qman_cgr *cgr, bool *result)
{
 struct qm_mcr_querycgr query_cgr;
 int err;

 err = qman_query_cgr(cgr, &query_cgr);
 if (err)
  return err;

 *result = !!query_cgr.cgr.cs;
 return 0;
}
