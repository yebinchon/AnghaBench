
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int RTK_BEQ_TX_DESC_NUM ;
 int RTK_DEFAULT_TX_DESC_NUM ;



__attribute__((used)) static u32 max_num_of_tx_queue(u8 queue)
{
 u32 max_num;

 switch (queue) {
 case 128:
  max_num = RTK_BEQ_TX_DESC_NUM;
  break;
 case 129:
  max_num = 1;
  break;
 default:
  max_num = RTK_DEFAULT_TX_DESC_NUM;
  break;
 }

 return max_num;
}
