
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CONSOLEIO_read ;
 int HYPERVISOR_console_io (int ,int,char*) ;

__attribute__((used)) static int dom0_read_console(uint32_t vtermno, char *buf, int len)
{
 return HYPERVISOR_console_io(CONSOLEIO_read, len, buf);
}
