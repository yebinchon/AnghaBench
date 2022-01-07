
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int put_unaligned_be32 (int ,unsigned char*) ;
 int put_unaligned_be64 (int,unsigned char*) ;
 int spc_modesense_blockdesc (unsigned char*,int,int ) ;

__attribute__((used)) static int spc_modesense_long_blockdesc(unsigned char *buf, u64 blocks, u32 block_size)
{
 if (blocks <= 0xffffffff)
  return spc_modesense_blockdesc(buf + 3, blocks, block_size) + 3;

 *buf++ = 1;
 buf += 2;
 *buf++ = 16;
 put_unaligned_be64(blocks, buf);
 buf += 12;
 put_unaligned_be32(block_size, buf);

 return 17;
}
