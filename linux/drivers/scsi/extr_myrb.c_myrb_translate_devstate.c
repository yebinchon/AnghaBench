
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,int) ;
 int memmove (void*,void*,int) ;

__attribute__((used)) static inline void myrb_translate_devstate(void *state)
{
 memcpy(state + 2, state + 3, 1);
 memmove(state + 4, state + 5, 2);
 memmove(state + 6, state + 8, 4);
}
