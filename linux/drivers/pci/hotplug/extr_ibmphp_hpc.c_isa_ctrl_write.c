
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ io_start; } ;
struct TYPE_4__ {TYPE_1__ isa_ctlr; } ;
struct controller {TYPE_2__ u; } ;


 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static void isa_ctrl_write(struct controller *ctlr_ptr, u8 offset, u8 data)
{
 u16 start_address;
 u16 port_address;

 start_address = ctlr_ptr->u.isa_ctlr.io_start;
 port_address = start_address + (u16) offset;
 outb(data, port_address);
}
