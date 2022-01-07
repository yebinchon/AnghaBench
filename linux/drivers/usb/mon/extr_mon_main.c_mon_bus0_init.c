
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_bus {int bin_inited; int text_inited; int r_list; int lock; int ref; } ;


 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;
 int mon_bin_add (struct mon_bus*,int *) ;
 struct mon_bus mon_bus0 ;
 int mon_text_add (struct mon_bus*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void mon_bus0_init(void)
{
 struct mon_bus *mbus = &mon_bus0;

 kref_init(&mbus->ref);
 spin_lock_init(&mbus->lock);
 INIT_LIST_HEAD(&mbus->r_list);

 mbus->text_inited = mon_text_add(mbus, ((void*)0));
 mbus->bin_inited = mon_bin_add(mbus, ((void*)0));
}
