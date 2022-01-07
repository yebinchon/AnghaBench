
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct qeth_qdio_out_q {unsigned int max_elements; } ;
struct qeth_hdr {int dummy; } ;
typedef scalar_t__ addr_t ;


 int E2BIG ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ PAGE_ALIGNED (scalar_t__) ;
 int QETH_DBF_MESSAGE (int,char*,unsigned int const,unsigned int,int ) ;
 unsigned int QETH_HDR_CACHE_OBJ_SIZE ;
 int QETH_TXQ_STAT_INC (struct qeth_qdio_out_q*,int ) ;
 struct qeth_hdr* kmem_cache_alloc (int ,int ) ;
 int qeth_core_header_cache ;
 int qeth_count_elements (struct sk_buff*,unsigned int) ;
 int qeth_get_elements_for_range (scalar_t__,scalar_t__) ;
 int skb_copy_from_linear_data (struct sk_buff*,char*,unsigned int) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int skb_is_nonlinear (struct sk_buff*) ;
 int skb_linearize (struct sk_buff*) ;
 struct qeth_hdr* skb_push (struct sk_buff*,unsigned int) ;
 int skbs_linearized ;
 int skbs_linearized_fail ;

__attribute__((used)) static int qeth_add_hw_header(struct qeth_qdio_out_q *queue,
         struct sk_buff *skb, struct qeth_hdr **hdr,
         unsigned int hdr_len, unsigned int proto_len,
         unsigned int *elements)
{
 const unsigned int contiguous = proto_len ? proto_len : 1;
 const unsigned int max_elements = queue->max_elements;
 unsigned int __elements;
 addr_t start, end;
 bool push_ok;
 int rc;

check_layout:
 start = (addr_t)skb->data - hdr_len;
 end = (addr_t)skb->data;

 if (qeth_get_elements_for_range(start, end + contiguous) == 1) {

  push_ok = 1;

  if (skb_is_gso(skb))
   __elements = 1 + qeth_count_elements(skb, proto_len);
  else
   __elements = qeth_count_elements(skb, 0);
 } else if (!proto_len && PAGE_ALIGNED(skb->data)) {

  push_ok = 1;
  __elements = 1 + qeth_count_elements(skb, 0);
 } else {

  push_ok = 0;
  __elements = 1 + qeth_count_elements(skb, proto_len);
 }


 if (__elements > max_elements) {
  if (!skb_is_nonlinear(skb)) {

   QETH_DBF_MESSAGE(2, "Dropped an oversized skb (Max Elements=%u / Actual=%u / Length=%u).\n",
      max_elements, __elements, skb->len);
   return -E2BIG;
  }

  rc = skb_linearize(skb);
  if (rc) {
   QETH_TXQ_STAT_INC(queue, skbs_linearized_fail);
   return rc;
  }

  QETH_TXQ_STAT_INC(queue, skbs_linearized);

  goto check_layout;
 }

 *elements = __elements;

 if (push_ok) {
  *hdr = skb_push(skb, hdr_len);
  return hdr_len;
 }

 if (hdr_len + proto_len > QETH_HDR_CACHE_OBJ_SIZE)
  return -E2BIG;
 *hdr = kmem_cache_alloc(qeth_core_header_cache, GFP_ATOMIC);
 if (!*hdr)
  return -ENOMEM;

 skb_copy_from_linear_data(skb, ((char *)*hdr) + hdr_len, proto_len);
 return 0;
}
