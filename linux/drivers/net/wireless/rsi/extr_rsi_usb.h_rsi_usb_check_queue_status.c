
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rsi_hw {int dummy; } ;


 int QUEUE_NOT_FULL ;

__attribute__((used)) static inline int rsi_usb_check_queue_status(struct rsi_hw *adapter, u8 q_num)
{

 return QUEUE_NOT_FULL;
}
