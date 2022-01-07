
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gr_udc {int dummy; } ;



__attribute__((used)) static void gr_dbgprint_devreq(struct gr_udc *dev, u8 type, u8 request,
          u16 value, u16 index, u16 length) {}
