
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 size_t BLOCK_ADDR1_H ;
 size_t BLOCK_ADDR1_L ;
 size_t BLOCK_ADDR2_H ;
 size_t BLOCK_ADDR2_L ;
 size_t PARITY ;
 int XD_BA1_BA2_EQL ;
 int XD_BA1_VALID ;
 int XD_BA2_VALID ;

__attribute__((used)) static u16 xd_load_log_block_addr(u8 *redunt)
{
 u16 addr = 0xFFFF;

 if (redunt[PARITY] & XD_BA1_BA2_EQL)
  addr = ((u16)redunt[BLOCK_ADDR1_H] << 8) |
   redunt[BLOCK_ADDR1_L];
 else if (redunt[PARITY] & XD_BA1_VALID)
  addr = ((u16)redunt[BLOCK_ADDR1_H] << 8) |
   redunt[BLOCK_ADDR1_L];
 else if (redunt[PARITY] & XD_BA2_VALID)
  addr = ((u16)redunt[BLOCK_ADDR2_H] << 8) |
   redunt[BLOCK_ADDR2_L];

 return addr;
}
