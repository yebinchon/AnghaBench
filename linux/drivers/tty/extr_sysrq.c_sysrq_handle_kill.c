
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSOLE_LOGLEVEL_DEBUG ;
 int SIGKILL ;
 int console_loglevel ;
 int send_sig_all (int ) ;

__attribute__((used)) static void sysrq_handle_kill(int key)
{
 send_sig_all(SIGKILL);
 console_loglevel = CONSOLE_LOGLEVEL_DEBUG;
}
