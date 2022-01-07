
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goldfish_audio {scalar_t__ reg_base; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned int audio_read(const struct goldfish_audio *data, int addr)
{
 return readl(data->reg_base + addr);
}
