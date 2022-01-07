
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_channel {int id; } ;
struct rio_ch_chan_hdr {int dst_ch; } ;


 int ENODEV ;
 int RIO_CM_DISCONNECT ;
 int RX_CMD ;
 int ch_idr ;
 struct rio_channel* idr_find (int *,int) ;
 int idr_lock ;
 int idr_remove (int *,int ) ;
 int ntohs (int ) ;
 int riocm_ch_close (struct rio_channel*) ;
 int riocm_debug (int ,char*,int) ;
 int riocm_exch (struct rio_channel*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int riocm_close_handler(void *data)
{
 struct rio_channel *ch;
 struct rio_ch_chan_hdr *hh = data;
 int ret;

 riocm_debug(RX_CMD, "for ch=%d", ntohs(hh->dst_ch));

 spin_lock_bh(&idr_lock);
 ch = idr_find(&ch_idr, ntohs(hh->dst_ch));
 if (!ch) {
  spin_unlock_bh(&idr_lock);
  return -ENODEV;
 }
 idr_remove(&ch_idr, ch->id);
 spin_unlock_bh(&idr_lock);

 riocm_exch(ch, RIO_CM_DISCONNECT);

 ret = riocm_ch_close(ch);
 if (ret)
  riocm_debug(RX_CMD, "riocm_ch_close() returned %d", ret);

 return 0;
}
