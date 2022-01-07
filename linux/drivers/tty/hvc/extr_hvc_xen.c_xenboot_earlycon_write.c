
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int dom0_write_console (int ,char const*,unsigned int) ;

__attribute__((used)) static void xenboot_earlycon_write(struct console *console,
      const char *string,
      unsigned len)
{
 dom0_write_console(0, string, len);
}
