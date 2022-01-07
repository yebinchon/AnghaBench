
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* Busy ) (TYPE_1__*) ;} ;
struct riva_par {TYPE_1__ riva; } ;


 scalar_t__ stub1 (TYPE_1__*) ;

__attribute__((used)) static inline void wait_for_idle(struct riva_par *par)
{
 while (par->riva.Busy(&par->riva));
}
