
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_perms {int aqm; } ;


 scalar_t__ test_bit_inv (int,int ) ;

__attribute__((used)) static inline bool zcrypt_check_queue(struct ap_perms *perms, int queue)
{
 return test_bit_inv(queue, perms->aqm) ? 1 : 0;
}
