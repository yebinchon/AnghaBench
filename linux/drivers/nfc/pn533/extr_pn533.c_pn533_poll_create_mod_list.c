
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pn533 {int dummy; } ;


 int NFC_PROTO_FELICA_MASK ;
 int NFC_PROTO_ISO14443_B_MASK ;
 int NFC_PROTO_ISO14443_MASK ;
 int NFC_PROTO_JEWEL_MASK ;
 int NFC_PROTO_MIFARE_MASK ;
 int NFC_PROTO_NFC_DEP_MASK ;
 int PN533_LISTEN_MOD ;
 int PN533_POLL_MOD_106KBPS_A ;
 int PN533_POLL_MOD_106KBPS_JEWEL ;
 int PN533_POLL_MOD_212KBPS_FELICA ;
 int PN533_POLL_MOD_424KBPS_FELICA ;
 int PN533_POLL_MOD_847KBPS_B ;
 int pn533_poll_add_mod (struct pn533*,int ) ;
 int pn533_poll_reset_mod_list (struct pn533*) ;

__attribute__((used)) static void pn533_poll_create_mod_list(struct pn533 *dev,
           u32 im_protocols, u32 tm_protocols)
{
 pn533_poll_reset_mod_list(dev);

 if ((im_protocols & NFC_PROTO_MIFARE_MASK) ||
     (im_protocols & NFC_PROTO_ISO14443_MASK) ||
     (im_protocols & NFC_PROTO_NFC_DEP_MASK))
  pn533_poll_add_mod(dev, PN533_POLL_MOD_106KBPS_A);

 if (im_protocols & NFC_PROTO_FELICA_MASK ||
     im_protocols & NFC_PROTO_NFC_DEP_MASK) {
  pn533_poll_add_mod(dev, PN533_POLL_MOD_212KBPS_FELICA);
  pn533_poll_add_mod(dev, PN533_POLL_MOD_424KBPS_FELICA);
 }

 if (im_protocols & NFC_PROTO_JEWEL_MASK)
  pn533_poll_add_mod(dev, PN533_POLL_MOD_106KBPS_JEWEL);

 if (im_protocols & NFC_PROTO_ISO14443_B_MASK)
  pn533_poll_add_mod(dev, PN533_POLL_MOD_847KBPS_B);

 if (tm_protocols)
  pn533_poll_add_mod(dev, PN533_LISTEN_MOD);
}
