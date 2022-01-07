
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetFrDs (unsigned char*) ;
 int GetToDs (unsigned char*) ;

__attribute__((used)) static inline unsigned char get_tofr_ds(unsigned char *pframe)
{
 return ((GetToDs(pframe) << 1) | GetFrDs(pframe));
}
