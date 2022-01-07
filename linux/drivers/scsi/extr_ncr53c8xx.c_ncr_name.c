
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncb {char* inst_name; } ;



__attribute__((used)) static inline char *ncr_name (struct ncb *np)
{
 return np->inst_name;
}
