
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ io_base; } ;


 TYPE_1__ fujitsu ;
 int inb (scalar_t__) ;

__attribute__((used)) static u8 fujitsu_status(void)
{
 return inb(fujitsu.io_base + 6);
}
