
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {int adaption; int encoding; int mru; int mtu; int dead; int ftype; int n2; int t2; int t1; int tx_list; int ref; int mutex; int lock; struct gsm_mux* buf; int * txframe; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_MRU ;
 int N2 ;
 int T1 ;
 int T2 ;
 int UIH ;
 int kfree (struct gsm_mux*) ;
 void* kmalloc (int,int ) ;
 int kref_init (int *) ;
 struct gsm_mux* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct gsm_mux *gsm_alloc_mux(void)
{
 struct gsm_mux *gsm = kzalloc(sizeof(struct gsm_mux), GFP_KERNEL);
 if (gsm == ((void*)0))
  return ((void*)0);
 gsm->buf = kmalloc(MAX_MRU + 1, GFP_KERNEL);
 if (gsm->buf == ((void*)0)) {
  kfree(gsm);
  return ((void*)0);
 }
 gsm->txframe = kmalloc(2 * MAX_MRU + 2, GFP_KERNEL);
 if (gsm->txframe == ((void*)0)) {
  kfree(gsm->buf);
  kfree(gsm);
  return ((void*)0);
 }
 spin_lock_init(&gsm->lock);
 mutex_init(&gsm->mutex);
 kref_init(&gsm->ref);
 INIT_LIST_HEAD(&gsm->tx_list);

 gsm->t1 = T1;
 gsm->t2 = T2;
 gsm->n2 = N2;
 gsm->ftype = UIH;
 gsm->adaption = 1;
 gsm->encoding = 1;
 gsm->mru = 64;
 gsm->mtu = 64;
 gsm->dead = 1;

 return gsm;
}
