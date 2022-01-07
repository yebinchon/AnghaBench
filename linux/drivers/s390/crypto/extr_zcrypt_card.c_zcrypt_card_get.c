
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_card {int refcount; } ;


 int kref_get (int *) ;

void zcrypt_card_get(struct zcrypt_card *zc)
{
 kref_get(&zc->refcount);
}
