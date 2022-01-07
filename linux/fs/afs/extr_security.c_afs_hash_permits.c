
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_permits {unsigned long nr_permits; unsigned long h; TYPE_1__* permits; } ;
struct TYPE_2__ {scalar_t__ access; scalar_t__ key; } ;



__attribute__((used)) static void afs_hash_permits(struct afs_permits *permits)
{
 unsigned long h = permits->nr_permits;
 int i;

 for (i = 0; i < permits->nr_permits; i++) {
  h += (unsigned long)permits->permits[i].key / sizeof(void *);
  h += permits->permits[i].access;
 }

 permits->h = h;
}
