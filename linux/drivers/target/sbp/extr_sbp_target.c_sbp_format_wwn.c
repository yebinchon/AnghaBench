
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ssize_t ;


 int snprintf (char*,size_t,char*,int ) ;

__attribute__((used)) static ssize_t sbp_format_wwn(char *buf, size_t len, u64 wwn)
{
 return snprintf(buf, len, "%016llx", wwn);
}
