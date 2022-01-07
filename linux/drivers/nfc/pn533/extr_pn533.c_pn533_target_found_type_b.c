
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pn533_target_type_b {int dummy; } ;
struct nfc_target {int supported_protocols; } ;


 int EPROTO ;
 int NFC_PROTO_ISO14443_B_MASK ;
 int pn533_target_type_b_is_valid (struct pn533_target_type_b*,int) ;

__attribute__((used)) static int pn533_target_found_type_b(struct nfc_target *nfc_tgt, u8 *tgt_data,
       int tgt_data_len)
{
 struct pn533_target_type_b *tgt_type_b;

 tgt_type_b = (struct pn533_target_type_b *)tgt_data;

 if (!pn533_target_type_b_is_valid(tgt_type_b, tgt_data_len))
  return -EPROTO;

 nfc_tgt->supported_protocols = NFC_PROTO_ISO14443_B_MASK;

 return 0;
}
