
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct n_hdlc_buf {int dummy; } ;
struct n_hdlc {int rx_free_buf_list; int rx_buf_list; } ;


 struct n_hdlc_buf* n_hdlc_buf_get (int *) ;
 int n_hdlc_buf_put (int *,struct n_hdlc_buf*) ;
 struct n_hdlc* tty2n_hdlc (struct tty_struct*) ;

__attribute__((used)) static void flush_rx_queue(struct tty_struct *tty)
{
 struct n_hdlc *n_hdlc = tty2n_hdlc(tty);
 struct n_hdlc_buf *buf;

 while ((buf = n_hdlc_buf_get(&n_hdlc->rx_buf_list)))
  n_hdlc_buf_put(&n_hdlc->rx_free_buf_list, buf);
}
