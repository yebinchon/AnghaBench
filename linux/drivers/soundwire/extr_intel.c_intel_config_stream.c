
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct sdw_intel_link_res {scalar_t__ arg; TYPE_1__* ops; } ;
struct sdw_intel {struct sdw_intel_link_res* res; } ;
struct TYPE_2__ {int (* config_stream ) (scalar_t__,struct snd_pcm_substream*,struct snd_soc_dai*,struct snd_pcm_hw_params*,int) ;} ;


 int EIO ;
 int stub1 (scalar_t__,struct snd_pcm_substream*,struct snd_soc_dai*,struct snd_pcm_hw_params*,int) ;

__attribute__((used)) static int intel_config_stream(struct sdw_intel *sdw,
          struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai,
          struct snd_pcm_hw_params *hw_params, int link_id)
{
 struct sdw_intel_link_res *res = sdw->res;

 if (res->ops && res->ops->config_stream && res->arg)
  return res->ops->config_stream(res->arg,
    substream, dai, hw_params, link_id);

 return -EIO;
}
