
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openpromio {char* oprom_array; } ;
struct device_node {int dummy; } ;


 int of_set_property (int ,char*,char*,int) ;
 int options_node ;
 int strlen (char*) ;

__attribute__((used)) static int opromsetopt(struct device_node *dp, struct openpromio *op, int bufsize)
{
 char *buf = op->oprom_array + strlen(op->oprom_array) + 1;
 int len = op->oprom_array + bufsize - buf;

 return of_set_property(options_node, op->oprom_array, buf, len);
}
