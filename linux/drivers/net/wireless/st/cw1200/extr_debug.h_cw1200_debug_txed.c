
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_common {TYPE_1__* debug; } ;
struct TYPE_2__ {int tx; } ;



__attribute__((used)) static inline void cw1200_debug_txed(struct cw1200_common *priv)
{
 ++priv->debug->tx;
}
