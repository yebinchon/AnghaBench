
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdw_cdns_streams {int bd; int num_bd; int out; int num_out; int in; int num_in; } ;
struct sdw_cdns_port {struct sdw_cdns_pdi* pdi; } ;
struct sdw_cdns_pdi {scalar_t__ ch_count; scalar_t__ dir; scalar_t__ h_ch_num; scalar_t__ l_ch_num; } ;
struct sdw_cdns {int dummy; } ;


 int EIO ;
 scalar_t__ SDW_DATA_DIR_RX ;
 struct sdw_cdns_pdi* cdns_find_pdi (struct sdw_cdns*,int ,int ) ;

int sdw_cdns_alloc_stream(struct sdw_cdns *cdns,
     struct sdw_cdns_streams *stream,
     struct sdw_cdns_port *port, u32 ch, u32 dir)
{
 struct sdw_cdns_pdi *pdi = ((void*)0);

 if (dir == SDW_DATA_DIR_RX)
  pdi = cdns_find_pdi(cdns, stream->num_in, stream->in);
 else
  pdi = cdns_find_pdi(cdns, stream->num_out, stream->out);


 if (!pdi)
  pdi = cdns_find_pdi(cdns, stream->num_bd, stream->bd);

 if (!pdi)
  return -EIO;

 port->pdi = pdi;
 pdi->l_ch_num = 0;
 pdi->h_ch_num = ch - 1;
 pdi->dir = dir;
 pdi->ch_count = ch;

 return 0;
}
