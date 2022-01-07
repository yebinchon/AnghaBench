
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int send_int_page; } ;


 int sync_set_bit (int ,int ) ;
 TYPE_1__ vmbus_connection ;

__attribute__((used)) static inline void vmbus_send_interrupt(u32 relid)
{
 sync_set_bit(relid, vmbus_connection.send_int_page);
}
