
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct pn533 {int* gb; size_t gb_len; } ;


 size_t PN533_INIT_TARGET_DEP ;
 int get_random_bytes (int*,int) ;
 int memcpy (int*,int*,int) ;
 struct sk_buff* pn533_alloc_skb (struct pn533*,unsigned int) ;
 int* skb_put_data (struct sk_buff*,int*,size_t) ;
 int skb_put_u8 (struct sk_buff*,size_t) ;
 int* skb_put_zero (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *pn533_alloc_poll_tg_frame(struct pn533 *dev)
{
 struct sk_buff *skb;
 u8 *felica, *nfcid3;

 u8 *gbytes = dev->gb;
 size_t gbytes_len = dev->gb_len;

 u8 felica_params[18] = {0x1, 0xfe,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0xff, 0xff};

 u8 mifare_params[6] = {0x1, 0x1,
          0x0, 0x0, 0x0,
          0x40};

 unsigned int skb_len = 36 +



          gbytes_len +
          1;

 skb = pn533_alloc_skb(dev, skb_len);
 if (!skb)
  return ((void*)0);


 skb_put_u8(skb, PN533_INIT_TARGET_DEP);


 skb_put_data(skb, mifare_params, 6);


 felica = skb_put_data(skb, felica_params, 18);
 get_random_bytes(felica + 2, 6);


 nfcid3 = skb_put_zero(skb, 10);
 memcpy(nfcid3, felica, 8);


 skb_put_u8(skb, gbytes_len);

 skb_put_data(skb, gbytes, gbytes_len);


 skb_put_u8(skb, 0);

 return skb;
}
