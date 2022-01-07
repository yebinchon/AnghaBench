
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHROMA_QUANT_OFF ;
 int LUMA_QUANT_OFF ;
 int chroma_q_table ;
 int jpeg_scale_quant_table (unsigned char*,int ,int) ;
 int luma_q_table ;

__attribute__((used)) static void jpeg_set_quality(unsigned char *buffer, int quality)
{
 int scale;





 if (quality < 50)
  scale = 5000 / quality;
 else
  scale = 200 - 2 * quality;

 jpeg_scale_quant_table(buffer + LUMA_QUANT_OFF,
          luma_q_table, scale);
 jpeg_scale_quant_table(buffer + CHROMA_QUANT_OFF,
          chroma_q_table, scale);
}
