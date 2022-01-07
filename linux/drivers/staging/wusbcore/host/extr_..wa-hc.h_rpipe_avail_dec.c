
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_rpipe {int segs_available; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static inline void rpipe_avail_dec(struct wa_rpipe *rpipe)
{
 atomic_dec(&rpipe->segs_available);
}
