
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dst_mode; int src_mode; } ;
typedef int ahd_mode ;


 int AHD_MK_MSK (int ) ;
 int ahd_name (struct ahd_softc*) ;
 int panic (char*,int ,char const*,int) ;

__attribute__((used)) static void
ahd_assert_modes(struct ahd_softc *ahd, ahd_mode srcmode,
   ahd_mode dstmode, const char *file, int line)
{







}
