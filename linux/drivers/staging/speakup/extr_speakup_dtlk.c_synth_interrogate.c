
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct synth_settings {int serial_number; int* rom_version; int eob; int reverb; int articulation; int free_ram; int ext_dict_status; int ext_dict_loaded; int expression; int tone; int volume; int speed; int pitch; int formant_freq; int punc_level; int mode; } ;
struct spk_synth {int dummy; } ;


 int synth_immediate (struct spk_synth*,char*) ;
 char synth_read_tts () ;

__attribute__((used)) static struct synth_settings *synth_interrogate(struct spk_synth *synth)
{
 u_char *t;
 static char buf[sizeof(struct synth_settings) + 1];
 int total, i;
 static struct synth_settings status;

 synth_immediate(synth, "\x18\x01?");
 for (total = 0, i = 0; i < 50; i++) {
  buf[total] = synth_read_tts();
  if (total > 2 && buf[total] == 0x7f)
   break;
  if (total < sizeof(struct synth_settings))
   total++;
 }
 t = buf;

 status.serial_number = t[0] + t[1] * 256;
 t += 2;
 for (i = 0; *t != '\r'; t++) {
  status.rom_version[i] = *t;
  if (i < sizeof(status.rom_version) - 1)
   i++;
 }
 status.rom_version[i] = 0;
 t++;
 status.mode = *t++;
 status.punc_level = *t++;
 status.formant_freq = *t++;
 status.pitch = *t++;
 status.speed = *t++;
 status.volume = *t++;
 status.tone = *t++;
 status.expression = *t++;
 status.ext_dict_loaded = *t++;
 status.ext_dict_status = *t++;
 status.free_ram = *t++;
 status.articulation = *t++;
 status.reverb = *t++;
 status.eob = *t++;
 return &status;
}
