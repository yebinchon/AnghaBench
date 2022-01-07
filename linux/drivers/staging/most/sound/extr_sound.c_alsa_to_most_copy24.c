
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int swap_copy24 (void*,void*,unsigned int) ;

__attribute__((used)) static void alsa_to_most_copy24(void *alsa, void *most, unsigned int bytes)
{
 swap_copy24(most, alsa, bytes);
}
