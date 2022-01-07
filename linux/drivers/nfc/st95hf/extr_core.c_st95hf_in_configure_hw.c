
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st95hf_context {int sendrcv_trflag; } ;
struct nfc_digital_dev {int dummy; } ;


 int NFC_DIGITAL_CONFIG_FRAMING ;
 int NFC_DIGITAL_CONFIG_RF_TECH ;
 int TRFLAG_NFCA_SHORT_FRAME ;
 int TRFLAG_NFCA_STD_FRAME ;
 int TRFLAG_NFCA_STD_FRAME_CRC ;
 struct st95hf_context* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 int st95hf_select_protocol (struct st95hf_context*,int) ;

__attribute__((used)) static int st95hf_in_configure_hw(struct nfc_digital_dev *ddev,
      int type,
      int param)
{
 struct st95hf_context *stcontext = nfc_digital_get_drvdata(ddev);

 if (type == NFC_DIGITAL_CONFIG_RF_TECH)
  return st95hf_select_protocol(stcontext, param);

 if (type == NFC_DIGITAL_CONFIG_FRAMING) {
  switch (param) {
  case 132:
   stcontext->sendrcv_trflag = TRFLAG_NFCA_SHORT_FRAME;
   break;
  case 131:
   stcontext->sendrcv_trflag = TRFLAG_NFCA_STD_FRAME;
   break;
  case 129:
  case 133:
  case 130:
   stcontext->sendrcv_trflag = TRFLAG_NFCA_STD_FRAME_CRC;
   break;
  case 128:
  case 135:
  case 134:
   break;
  }
 }

 return 0;
}
