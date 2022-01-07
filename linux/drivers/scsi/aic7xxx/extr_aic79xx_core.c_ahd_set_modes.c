
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {scalar_t__ src_mode; scalar_t__ dst_mode; } ;
typedef scalar_t__ ahd_mode ;


 scalar_t__ AHD_MODE_UNKNOWN ;
 int AHD_SHOW_MODEPTR ;
 int MODE_PTR ;
 int ahd_build_mode_state (struct ahd_softc*,scalar_t__,scalar_t__) ;
 int ahd_debug ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int ) ;
 int panic (char*) ;
 int printk (char*,int ,int ) ;

void
ahd_set_modes(struct ahd_softc *ahd, ahd_mode src, ahd_mode dst)
{
 if (ahd->src_mode == src && ahd->dst_mode == dst)
  return;
 ahd_outb(ahd, MODE_PTR, ahd_build_mode_state(ahd, src, dst));
 ahd->src_mode = src;
 ahd->dst_mode = dst;
}
