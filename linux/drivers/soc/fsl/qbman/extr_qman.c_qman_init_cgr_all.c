
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_cgr {scalar_t__ cgrid; } ;


 scalar_t__ CGR_NUM ;
 int QMAN_CGR_FLAG_USE_INIT ;
 int pr_err (char*,int,char*) ;
 scalar_t__ qm_modify_cgr (struct qman_cgr*,int ,int *) ;

void qman_init_cgr_all(void)
{
 struct qman_cgr cgr;
 int err_cnt = 0;

 for (cgr.cgrid = 0; cgr.cgrid < CGR_NUM; cgr.cgrid++) {
  if (qm_modify_cgr(&cgr, QMAN_CGR_FLAG_USE_INIT, ((void*)0)))
   err_cnt++;
 }

 if (err_cnt)
  pr_err("Warning: %d error%s while initialising CGR h/w\n",
         err_cnt, (err_cnt > 1) ? "s" : "");
}
