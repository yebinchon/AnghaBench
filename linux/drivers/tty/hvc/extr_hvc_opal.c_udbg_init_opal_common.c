
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udbg_getc ;
 int udbg_getc_poll ;
 int udbg_opal_getc ;
 int udbg_opal_getc_poll ;
 int udbg_opal_putc ;
 int udbg_putc ;

__attribute__((used)) static void udbg_init_opal_common(void)
{
 udbg_putc = udbg_opal_putc;
 udbg_getc = udbg_opal_getc;
 udbg_getc_poll = udbg_opal_getc_poll;
}
