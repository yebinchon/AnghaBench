
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_perms {int apm; } ;


 scalar_t__ test_bit_inv (int,int ) ;

__attribute__((used)) static inline bool zcrypt_check_card(struct ap_perms *perms, int card)
{
 return test_bit_inv(card, perms->apm) ? 1 : 0;
}
