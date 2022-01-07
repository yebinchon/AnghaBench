
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_bus {int dummy; } ;


 int pr_err (char*) ;
 int qtnf_trans_free_events (struct qtnf_bus*) ;

void qtnf_trans_free(struct qtnf_bus *bus)
{
 if (!bus) {
  pr_err("invalid bus pointer\n");
  return;
 }

 qtnf_trans_free_events(bus);
}
