
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct slgt_info {unsigned int tbuf_start; unsigned int tbuf_current; unsigned int tbuf_count; int tx_active; struct slgt_desc* tbufs; TYPE_1__ params; } ;
struct slgt_desc {unsigned short buf_count; int buf; } ;


 int DBGDATA (struct slgt_info*,char const*,unsigned int,char*) ;
 scalar_t__ DIV_ROUND_UP (unsigned int,unsigned int) ;
 unsigned int DMABUFSIZE ;
 scalar_t__ MGSL_MODE_HDLC ;
 scalar_t__ MGSL_MODE_RAW ;
 scalar_t__ free_tbuf_count (struct slgt_info*) ;
 int memcpy (int ,char const*,unsigned short) ;
 int set_desc_count (struct slgt_desc,unsigned short) ;
 int set_desc_eof (struct slgt_desc,int) ;
 int tx_start (struct slgt_info*) ;
 int update_tx_timer (struct slgt_info*) ;

__attribute__((used)) static bool tx_load(struct slgt_info *info, const char *buf, unsigned int size)
{
 unsigned short count;
 unsigned int i;
 struct slgt_desc *d;


 if (DIV_ROUND_UP(size, DMABUFSIZE) > free_tbuf_count(info))
  return 0;

 DBGDATA(info, buf, size, "tx");
 info->tbuf_start = i = info->tbuf_current;

 while (size) {
  d = &info->tbufs[i];

  count = (unsigned short)((size > DMABUFSIZE) ? DMABUFSIZE : size);
  memcpy(d->buf, buf, count);

  size -= count;
  buf += count;





  if ((!size && info->params.mode == MGSL_MODE_HDLC) ||
      info->params.mode == MGSL_MODE_RAW)
   set_desc_eof(*d, 1);
  else
   set_desc_eof(*d, 0);


  if (i != info->tbuf_start)
   set_desc_count(*d, count);
  d->buf_count = count;

  if (++i == info->tbuf_count)
   i = 0;
 }

 info->tbuf_current = i;


 d = &info->tbufs[info->tbuf_start];
 set_desc_count(*d, d->buf_count);


 if (!info->tx_active)
  tx_start(info);
 update_tx_timer(info);

 return 1;
}
