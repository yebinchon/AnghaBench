
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {int private_data; } ;


 int f_midi_free (int ) ;

__attribute__((used)) static void f_midi_rmidi_free(struct snd_rawmidi *rmidi)
{
 f_midi_free(rmidi->private_data);
}
