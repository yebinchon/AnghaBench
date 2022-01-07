
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int VHCI_PORTS ;

__attribute__((used)) static inline int port_to_pdev_nr(__u32 port)
{
 return port / VHCI_PORTS;
}
