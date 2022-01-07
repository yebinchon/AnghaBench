
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 char* scsi_extd_sense_format (unsigned char,unsigned char,char const**) ;
 char* scsi_sense_key_string (unsigned char) ;
 int usb_stor_dbg (struct us_data const*,char*,char const*,char const*,...) ;

void usb_stor_show_sense(const struct us_data *us,
    unsigned char key,
    unsigned char asc,
    unsigned char ascq)
{
 const char *what, *keystr, *fmt;

 keystr = scsi_sense_key_string(key);
 what = scsi_extd_sense_format(asc, ascq, &fmt);

 if (keystr == ((void*)0))
  keystr = "(Unknown Key)";
 if (what == ((void*)0))
  what = "(unknown ASC/ASCQ)";

 if (fmt)
  usb_stor_dbg(us, "%s: %s (%s%x)\n", keystr, what, fmt, ascq);
 else
  usb_stor_dbg(us, "%s: %s\n", keystr, what);
}
