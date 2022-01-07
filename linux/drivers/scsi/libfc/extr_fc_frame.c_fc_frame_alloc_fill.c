
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int dummy; } ;
struct fc_frame_header {int dummy; } ;
struct fc_frame {int dummy; } ;


 struct fc_frame* _fc_frame_alloc (size_t) ;
 int fp_skb (struct fc_frame*) ;
 scalar_t__ fr_hdr (struct fc_frame*) ;
 int memset (char*,int ,size_t) ;
 int skb_trim (int ,size_t) ;

struct fc_frame *fc_frame_alloc_fill(struct fc_lport *lp, size_t payload_len)
{
 struct fc_frame *fp;
 size_t fill;

 fill = payload_len % 4;
 if (fill != 0)
  fill = 4 - fill;
 fp = _fc_frame_alloc(payload_len + fill);
 if (fp) {
  memset((char *) fr_hdr(fp) + payload_len, 0, fill);

  skb_trim(fp_skb(fp),
    payload_len + sizeof(struct fc_frame_header));
 }
 return fp;
}
