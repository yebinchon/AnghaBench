
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_SERIAL_RP2_NR_UARTS ;
 int ENOSPC ;
 int rp2_minor_lock ;
 int rp2_minor_next ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int rp2_alloc_ports(int n_ports)
{
 int ret = -ENOSPC;

 spin_lock(&rp2_minor_lock);
 if (rp2_minor_next + n_ports <= CONFIG_SERIAL_RP2_NR_UARTS) {

  ret = rp2_minor_next;
  rp2_minor_next += n_ports;
 }
 spin_unlock(&rp2_minor_lock);

 return ret;
}
