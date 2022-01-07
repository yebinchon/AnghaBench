
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rccb {int dummy; } ;
struct uwb_rc {int version; } ;


 int ENOANO ;
 int hwarc_filter_cmd_WUSB_0100 (struct uwb_rc*,struct uwb_rccb**,size_t*) ;

__attribute__((used)) static
int hwarc_filter_cmd(struct uwb_rc *rc, struct uwb_rccb **header,
       size_t *size)
{
 int result = -ENOANO;
 if (rc->version == 0x0100)
  result = hwarc_filter_cmd_WUSB_0100(rc, header, size);
 return result;
}
