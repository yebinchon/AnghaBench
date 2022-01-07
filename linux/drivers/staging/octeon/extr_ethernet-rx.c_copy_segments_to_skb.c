
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int addr; int back; } ;
union cvmx_buf_ptr {TYPE_2__ s; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int len; } ;
struct TYPE_10__ {int bufs; } ;
struct TYPE_9__ {TYPE_4__ s; } ;
struct TYPE_11__ {TYPE_1__ word1; union cvmx_buf_ptr packet_ptr; TYPE_3__ word2; } ;
typedef TYPE_5__ cvmx_wqe_t ;


 int CVMX_FPA_PACKET_POOL_SIZE ;
 scalar_t__ cvmx_phys_to_ptr (int) ;
 int skb_put_data (struct sk_buff*,scalar_t__,int) ;

__attribute__((used)) static void copy_segments_to_skb(cvmx_wqe_t *work, struct sk_buff *skb)
{
 int segments = work->word2.s.bufs;
 union cvmx_buf_ptr segment_ptr = work->packet_ptr;
 int len = work->word1.len;
 int segment_size;

 while (segments--) {
  union cvmx_buf_ptr next_ptr;

  next_ptr = *(union cvmx_buf_ptr *)
   cvmx_phys_to_ptr(segment_ptr.s.addr - 8);
  segment_size =
   CVMX_FPA_PACKET_POOL_SIZE -
   (segment_ptr.s.addr -
    (((segment_ptr.s.addr >> 7) -
      segment_ptr.s.back) << 7));


  if (segment_size > len)
   segment_size = len;


  skb_put_data(skb, cvmx_phys_to_ptr(segment_ptr.s.addr),
        segment_size);
  len -= segment_size;
  segment_ptr = next_ptr;
 }
}
