
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucsi {TYPE_1__* ppm; } ;
struct TYPE_2__ {int (* sync ) (TYPE_1__*) ;} ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static inline int ucsi_sync(struct ucsi *ucsi)
{
 if (ucsi->ppm && ucsi->ppm->sync)
  return ucsi->ppm->sync(ucsi->ppm);
 return 0;
}
