
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ ap_configuration ;
 scalar_t__ ap_max_domain_id ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t ap_max_domain_id_show(struct bus_type *bus, char *buf)
{
 int max_domain_id;

 if (ap_configuration)
  max_domain_id = ap_max_domain_id ? : -1;
 else
  max_domain_id = 15;
 return snprintf(buf, PAGE_SIZE, "%d\n", max_domain_id);
}
