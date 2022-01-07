
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_common {TYPE_1__* debug; } ;
struct TYPE_2__ {int ba_cnt; int ba_acc; int ba_cnt_rx; int ba_acc_rx; } ;



__attribute__((used)) static inline void cw1200_debug_ba(struct cw1200_common *priv,
       int ba_cnt, int ba_acc,
       int ba_cnt_rx, int ba_acc_rx)
{
 priv->debug->ba_cnt = ba_cnt;
 priv->debug->ba_acc = ba_acc;
 priv->debug->ba_cnt_rx = ba_cnt_rx;
 priv->debug->ba_acc_rx = ba_acc_rx;
}
