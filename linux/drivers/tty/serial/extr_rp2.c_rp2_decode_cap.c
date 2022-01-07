
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;



__attribute__((used)) static inline void rp2_decode_cap(const struct pci_device_id *id,
      int *ports, int *smpte)
{
 *ports = id->driver_data >> 8;
 *smpte = id->driver_data & 0xff;
}
