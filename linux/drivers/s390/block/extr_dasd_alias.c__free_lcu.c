
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias_lcu {struct alias_lcu* uac; struct alias_lcu* rsu_cqr; struct alias_lcu* cpaddr; struct alias_lcu* data; } ;


 int kfree (struct alias_lcu*) ;

__attribute__((used)) static void _free_lcu(struct alias_lcu *lcu)
{
 kfree(lcu->rsu_cqr->data);
 kfree(lcu->rsu_cqr->cpaddr);
 kfree(lcu->rsu_cqr);
 kfree(lcu->uac);
 kfree(lcu);
}
