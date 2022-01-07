
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_policy {int defined; int* raw; } ;


 scalar_t__ memcmp (int*,int*,size_t) ;

__attribute__((used)) static inline bool tx_policy_is_equal(const struct tx_policy *wanted,
     const struct tx_policy *cached)
{
 size_t count = wanted->defined >> 1;
 if (wanted->defined > cached->defined)
  return 0;
 if (count) {
  if (memcmp(wanted->raw, cached->raw, count))
   return 0;
 }
 if (wanted->defined & 1) {
  if ((wanted->raw[count] & 0x0F) != (cached->raw[count] & 0x0F))
   return 0;
 }
 return 1;
}
