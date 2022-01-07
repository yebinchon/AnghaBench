
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_card {int refcount; int zqueues; int list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;
 struct zcrypt_card* kzalloc (int,int ) ;

struct zcrypt_card *zcrypt_card_alloc(void)
{
 struct zcrypt_card *zc;

 zc = kzalloc(sizeof(struct zcrypt_card), GFP_KERNEL);
 if (!zc)
  return ((void*)0);
 INIT_LIST_HEAD(&zc->list);
 INIT_LIST_HEAD(&zc->zqueues);
 kref_init(&zc->refcount);
 return zc;
}
