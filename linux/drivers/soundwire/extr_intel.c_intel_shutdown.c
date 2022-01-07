
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct sdw_cdns_dma_data {int dummy; } ;


 int kfree (struct sdw_cdns_dma_data*) ;
 struct sdw_cdns_dma_data* snd_soc_dai_get_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*) ;
 int snd_soc_dai_set_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*,int *) ;

__attribute__((used)) static void intel_shutdown(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct sdw_cdns_dma_data *dma;

 dma = snd_soc_dai_get_dma_data(dai, substream);
 if (!dma)
  return;

 snd_soc_dai_set_dma_data(dai, substream, ((void*)0));
 kfree(dma);
}
