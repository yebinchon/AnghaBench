
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VDE_INTERRUPT ;
 scalar_t__ viafb_enabled_ints ;
 int viafb_mmio_write (int ,int ) ;

__attribute__((used)) static void viafb_int_init(void)
{
 viafb_enabled_ints = 0;

 viafb_mmio_write(VDE_INTERRUPT, 0);
}
