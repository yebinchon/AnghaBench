
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bman_pool {int bpid; } ;



int bman_get_bpid(const struct bman_pool *pool)
{
 return pool->bpid;
}
