
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hantro_dev {int dummy; } ;


 size_t H1_JPEG_QUANT_TABLE_COUNT ;
 int H1_REG_JPEG_CHROMA_QUAT (size_t) ;
 int H1_REG_JPEG_LUMA_QUAT (size_t) ;
 size_t get_unaligned_be32 (unsigned char*) ;
 int vepu_write_relaxed (struct hantro_dev*,size_t,int ) ;

__attribute__((used)) static void
hantro_h1_jpeg_enc_set_qtable(struct hantro_dev *vpu,
         unsigned char *luma_qtable,
         unsigned char *chroma_qtable)
{
 u32 reg, i;

 for (i = 0; i < H1_JPEG_QUANT_TABLE_COUNT; i++) {
  reg = get_unaligned_be32(&luma_qtable[i]);
  vepu_write_relaxed(vpu, reg, H1_REG_JPEG_LUMA_QUAT(i));

  reg = get_unaligned_be32(&chroma_qtable[i]);
  vepu_write_relaxed(vpu, reg, H1_REG_JPEG_CHROMA_QUAT(i));
 }
}
