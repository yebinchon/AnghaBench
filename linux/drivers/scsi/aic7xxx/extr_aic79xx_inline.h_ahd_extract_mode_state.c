
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;
typedef int ahd_mode_state ;
typedef int ahd_mode ;


 int DST_MODE ;
 int DST_MODE_SHIFT ;
 int SRC_MODE ;
 int SRC_MODE_SHIFT ;

__attribute__((used)) static inline void
ahd_extract_mode_state(struct ahd_softc *ahd, ahd_mode_state state,
         ahd_mode *src, ahd_mode *dst)
{
 *src = (state & SRC_MODE) >> SRC_MODE_SHIFT;
 *dst = (state & DST_MODE) >> DST_MODE_SHIFT;
}
