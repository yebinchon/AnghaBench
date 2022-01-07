
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SYNTH_BUF_SIZE ;
 scalar_t__ buff_in ;
 scalar_t__ buff_out ;

__attribute__((used)) static int synth_buffer_free(void)
{
 int chars_free;

 if (buff_in >= buff_out)
  chars_free = SYNTH_BUF_SIZE - (buff_in - buff_out);
 else
  chars_free = buff_out - buff_in;
 return chars_free;
}
