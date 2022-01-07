
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {char* name; } ;


 int kfree (char*) ;

void
ahd_set_name(struct ahd_softc *ahd, char *name)
{
 if (ahd->name != ((void*)0))
  kfree(ahd->name);
 ahd->name = name;
}
