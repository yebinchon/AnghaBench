
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_intel {int dummy; } ;
struct sdw_cdns_streams {int num_ch_out; int num_out; int out; int num_ch_in; int num_in; int in; int num_ch_bd; int num_bd; int bd; } ;


 int intel_pdi_get_ch_update (struct sdw_intel*,int ,int ,int *,int) ;

__attribute__((used)) static int intel_pdi_stream_ch_update(struct sdw_intel *sdw,
          struct sdw_cdns_streams *stream, bool pcm)
{
 intel_pdi_get_ch_update(sdw, stream->bd, stream->num_bd,
    &stream->num_ch_bd, pcm);

 intel_pdi_get_ch_update(sdw, stream->in, stream->num_in,
    &stream->num_ch_in, pcm);

 intel_pdi_get_ch_update(sdw, stream->out, stream->num_out,
    &stream->num_ch_out, pcm);

 return 0;
}
