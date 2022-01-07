
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 unsigned int ENCODER_STREAM_OFFSET ;
 int SIZE_MACROBLOCK ;
 unsigned int SZ_256 ;
 unsigned int round_up (unsigned int,int) ;

__attribute__((used)) static unsigned int estimate_stream_size(unsigned int width,
      unsigned int height)
{
 unsigned int offset = ENCODER_STREAM_OFFSET;
 unsigned int num_blocks = DIV_ROUND_UP(width, SIZE_MACROBLOCK) *
     DIV_ROUND_UP(height, SIZE_MACROBLOCK);
 unsigned int pcm_size = SZ_256;
 unsigned int partition_table = SZ_256;

 return round_up(offset + num_blocks * pcm_size + partition_table, 32);
}
