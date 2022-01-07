
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct gaudio {int dummy; } ;
struct f_audio {struct gaudio card; } ;
struct TYPE_4__ {int ** tSamFreq; void* bNrChannels; } ;
struct TYPE_3__ {void* bNrChannels; } ;


 TYPE_2__ as_type_i_desc ;
 TYPE_1__ input_terminal_desc ;
 int memcpy (int *,int*,int) ;
 void* u_audio_get_playback_channels (struct gaudio*) ;
 int u_audio_get_playback_rate (struct gaudio*) ;

__attribute__((used)) static void f_audio_build_desc(struct f_audio *audio)
{
 struct gaudio *card = &audio->card;
 u8 *sam_freq;
 int rate;


 input_terminal_desc.bNrChannels = u_audio_get_playback_channels(card);
 as_type_i_desc.bNrChannels = u_audio_get_playback_channels(card);


 rate = u_audio_get_playback_rate(card);
 sam_freq = as_type_i_desc.tSamFreq[0];
 memcpy(sam_freq, &rate, 3);



 return;
}
