
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgid {int dummy; } ;


 int memcmp (char*,char*,int) ;

__attribute__((used)) static int pgid_cmp(struct pgid *p1, struct pgid *p2)
{
 return memcmp((char *) p1 + 1, (char *) p2 + 1,
        sizeof(struct pgid) - 1);
}
