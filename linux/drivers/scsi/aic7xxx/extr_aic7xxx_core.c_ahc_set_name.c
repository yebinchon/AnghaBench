
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {char* name; } ;


 int kfree (char*) ;

void
ahc_set_name(struct ahc_softc *ahc, char *name)
{
 if (ahc->name != ((void*)0))
  kfree(ahc->name);
 ahc->name = name;
}
