
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goldfish_audio {scalar_t__ reg_base; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void audio_write(const struct goldfish_audio *data,
   int addr, unsigned int x)
{
 writel(x, data->reg_base + addr);
}
