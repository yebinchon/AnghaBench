
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_common {TYPE_1__* debug; } ;
struct TYPE_2__ {int tx_multi_frames; int tx_multi; } ;



__attribute__((used)) static inline void cw1200_debug_txed_multi(struct cw1200_common *priv,
        int count)
{
 ++priv->debug->tx_multi;
 priv->debug->tx_multi_frames += count;
}
