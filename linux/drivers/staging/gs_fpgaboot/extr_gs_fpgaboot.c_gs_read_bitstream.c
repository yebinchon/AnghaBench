
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fpgaimage {int * fpgadata; int lendata; int time; int date; int part; int filename; TYPE_1__* fw_entry; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int MAX_STR ;
 int readinfo_bitstream (int *,int ,int ,int*) ;
 int readlength_bitstream (int *,int *,int*) ;
 int readmagic_bitstream (int *,int*) ;

__attribute__((used)) static int gs_read_bitstream(struct fpgaimage *fimage)
{
 u8 *bitdata;
 int offset;
 int err;

 offset = 0;
 bitdata = (u8 *)fimage->fw_entry->data;

 err = readmagic_bitstream(bitdata, &offset);
 if (err)
  return err;

 err = readinfo_bitstream(bitdata, fimage->filename, MAX_STR, &offset);
 if (err)
  return err;
 err = readinfo_bitstream(bitdata, fimage->part, MAX_STR, &offset);
 if (err)
  return err;
 err = readinfo_bitstream(bitdata, fimage->date, MAX_STR, &offset);
 if (err)
  return err;
 err = readinfo_bitstream(bitdata, fimage->time, MAX_STR, &offset);
 if (err)
  return err;

 err = readlength_bitstream(bitdata, &fimage->lendata, &offset);
 if (err)
  return err;

 fimage->fpgadata = bitdata + offset;

 return 0;
}
