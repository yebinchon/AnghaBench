
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int dto_in_use; } ;


 int clear_bit_unlock (int ,int *) ;

__attribute__((used)) static inline void __wa_dto_put(struct wahc *wa)
{
 clear_bit_unlock(0, &wa->dto_in_use);
}
