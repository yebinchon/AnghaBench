
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct device {TYPE_2__* bus; TYPE_1__* driver; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;


 int ESAS2R_DRVR_NAME ;
 size_t EVENT_LOG_BUFF_SIZE ;
 int dev_name (struct device const*) ;
 char* event_buffer ;
 int event_buffer_lock ;
 long const event_log_level ;
 int memset (char*,int ,size_t) ;
 int printk (char*,char*) ;
 int snprintf (char*,size_t,char const*,char const*,int ,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ strlen (char*) ;
 char* translate_esas2r_event_level_to_kernel (long const) ;
 int vsnprintf (char*,size_t,char const*,int ) ;

__attribute__((used)) static int esas2r_log_master(const long level,
        const struct device *dev,
        const char *format,
        va_list args)
{
 if (level <= event_log_level) {
  unsigned long flags = 0;
  int retval = 0;
  char *buffer = event_buffer;
  size_t buflen = EVENT_LOG_BUFF_SIZE;
  const char *fmt_nodev = "%s%s: ";
  const char *fmt_dev = "%s%s [%s, %s, %s]";
  const char *slevel =
   translate_esas2r_event_level_to_kernel(level);

  spin_lock_irqsave(&event_buffer_lock, flags);

  memset(buffer, 0, buflen);







  if (dev == ((void*)0)) {
   snprintf(buffer, buflen, fmt_nodev, slevel,
     ESAS2R_DRVR_NAME);
  } else {
   snprintf(buffer, buflen, fmt_dev, slevel,
     ESAS2R_DRVR_NAME,
     (dev->driver ? dev->driver->name : "unknown"),
     (dev->bus ? dev->bus->name : "unknown"),
     dev_name(dev));
  }

  buffer += strlen(event_buffer);
  buflen -= strlen(event_buffer);

  retval = vsnprintf(buffer, buflen, format, args);
  if (retval < 0) {
   spin_unlock_irqrestore(&event_buffer_lock, flags);
   return -1;
  }





  printk("%s\n", event_buffer);

  spin_unlock_irqrestore(&event_buffer_lock, flags);
 }

 return 0;
}
