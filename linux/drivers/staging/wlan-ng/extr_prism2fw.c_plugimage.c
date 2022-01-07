
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct s3plugrec {scalar_t__ addr; int len; int itemcode; } ;
struct pda {int nrec; TYPE_1__** rec; } ;
struct imgchunk {scalar_t__ addr; scalar_t__ len; int * data; } ;
struct TYPE_2__ {int data; int len; int code; } ;


 int PRISM2_USB_FWFILE ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int pr_debug (char*,int,scalar_t__,int,int,scalar_t__) ;
 int pr_err (char*,int) ;
 int pr_warn (char*,int) ;
 int strncpy (int *,int ,int) ;

__attribute__((used)) static int plugimage(struct imgchunk *fchunk, unsigned int nfchunks,
       struct s3plugrec *s3plug, unsigned int ns3plug,
       struct pda *pda)
{
 int result = 0;
 int i;
 int j;
 int c;
 u32 pstart;
 u32 pend;
 u32 cstart = 0;
 u32 cend;
 u32 chunkoff;
 u8 *dest;


 for (i = 0; i < ns3plug; i++) {
  pstart = s3plug[i].addr;
  pend = s3plug[i].addr + s3plug[i].len;

  if (s3plug[i].itemcode != 0xffffffffUL) {
   for (j = 0; j < pda->nrec; j++) {
    if (s3plug[i].itemcode ==
        le16_to_cpu(pda->rec[j]->code))
     break;
   }
  } else {
   j = -1;
  }
  if (j >= pda->nrec && j != -1) {
   pr_warn("warning: Failed to find PDR for plugrec 0x%04x.\n",
    s3plug[i].itemcode);
   continue;
  }


  if (j != -1 && s3plug[i].len < le16_to_cpu(pda->rec[j]->len)) {
   pr_err("error: Plug vs. PDR len mismatch for plugrec 0x%04x, abort plugging.\n",
          s3plug[i].itemcode);
   result = 1;
   continue;
  }





  for (c = 0; c < nfchunks; c++) {
   cstart = fchunk[c].addr;
   cend = fchunk[c].addr + fchunk[c].len;
   if (pstart >= cstart && pend <= cend)
    break;
  }
  if (c >= nfchunks) {
   pr_err("error: Failed to find image chunk for plugrec 0x%04x.\n",
          s3plug[i].itemcode);
   result = 1;
   continue;
  }


  chunkoff = pstart - cstart;
  dest = fchunk[c].data + chunkoff;
  pr_debug("Plugging item 0x%04x @ 0x%06x, len=%d, cnum=%d coff=0x%06x\n",
    s3plug[i].itemcode, pstart, s3plug[i].len,
    c, chunkoff);

  if (j == -1) {
   memset(dest, 0, s3plug[i].len);
   strncpy(dest, PRISM2_USB_FWFILE, s3plug[i].len - 1);
  } else {
   memcpy(dest, &pda->rec[j]->data, s3plug[i].len);
  }
 }
 return result;
}
