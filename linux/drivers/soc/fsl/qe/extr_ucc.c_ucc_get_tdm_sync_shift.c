
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum comm_dir { ____Placeholder_comm_dir } comm_dir ;


 int COMM_DIR_RX ;
 int RX_SYNC_SHIFT_BASE ;
 int TX_SYNC_SHIFT_BASE ;

__attribute__((used)) static u32 ucc_get_tdm_sync_shift(enum comm_dir mode, u32 tdm_num)
{
 u32 shift;

 shift = (mode == COMM_DIR_RX) ? RX_SYNC_SHIFT_BASE : TX_SYNC_SHIFT_BASE;
 shift -= tdm_num * 2;

 return shift;
}
