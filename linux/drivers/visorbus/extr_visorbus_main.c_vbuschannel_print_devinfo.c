
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_vbus_deviceinfo {int infostrs; int drvname; int * devtype; } ;
struct seq_file {int dummy; } ;


 int isprint (int ) ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void vbuschannel_print_devinfo(struct visor_vbus_deviceinfo *devinfo,
          struct seq_file *seq, int devix)
{

 if (!isprint(devinfo->devtype[0]))
  return;
 if (devix >= 0)
  seq_printf(seq, "[%d]", devix);
 else

  seq_puts(seq, "   ");




 seq_printf(seq, "%-*.*s ", (int)sizeof(devinfo->devtype),
     (int)sizeof(devinfo->devtype), devinfo->devtype);
 seq_printf(seq, "%-*.*s ", (int)sizeof(devinfo->drvname),
     (int)sizeof(devinfo->drvname), devinfo->drvname);
 seq_printf(seq, "%.*s\n", (int)sizeof(devinfo->infostrs),
     devinfo->infostrs);
}
