
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int dummy; } ;


 int x86_apple_machine ;

__attribute__((used)) static bool icm_fr_is_supported(struct tb *tb)
{
 return !x86_apple_machine;
}
