
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pn533_target_felica {scalar_t__* nfcid2; scalar_t__ opcode; } ;
struct nfc_target {int sensf_res_len; int nfcid2_len; int nfcid2; int sensf_res; int supported_protocols; } ;


 int EPROTO ;
 int NFC_NFCID2_MAXSIZE ;
 int NFC_PROTO_FELICA_MASK ;
 int NFC_PROTO_NFC_DEP_MASK ;
 scalar_t__ PN533_FELICA_SENSF_NFCID2_DEP_B1 ;
 scalar_t__ PN533_FELICA_SENSF_NFCID2_DEP_B2 ;
 int memcpy (int ,scalar_t__*,int) ;
 int pn533_target_felica_is_valid (struct pn533_target_felica*,int) ;

__attribute__((used)) static int pn533_target_found_felica(struct nfc_target *nfc_tgt, u8 *tgt_data,
       int tgt_data_len)
{
 struct pn533_target_felica *tgt_felica;

 tgt_felica = (struct pn533_target_felica *)tgt_data;

 if (!pn533_target_felica_is_valid(tgt_felica, tgt_data_len))
  return -EPROTO;

 if ((tgt_felica->nfcid2[0] == PN533_FELICA_SENSF_NFCID2_DEP_B1) &&
     (tgt_felica->nfcid2[1] == PN533_FELICA_SENSF_NFCID2_DEP_B2))
  nfc_tgt->supported_protocols = NFC_PROTO_NFC_DEP_MASK;
 else
  nfc_tgt->supported_protocols = NFC_PROTO_FELICA_MASK;

 memcpy(nfc_tgt->sensf_res, &tgt_felica->opcode, 9);
 nfc_tgt->sensf_res_len = 9;

 memcpy(nfc_tgt->nfcid2, tgt_felica->nfcid2, NFC_NFCID2_MAXSIZE);
 nfc_tgt->nfcid2_len = NFC_NFCID2_MAXSIZE;

 return 0;
}
