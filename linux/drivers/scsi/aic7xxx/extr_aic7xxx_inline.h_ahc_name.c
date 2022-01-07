
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {char* name; } ;



__attribute__((used)) static inline char *ahc_name(struct ahc_softc *ahc)
{
 return (ahc->name);
}
