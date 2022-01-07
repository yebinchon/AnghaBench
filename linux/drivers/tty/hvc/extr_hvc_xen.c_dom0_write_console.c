
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CONSOLEIO_write ;
 int HYPERVISOR_console_io (int ,int,char*) ;

__attribute__((used)) static int dom0_write_console(uint32_t vtermno, const char *str, int len)
{
 int rc = HYPERVISOR_console_io(CONSOLEIO_write, len, (char *)str);
 if (rc < 0)
  return rc;

 return len;
}
