
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __bman_requires_cleanup ;

void bman_done_cleanup(void)
{
 __bman_requires_cleanup = 0;
}
