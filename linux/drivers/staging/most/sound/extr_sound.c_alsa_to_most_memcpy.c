
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,unsigned int) ;

__attribute__((used)) static void alsa_to_most_memcpy(void *alsa, void *most, unsigned int bytes)
{
 memcpy(most, alsa, bytes);
}
