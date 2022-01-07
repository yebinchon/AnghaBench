
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int VHCI_HC_PORTS ;

__attribute__((used)) static inline __u32 port_to_rhport(__u32 port)
{
 return port % VHCI_HC_PORTS;
}
