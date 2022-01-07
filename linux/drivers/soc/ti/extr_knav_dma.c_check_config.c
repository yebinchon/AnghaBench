
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_dma_chan {int cfg; } ;
struct knav_dma_cfg {int dummy; } ;


 int memcmp (int *,struct knav_dma_cfg*,int) ;

__attribute__((used)) static bool check_config(struct knav_dma_chan *chan, struct knav_dma_cfg *cfg)
{
 if (!memcmp(&chan->cfg, cfg, sizeof(*cfg)))
  return 1;
 else
  return 0;
}
