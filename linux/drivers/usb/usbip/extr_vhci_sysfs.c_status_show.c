
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;
 int status_name_to_id (int ) ;
 int status_show_not_ready (int,char*) ;
 int status_show_vhci (int,char*) ;

__attribute__((used)) static ssize_t status_show(struct device *dev,
      struct device_attribute *attr, char *out)
{
 char *s = out;
 int pdev_nr;

 out += sprintf(out,
         "hub port sta spd dev      sockfd local_busid\n");

 pdev_nr = status_name_to_id(attr->attr.name);
 if (pdev_nr < 0)
  out += status_show_not_ready(pdev_nr, out);
 else
  out += status_show_vhci(pdev_nr, out);

 return out - s;
}
