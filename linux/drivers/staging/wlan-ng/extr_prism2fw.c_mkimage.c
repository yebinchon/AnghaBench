
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct imgchunk {scalar_t__ len; scalar_t__ addr; scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ addr; scalar_t__ dowrite; } ;
struct TYPE_3__ {scalar_t__ addr; scalar_t__ len; int data; } ;


 int GFP_KERNEL ;
 scalar_t__ kzalloc (scalar_t__,int ) ;
 int memcpy (scalar_t__,int ,scalar_t__) ;
 int ns3crc ;
 int ns3data ;
 int pr_debug (char*,int,scalar_t__,scalar_t__) ;
 int pr_err (char*,scalar_t__,scalar_t__) ;
 TYPE_2__* s3crc ;
 TYPE_1__* s3data ;

__attribute__((used)) static int mkimage(struct imgchunk *clist, unsigned int *ccnt)
{
 int result = 0;
 int i;
 int j;
 int currchunk = 0;
 u32 nextaddr = 0;
 u32 s3start;
 u32 s3end;
 u32 cstart = 0;
 u32 cend;
 u32 coffset;


 *ccnt = 0;


 for (i = 0; i < ns3data; i++) {
  if (s3data[i].addr == nextaddr) {

   clist[currchunk].len += s3data[i].len;
   nextaddr += s3data[i].len;
  } else {

   (*ccnt)++;
   currchunk = *ccnt - 1;
   clist[currchunk].addr = s3data[i].addr;
   clist[currchunk].len = s3data[i].len;
   nextaddr = s3data[i].addr + s3data[i].len;


   for (j = 0; j < ns3crc; j++) {
    if (s3crc[j].dowrite &&
        s3crc[j].addr == clist[currchunk].addr) {
     clist[currchunk].addr -= 2;
     clist[currchunk].len += 2;
    }
   }
  }
 }





 for (i = 0; i < *ccnt; i++) {
  clist[i].data = kzalloc(clist[i].len, GFP_KERNEL);
  if (!clist[i].data)
   return 1;

  pr_debug("chunk[%d]: addr=0x%06x len=%d\n",
    i, clist[i].addr, clist[i].len);
 }


 for (i = 0; i < ns3data; i++) {
  s3start = s3data[i].addr;
  s3end = s3start + s3data[i].len - 1;
  for (j = 0; j < *ccnt; j++) {
   cstart = clist[j].addr;
   cend = cstart + clist[j].len - 1;
   if (s3start >= cstart && s3end <= cend)
    break;
  }
  if (((unsigned int)j) >= (*ccnt)) {
   pr_err("s3rec(a=0x%06x,l=%d), no chunk match, exiting.\n",
          s3start, s3data[i].len);
   return 1;
  }
  coffset = s3start - cstart;
  memcpy(clist[j].data + coffset, s3data[i].data, s3data[i].len);
 }

 return result;
}
