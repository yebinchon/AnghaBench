
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct isi_board {unsigned long base; int port_count; int shift_count; } ;


 int EIO ;
 int dev_dbg (int *,char*,unsigned int const,...) ;
 int dev_err (int *,char*,unsigned int const) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,unsigned int const,unsigned long) ;
 int inw (unsigned long) ;
 int msleep (int) ;
 int outw (int ,unsigned long) ;
 struct isi_board* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static int reset_card(struct pci_dev *pdev,
 const unsigned int card, unsigned int *signature)
{
 struct isi_board *board = pci_get_drvdata(pdev);
 unsigned long base = board->base;
 unsigned int sig, portcount = 0;
 int retval = 0;

 dev_dbg(&pdev->dev, "ISILoad:Resetting Card%d at 0x%lx\n", card + 1,
  base);

 inw(base + 0x8);

 msleep(10);

 outw(0, base + 0x8);

 msleep(1000);

 sig = inw(base + 0x4) & 0xff;

 if (sig != 0xa5 && sig != 0xbb && sig != 0xcc && sig != 0xdd &&
   sig != 0xee) {
  dev_warn(&pdev->dev, "ISILoad:Card%u reset failure (Possible "
   "bad I/O Port Address 0x%lx).\n", card + 1, base);
  dev_dbg(&pdev->dev, "Sig=0x%x\n", sig);
  retval = -EIO;
  goto end;
 }

 msleep(10);

 portcount = inw(base + 0x2);
 if (!(inw(base + 0xe) & 0x1) || (portcount != 0 && portcount != 4 &&
    portcount != 8 && portcount != 16)) {
  dev_err(&pdev->dev, "ISILoad:PCI Card%d reset failure.\n",
   card + 1);
  retval = -EIO;
  goto end;
 }

 switch (sig) {
 case 0xa5:
 case 0xbb:
 case 0xdd:
  board->port_count = (portcount == 4) ? 4 : 8;
  board->shift_count = 12;
  break;
 case 0xcc:
 case 0xee:
  board->port_count = 16;
  board->shift_count = 11;
  break;
 }
 dev_info(&pdev->dev, "-Done\n");
 *signature = sig;

end:
 return retval;
}
