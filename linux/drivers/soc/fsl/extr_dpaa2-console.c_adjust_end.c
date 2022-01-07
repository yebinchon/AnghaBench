
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct console_data {scalar_t__ start_addr; scalar_t__ end_of_data; TYPE_1__* hdr; } ;
struct TYPE_2__ {int last_byte; } ;


 scalar_t__ LAST_BYTE (int ) ;
 int readl (int *) ;

__attribute__((used)) static inline void adjust_end(struct console_data *cd)
{
 u32 last_byte = readl(&cd->hdr->last_byte);

 cd->end_of_data = cd->start_addr + LAST_BYTE(last_byte);
}
