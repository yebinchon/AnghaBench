
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct sdw_cdns_dma_data {int port; TYPE_1__* stream; } ;
struct sdw_cdns {int bus; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int dev_err (int ,char*,int ,int) ;
 int intel_port_cleanup (struct sdw_cdns_dma_data*) ;
 int kfree (int ) ;
 int sdw_stream_remove_master (int *,TYPE_1__*) ;
 struct sdw_cdns_dma_data* snd_soc_dai_get_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*) ;
 struct sdw_cdns* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int
intel_hw_free(struct snd_pcm_substream *substream, struct snd_soc_dai *dai)
{
 struct sdw_cdns *cdns = snd_soc_dai_get_drvdata(dai);
 struct sdw_cdns_dma_data *dma;
 int ret;

 dma = snd_soc_dai_get_dma_data(dai, substream);
 if (!dma)
  return -EIO;

 ret = sdw_stream_remove_master(&cdns->bus, dma->stream);
 if (ret < 0)
  dev_err(dai->dev, "remove master from stream %s failed: %d\n",
   dma->stream->name, ret);

 intel_port_cleanup(dma);
 kfree(dma->port);
 return ret;
}
