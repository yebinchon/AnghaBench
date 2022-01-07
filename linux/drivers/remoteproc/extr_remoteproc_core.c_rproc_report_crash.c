
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int crash_handler; int name; int dev; } ;
typedef enum rproc_crash_type { ____Placeholder_rproc_crash_type } rproc_crash_type ;


 int dev_err (int *,char*,int ,int ) ;
 int pr_err (char*) ;
 int rproc_crash_to_string (int) ;
 int schedule_work (int *) ;

void rproc_report_crash(struct rproc *rproc, enum rproc_crash_type type)
{
 if (!rproc) {
  pr_err("NULL rproc pointer\n");
  return;
 }

 dev_err(&rproc->dev, "crash detected in %s: type %s\n",
  rproc->name, rproc_crash_to_string(type));


 schedule_work(&rproc->crash_handler);
}
