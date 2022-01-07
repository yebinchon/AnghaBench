
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pn533_target_jewel {int jewelid; int sens_res; } ;
struct nfc_target {int nfcid1_len; int nfcid1; int sens_res; int supported_protocols; } ;


 int EPROTO ;
 int NFC_PROTO_JEWEL_MASK ;
 int be16_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int pn533_target_jewel_is_valid (struct pn533_target_jewel*,int) ;

__attribute__((used)) static int pn533_target_found_jewel(struct nfc_target *nfc_tgt, u8 *tgt_data,
       int tgt_data_len)
{
 struct pn533_target_jewel *tgt_jewel;

 tgt_jewel = (struct pn533_target_jewel *)tgt_data;

 if (!pn533_target_jewel_is_valid(tgt_jewel, tgt_data_len))
  return -EPROTO;

 nfc_tgt->supported_protocols = NFC_PROTO_JEWEL_MASK;
 nfc_tgt->sens_res = be16_to_cpu(tgt_jewel->sens_res);
 nfc_tgt->nfcid1_len = 4;
 memcpy(nfc_tgt->nfcid1, tgt_jewel->jewelid, nfc_tgt->nfcid1_len);

 return 0;
}
