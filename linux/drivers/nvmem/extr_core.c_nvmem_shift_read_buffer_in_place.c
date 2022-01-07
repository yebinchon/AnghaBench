
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvmem_cell {int bit_offset; int bytes; int nbits; } ;


 int BITS_PER_BYTE ;
 int DIV_ROUND_UP (int,int) ;
 int GENMASK (int,int ) ;

__attribute__((used)) static void nvmem_shift_read_buffer_in_place(struct nvmem_cell *cell, void *buf)
{
 u8 *p, *b;
 int i, extra, bit_offset = cell->bit_offset;

 p = b = buf;
 if (bit_offset) {

  *b++ >>= bit_offset;


  for (i = 1; i < cell->bytes; i++) {

   *p |= *b << (BITS_PER_BYTE - bit_offset);

   p = b;
   *b++ >>= bit_offset;
  }
 } else {

  p += cell->bytes - 1;
 }


 extra = cell->bytes - DIV_ROUND_UP(cell->nbits, BITS_PER_BYTE);
 while (--extra >= 0)
  *p-- = 0;


 *p &= GENMASK((cell->nbits%BITS_PER_BYTE) - 1, 0);
}
