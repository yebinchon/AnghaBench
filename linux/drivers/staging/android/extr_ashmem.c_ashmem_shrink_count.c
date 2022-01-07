
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;


 unsigned long lru_count ;

__attribute__((used)) static unsigned long
ashmem_shrink_count(struct shrinker *shrink, struct shrink_control *sc)
{





 return lru_count;
}
