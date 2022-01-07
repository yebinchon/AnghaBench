
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dummy; } ;


 int xenbus_read_otherend_details (struct xenbus_device*,char*,char*) ;

__attribute__((used)) static int read_backend_details(struct xenbus_device *xendev)
{
 return xenbus_read_otherend_details(xendev, "backend-id", "backend");
}
