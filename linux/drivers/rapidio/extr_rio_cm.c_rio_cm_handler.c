
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_ch_chan_hdr {int ch_op; int src_ch; int dst_ch; } ;
struct cm_dev {int mport; } ;





 int RX_CMD ;
 int kfree (void*) ;
 int ntohs (int ) ;
 int rio_mport_is_running (int ) ;
 int riocm_close_handler (void*) ;
 int riocm_debug (int ,char*,int,int ,int ) ;
 int riocm_error (char*) ;
 int riocm_req_handler (struct cm_dev*,void*) ;
 int riocm_resp_handler (void*) ;

__attribute__((used)) static void rio_cm_handler(struct cm_dev *cm, void *data)
{
 struct rio_ch_chan_hdr *hdr;

 if (!rio_mport_is_running(cm->mport))
  goto out;

 hdr = data;

 riocm_debug(RX_CMD, "OP=%x for ch=%d from %d",
      hdr->ch_op, ntohs(hdr->dst_ch), ntohs(hdr->src_ch));

 switch (hdr->ch_op) {
 case 128:
  riocm_req_handler(cm, data);
  break;
 case 130:
  riocm_resp_handler(data);
  break;
 case 129:
  riocm_close_handler(data);
  break;
 default:
  riocm_error("Invalid packet header");
  break;
 }
out:
 kfree(data);
}
