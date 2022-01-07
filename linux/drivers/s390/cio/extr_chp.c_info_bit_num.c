
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int id; int cssid; } ;


 int __MAX_CHPID ;

__attribute__((used)) static inline int info_bit_num(struct chp_id id)
{
 return id.id + id.cssid * (__MAX_CHPID + 1);
}
