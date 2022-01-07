
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mon_reader_bin {unsigned int b_size; TYPE_1__* b_vec; } ;
struct TYPE_2__ {unsigned char* ptr; } ;


 int CHUNK_SIZE ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;

__attribute__((used)) static unsigned int mon_copy_to_buff(const struct mon_reader_bin *this,
    unsigned int off, const unsigned char *from, unsigned int length)
{
 unsigned int step_len;
 unsigned char *buf;
 unsigned int in_page;

 while (length) {



  step_len = length;
  in_page = CHUNK_SIZE - (off & (CHUNK_SIZE-1));
  if (in_page < step_len)
   step_len = in_page;




  buf = this->b_vec[off / CHUNK_SIZE].ptr + off % CHUNK_SIZE;
  memcpy(buf, from, step_len);
  if ((off += step_len) >= this->b_size) off = 0;
  from += step_len;
  length -= step_len;
 }
 return off;
}
