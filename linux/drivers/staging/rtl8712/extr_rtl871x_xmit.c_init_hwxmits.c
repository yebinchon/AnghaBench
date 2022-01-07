
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_xmit {scalar_t__ accnt; scalar_t__ txcmdcnt; int pending; int xmit_lock; } ;
typedef scalar_t__ sint ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_hwxmits(struct hw_xmit *phwxmit, sint entry)
{
 sint i;

 for (i = 0; i < entry; i++, phwxmit++) {
  spin_lock_init(&phwxmit->xmit_lock);
  INIT_LIST_HEAD(&phwxmit->pending);
  phwxmit->txcmdcnt = 0;
  phwxmit->accnt = 0;
 }
}
