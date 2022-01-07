
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdw_cdns_streams {int num_bd; int bd; int num_out; int out; int num_in; int in; } ;
struct sdw_cdns {int dummy; } ;


 scalar_t__ SDW_DATA_DIR_RX ;
 int cdns_get_num_pdi (struct sdw_cdns*,int ,int ,scalar_t__) ;

int sdw_cdns_get_stream(struct sdw_cdns *cdns,
   struct sdw_cdns_streams *stream,
   u32 ch, u32 dir)
{
 int pdis = 0;

 if (dir == SDW_DATA_DIR_RX)
  pdis = cdns_get_num_pdi(cdns, stream->in, stream->num_in, ch);
 else
  pdis = cdns_get_num_pdi(cdns, stream->out, stream->num_out, ch);


 if (!pdis)
  pdis = cdns_get_num_pdi(cdns, stream->bd, stream->num_bd, ch);

 return pdis;
}
