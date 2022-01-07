
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int HASH_ORDER ;

__attribute__((used)) static bool is_hash_order(loff_t p)
{
 return (p & HASH_ORDER) == HASH_ORDER;
}
