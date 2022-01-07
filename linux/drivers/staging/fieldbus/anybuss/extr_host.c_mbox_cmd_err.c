
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct anybus_mbox_hdr {int info; } ;
struct mbox_priv {int* msg; int msg_in_sz; struct anybus_mbox_hdr hdr; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int EIO ;
 int * EMSGS ;
 int be16_to_cpu (int ) ;
 int dev_err (struct device*,char*,...) ;
 int dump_stack () ;
 int log_invalid_other (struct device*,struct anybus_mbox_hdr*) ;

__attribute__((used)) static int mbox_cmd_err(struct device *dev, struct mbox_priv *mpriv)
{
 int i;
 u8 ecode;
 struct anybus_mbox_hdr *hdr = &mpriv->hdr;
 u16 info = be16_to_cpu(hdr->info);
 u8 *phdr = (u8 *)hdr;
 u8 *pmsg = mpriv->msg;

 if (!(info & 0x8000))
  return 0;
 ecode = (info >> 8) & 0x0F;
 dev_err(dev, "mailbox command failed:");
 if (ecode == 0x0F)
  log_invalid_other(dev, hdr);
 else if (ecode < ARRAY_SIZE(EMSGS))
  dev_err(dev, "   Error code: %s (0x%02X)",
   EMSGS[ecode], ecode);
 else
  dev_err(dev, "   Error code: 0x%02X\n", ecode);
 dev_err(dev, "Failed command:");
 dev_err(dev, "Message Header:");
 for (i = 0; i < sizeof(mpriv->hdr); i += 2)
  dev_err(dev, "%02X%02X", phdr[i], phdr[i + 1]);
 dev_err(dev, "Message Data:");
 for (i = 0; i < mpriv->msg_in_sz; i += 2)
  dev_err(dev, "%02X%02X", pmsg[i], pmsg[i + 1]);
 dev_err(dev, "Stack dump:");
 dump_stack();
 return -EIO;
}
