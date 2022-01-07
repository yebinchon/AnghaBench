
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {char* name; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t display_name_show(struct omap_dss_device *dssdev, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s\n",
   dssdev->name ?
   dssdev->name : "");
}
