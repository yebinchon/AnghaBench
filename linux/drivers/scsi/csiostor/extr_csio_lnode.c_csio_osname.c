
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {char* sysname; char* release; char* version; } ;


 TYPE_1__* init_utsname () ;
 scalar_t__ snprintf (int *,size_t,char*,char*,char*,char*) ;

__attribute__((used)) static int
csio_osname(uint8_t *buf, size_t buf_len)
{
 if (snprintf(buf, buf_len, "%s %s %s",
       init_utsname()->sysname,
       init_utsname()->release,
       init_utsname()->version) > 0)
  return 0;

 return -1;
}
