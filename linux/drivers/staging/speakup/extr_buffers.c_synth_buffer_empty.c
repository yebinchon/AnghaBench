
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ buff_in ;
 scalar_t__ buff_out ;

int synth_buffer_empty(void)
{
 return (buff_in == buff_out);
}
