
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_midi {int * card; } ;


 int snd_card_free (int *) ;

__attribute__((used)) static inline void f_midi_unregister_card(struct f_midi *midi)
{
 if (midi->card) {
  snd_card_free(midi->card);
  midi->card = ((void*)0);
 }
}
