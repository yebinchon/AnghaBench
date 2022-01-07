
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_cgr {int dummy; } ;


 int qman_delete_cgr (struct qman_cgr*) ;

__attribute__((used)) static void qman_delete_cgr_smp_call(void *p)
{
 qman_delete_cgr((struct qman_cgr *)p);
}
