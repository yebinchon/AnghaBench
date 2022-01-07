
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_driver {int dummy; } ;
struct sdw_cdns_streams {int num_pdi; int num_ch_bd; scalar_t__ num_bd; scalar_t__ num_out; int num_ch_out; scalar_t__ num_in; int num_ch_in; } ;
struct sdw_cdns {int dev; struct sdw_cdns_streams pdm; struct sdw_cdns_streams pcm; } ;
struct sdw_intel {struct sdw_cdns cdns; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INTEL_PDI_BD ;
 int INTEL_PDI_IN ;
 int INTEL_PDI_OUT ;
 int dai_component ;
 struct snd_soc_dai_driver* devm_kcalloc (int ,int,int,int ) ;
 int intel_create_dai (struct sdw_cdns*,struct snd_soc_dai_driver*,int ,scalar_t__,int,int ,int) ;
 int snd_soc_register_component (int ,int *,struct snd_soc_dai_driver*,int) ;

__attribute__((used)) static int intel_register_dai(struct sdw_intel *sdw)
{
 struct sdw_cdns *cdns = &sdw->cdns;
 struct sdw_cdns_streams *stream;
 struct snd_soc_dai_driver *dais;
 int num_dai, ret, off = 0;


 num_dai = cdns->pcm.num_pdi + cdns->pdm.num_pdi;

 dais = devm_kcalloc(cdns->dev, num_dai, sizeof(*dais), GFP_KERNEL);
 if (!dais)
  return -ENOMEM;


 stream = &cdns->pcm;

 ret = intel_create_dai(cdns, dais, INTEL_PDI_IN, cdns->pcm.num_in,
          off, stream->num_ch_in, 1);
 if (ret)
  return ret;

 off += cdns->pcm.num_in;
 ret = intel_create_dai(cdns, dais, INTEL_PDI_OUT, cdns->pcm.num_out,
          off, stream->num_ch_out, 1);
 if (ret)
  return ret;

 off += cdns->pcm.num_out;
 ret = intel_create_dai(cdns, dais, INTEL_PDI_BD, cdns->pcm.num_bd,
          off, stream->num_ch_bd, 1);
 if (ret)
  return ret;


 stream = &cdns->pdm;
 off += cdns->pcm.num_bd;
 ret = intel_create_dai(cdns, dais, INTEL_PDI_IN, cdns->pdm.num_in,
          off, stream->num_ch_in, 0);
 if (ret)
  return ret;

 off += cdns->pdm.num_in;
 ret = intel_create_dai(cdns, dais, INTEL_PDI_OUT, cdns->pdm.num_out,
          off, stream->num_ch_out, 0);
 if (ret)
  return ret;

 off += cdns->pdm.num_out;
 ret = intel_create_dai(cdns, dais, INTEL_PDI_BD, cdns->pdm.num_bd,
          off, stream->num_ch_bd, 0);
 if (ret)
  return ret;

 return snd_soc_register_component(cdns->dev, &dai_component,
       dais, num_dai);
}
