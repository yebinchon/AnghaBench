
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_card {int refcount; } ;


 int kref_put (int *,int ) ;
 int zcrypt_card_release ;

int zcrypt_card_put(struct zcrypt_card *zc)
{
 return kref_put(&zc->refcount, zcrypt_card_release);
}
