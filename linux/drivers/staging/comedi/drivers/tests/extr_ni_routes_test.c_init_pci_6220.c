
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int is_m_series; } ;


 TYPE_2__ board ;
 int init_private () ;
 int pci_6220 ;
 TYPE_1__ private ;

__attribute__((used)) static void init_pci_6220(void)
{
 board.name = pci_6220;
 init_private();
 private.is_m_series = 1;
}
