
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 size_t ARRAY_SIZE (int *) ;
 int * blue16 ;
 int * blue2 ;
 int * blue4 ;
 int * blue8 ;
 int * green16 ;
 int * green2 ;
 int * green4 ;
 int * green8 ;
 int * red16 ;
 int * red2 ;
 int * red4 ;
 int * red8 ;

void fb_invert_cmaps(void)
{
    u_int i;

    for (i = 0; i < ARRAY_SIZE(red2); i++) {
 red2[i] = ~red2[i];
 green2[i] = ~green2[i];
 blue2[i] = ~blue2[i];
    }
    for (i = 0; i < ARRAY_SIZE(red4); i++) {
 red4[i] = ~red4[i];
 green4[i] = ~green4[i];
 blue4[i] = ~blue4[i];
    }
    for (i = 0; i < ARRAY_SIZE(red8); i++) {
 red8[i] = ~red8[i];
 green8[i] = ~green8[i];
 blue8[i] = ~blue8[i];
    }
    for (i = 0; i < ARRAY_SIZE(red16); i++) {
 red16[i] = ~red16[i];
 green16[i] = ~green16[i];
 blue16[i] = ~blue16[i];
    }
}
