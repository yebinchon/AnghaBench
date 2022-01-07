
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_t ;


 int sprintf (char*,char*,int const*) ;

char *visorchannel_guid_id(const guid_t *guid, char *s)
{
 sprintf(s, "%pUL", guid);
 return s;
}
