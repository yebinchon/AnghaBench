
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_dlci {int port; } ;


 int tty_port_get (int *) ;

__attribute__((used)) static inline void dlci_get(struct gsm_dlci *dlci)
{
 tty_port_get(&dlci->port);
}
