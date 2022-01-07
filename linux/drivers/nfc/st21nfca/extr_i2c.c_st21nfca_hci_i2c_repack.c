
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; int* data; } ;


 int EBADMSG ;
 int ST21NFCA_BYTE_STUFFING_MASK ;
 scalar_t__ ST21NFCA_ESCAPE_BYTE_STUFFING ;
 int check_crc (int*,int) ;
 int get_frame_size (int*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static int st21nfca_hci_i2c_repack(struct sk_buff *skb)
{
 int i, j, r, size;

 if (skb->len < 1 || (skb->len > 1 && skb->data[1] != 0))
  return -EBADMSG;

 size = get_frame_size(skb->data, skb->len);
 if (size > 0) {
  skb_trim(skb, size);

  for (i = 1, j = 0; i < skb->len; i++) {
   if (skb->data[i + j] ==
     (u8) ST21NFCA_ESCAPE_BYTE_STUFFING) {
    skb->data[i] = skb->data[i + j + 1]
      | ST21NFCA_BYTE_STUFFING_MASK;
    i++;
    j++;
   }
   skb->data[i] = skb->data[i + j];
  }

  skb_trim(skb, i - j);

  skb_pull(skb, 1);

  r = check_crc(skb->data, skb->len);
  if (r != 0) {
   i = 0;
   return -EBADMSG;
  }


  skb_pull(skb, 1);

  skb_trim(skb, skb->len - 2);
  return skb->len;
 }
 return 0;
}
