
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arena_info {int * rtt; int nfree; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (int ,int,int ) ;

__attribute__((used)) static int btt_rtt_init(struct arena_info *arena)
{
 arena->rtt = kcalloc(arena->nfree, sizeof(u32), GFP_KERNEL);
 if (arena->rtt == ((void*)0))
  return -ENOMEM;

 return 0;
}
