
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int fcoe_ctlr_create_store (struct bus_type*,char const*,size_t) ;

__attribute__((used)) static ssize_t ctlr_create_store(struct bus_type *bus, const char *buf,
     size_t count)
{
 return fcoe_ctlr_create_store(bus, buf, count);
}
