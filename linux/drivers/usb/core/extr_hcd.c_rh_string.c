
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {char* bus_name; } ;
struct usb_hcd {char* product_desc; TYPE_2__* driver; TYPE_1__ self; } ;
struct TYPE_6__ {char* sysname; char* release; } ;
struct TYPE_5__ {char* description; } ;



 int ascii2desc (char const*,int *,unsigned int) ;
 TYPE_3__* init_utsname () ;
 int memcpy (int *,char const*,unsigned int) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;

__attribute__((used)) static unsigned
rh_string(int id, struct usb_hcd const *hcd, u8 *data, unsigned len)
{
 char buf[100];
 char const *s;
 static char const langids[4] = {4, 128, 0x09, 0x04};


 switch (id) {
 case 0:


  if (len > 4)
   len = 4;
  memcpy(data, langids, len);
  return len;
 case 1:

  s = hcd->self.bus_name;
  break;
 case 2:

  s = hcd->product_desc;
  break;
 case 3:

  snprintf (buf, sizeof buf, "%s %s %s", init_utsname()->sysname,
   init_utsname()->release, hcd->driver->description);
  s = buf;
  break;
 default:

  return 0;
 }

 return ascii2desc(s, data, len);
}
