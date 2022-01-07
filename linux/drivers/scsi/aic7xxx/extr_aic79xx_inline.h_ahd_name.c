
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {char* name; } ;



__attribute__((used)) static inline char *ahd_name(struct ahd_softc *ahd)
{
 return (ahd->name);
}
