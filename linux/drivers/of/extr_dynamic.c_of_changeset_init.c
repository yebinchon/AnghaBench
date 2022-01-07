
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_changeset {int entries; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct of_changeset*,int ,int) ;

void of_changeset_init(struct of_changeset *ocs)
{
 memset(ocs, 0, sizeof(*ocs));
 INIT_LIST_HEAD(&ocs->entries);
}
