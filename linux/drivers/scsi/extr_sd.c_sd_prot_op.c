
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int sd_prot_op(bool write, bool dix, bool dif)
{

 static const unsigned int ops[] = {
  134,
  131,
  133,
  132,
  134,
  130,
  128,
  129,
 };

 return ops[write << 2 | dix << 1 | dif];
}
