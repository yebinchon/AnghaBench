
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int swap_copy32 (void*,void*,unsigned int) ;

__attribute__((used)) static void alsa_to_most_copy32(void *alsa, void *most, unsigned int bytes)
{
 swap_copy32(most, alsa, bytes);
}
