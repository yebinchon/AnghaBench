
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int cdns_set_sdw_stream (struct snd_soc_dai*,void*,int,int) ;

__attribute__((used)) static int intel_pdm_set_sdw_stream(struct snd_soc_dai *dai,
        void *stream, int direction)
{
 return cdns_set_sdw_stream(dai, stream, 0, direction);
}
