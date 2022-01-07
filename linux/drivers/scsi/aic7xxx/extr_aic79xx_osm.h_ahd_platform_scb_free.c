
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb {int dummy; } ;
struct ahd_softc {int flags; } ;


 int AHD_RESOURCE_SHORTAGE ;

__attribute__((used)) static inline void
ahd_platform_scb_free(struct ahd_softc *ahd, struct scb *scb)
{
 ahd->flags &= ~AHD_RESOURCE_SHORTAGE;
}
