
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int hw_bufs_used; } ;



__attribute__((used)) static inline void wsm_alloc_tx_buffer(struct cw1200_common *priv)
{
 ++priv->hw_bufs_used;
}
