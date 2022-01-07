
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct xenbus_device {int nodename; int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ PRINTF_BUFFER_SIZE ;
 int XBT_NIL ;
 int dev_err (int *,char*,char*) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 unsigned int sprintf (char*,char*,int) ;
 int vsnprintf (char*,scalar_t__,char const*,int ) ;
 int xenbus_write (int ,char*,char*,char*) ;

__attribute__((used)) static void xenbus_va_dev_error(struct xenbus_device *dev, int err,
    const char *fmt, va_list ap)
{
 unsigned int len;
 char *printf_buffer;
 char *path_buffer;



 printf_buffer = kmalloc(4096, GFP_KERNEL);
 if (!printf_buffer)
  return;

 len = sprintf(printf_buffer, "%i ", -err);
 vsnprintf(printf_buffer + len, 4096 - len, fmt, ap);

 dev_err(&dev->dev, "%s\n", printf_buffer);

 path_buffer = kasprintf(GFP_KERNEL, "error/%s", dev->nodename);
 if (path_buffer)
  xenbus_write(XBT_NIL, path_buffer, "error", printf_buffer);

 kfree(printf_buffer);
 kfree(path_buffer);
}
