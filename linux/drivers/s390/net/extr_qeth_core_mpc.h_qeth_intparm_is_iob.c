
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool qeth_intparm_is_iob(unsigned long intparm)
{
 switch (intparm) {
 case 129:
 case 128:
 case 0:
  return 0;
 }
 return 1;
}
