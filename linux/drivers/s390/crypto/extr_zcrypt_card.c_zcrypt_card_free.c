
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_card {int dummy; } ;


 int kfree (struct zcrypt_card*) ;

void zcrypt_card_free(struct zcrypt_card *zc)
{
 kfree(zc);
}
