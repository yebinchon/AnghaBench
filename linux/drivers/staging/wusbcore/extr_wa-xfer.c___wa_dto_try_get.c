
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int dto_in_use; } ;


 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline int __wa_dto_try_get(struct wahc *wa)
{
 return (test_and_set_bit(0, &wa->dto_in_use) == 0);
}
