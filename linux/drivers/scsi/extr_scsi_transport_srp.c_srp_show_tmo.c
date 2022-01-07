
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t srp_show_tmo(char *buf, int tmo)
{
 return tmo >= 0 ? sprintf(buf, "%d\n", tmo) : sprintf(buf, "off\n");
}
