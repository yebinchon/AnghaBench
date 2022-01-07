
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * parent; } ;
struct hid_device {int vendor; int product; int name; TYPE_2__ dev; int * ll_driver; struct gb_hid* driver_data; int country; void* version; } ;
struct TYPE_5__ {int bCountryCode; int wProductID; int wVendorID; int bcdHID; } ;
struct gb_hid {TYPE_4__* connection; TYPE_1__ hdesc; struct hid_device* hid; } ;
struct TYPE_8__ {TYPE_3__* bundle; } ;
struct TYPE_7__ {int dev; } ;


 char* dev_name (int *) ;
 int gb_hid_get_desc (struct gb_hid*) ;
 int gb_hid_ll_driver ;
 void* le16_to_cpu (int ) ;
 int snprintf (int ,int,char*,char*,int,int) ;

__attribute__((used)) static int gb_hid_init(struct gb_hid *ghid)
{
 struct hid_device *hid = ghid->hid;
 int ret;

 ret = gb_hid_get_desc(ghid);
 if (ret)
  return ret;

 hid->version = le16_to_cpu(ghid->hdesc.bcdHID);
 hid->vendor = le16_to_cpu(ghid->hdesc.wVendorID);
 hid->product = le16_to_cpu(ghid->hdesc.wProductID);
 hid->country = ghid->hdesc.bCountryCode;

 hid->driver_data = ghid;
 hid->ll_driver = &gb_hid_ll_driver;
 hid->dev.parent = &ghid->connection->bundle->dev;



 snprintf(hid->name, sizeof(hid->name), "%s %04X:%04X",
   dev_name(&ghid->connection->bundle->dev),
   hid->vendor, hid->product);

 return 0;
}
