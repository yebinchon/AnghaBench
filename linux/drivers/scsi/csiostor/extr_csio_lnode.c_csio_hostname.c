
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {char* nodename; } ;


 TYPE_1__* init_utsname () ;
 scalar_t__ snprintf (int *,size_t,char*,char*) ;

__attribute__((used)) static int
csio_hostname(uint8_t *buf, size_t buf_len)
{
 if (snprintf(buf, buf_len, "%s", init_utsname()->nodename) > 0)
  return 0;
 return -1;
}
