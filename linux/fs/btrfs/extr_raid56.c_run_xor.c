
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int MAX_XOR_BLOCKS ;
 int min (int,int ) ;
 int xor_blocks (int,int ,void*,void**) ;

__attribute__((used)) static void run_xor(void **pages, int src_cnt, ssize_t len)
{
 int src_off = 0;
 int xor_src_cnt = 0;
 void *dest = pages[src_cnt];

 while(src_cnt > 0) {
  xor_src_cnt = min(src_cnt, MAX_XOR_BLOCKS);
  xor_blocks(xor_src_cnt, len, dest, pages + src_off);

  src_cnt -= xor_src_cnt;
  src_off += xor_src_cnt;
 }
}
