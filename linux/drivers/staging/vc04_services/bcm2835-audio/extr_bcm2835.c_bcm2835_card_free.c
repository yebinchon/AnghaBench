
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snd_card_free (void*) ;

__attribute__((used)) static void bcm2835_card_free(void *data)
{
 snd_card_free(data);
}
