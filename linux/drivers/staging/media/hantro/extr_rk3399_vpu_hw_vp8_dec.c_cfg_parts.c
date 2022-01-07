
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vb2_v4l2_buffer {int vb2_buf; } ;
struct v4l2_ctrl_vp8_frame_header {int first_part_header_bits; int first_part_size; int num_dct_parts; int* dct_part_sizes; } ;
struct hantro_dev {int dummy; } ;
struct hantro_ctx {struct hantro_dev* dev; } ;
typedef int dma_addr_t ;


 int DEC_8190_ALIGN_MASK ;
 int VDPU_REG_VP8_ADDR_CTRL_PART ;
 scalar_t__ VP8_FRAME_IS_KEY_FRAME (struct v4l2_ctrl_vp8_frame_header const*) ;
 struct vb2_v4l2_buffer* hantro_get_src_buf (struct hantro_ctx*) ;
 int hantro_reg_write (struct hantro_dev*,int *,int) ;
 int vb2_dma_contig_plane_dma_addr (int *,int ) ;
 int vdpu_write_relaxed (struct hantro_dev*,int,int ) ;
 int * vp8_dec_dct_base ;
 int * vp8_dec_dct_start_bits ;
 int vp8_dec_mb_aligned_data_len ;
 int vp8_dec_mb_start_bit ;
 int vp8_dec_num_dct_partitions ;
 int vp8_dec_stream_len ;

__attribute__((used)) static void cfg_parts(struct hantro_ctx *ctx,
        const struct v4l2_ctrl_vp8_frame_header *hdr)
{
 struct hantro_dev *vpu = ctx->dev;
 struct vb2_v4l2_buffer *vb2_src;
 u32 first_part_offset = VP8_FRAME_IS_KEY_FRAME(hdr) ? 10 : 3;
 u32 mb_size, mb_offset_bytes, mb_offset_bits, mb_start_bits;
 u32 dct_size_part_size, dct_part_offset;
 dma_addr_t src_dma;
 u32 dct_part_total_len = 0;
 u32 count = 0;
 unsigned int i;

 vb2_src = hantro_get_src_buf(ctx);
 src_dma = vb2_dma_contig_plane_dma_addr(&vb2_src->vb2_buf, 0);
 mb_offset_bits = first_part_offset * 8 +
    hdr->first_part_header_bits + 8;
 mb_offset_bytes = mb_offset_bits / 8;
 mb_start_bits = mb_offset_bits -
   (mb_offset_bytes & (~DEC_8190_ALIGN_MASK)) * 8;
 mb_size = hdr->first_part_size -
    (mb_offset_bytes - first_part_offset) +
    (mb_offset_bytes & DEC_8190_ALIGN_MASK);


 vdpu_write_relaxed(vpu, (mb_offset_bytes & (~DEC_8190_ALIGN_MASK)) +
      src_dma, VDPU_REG_VP8_ADDR_CTRL_PART);
 hantro_reg_write(vpu, &vp8_dec_mb_start_bit, mb_start_bits);
 hantro_reg_write(vpu, &vp8_dec_mb_aligned_data_len, mb_size);
 dct_size_part_size = (hdr->num_dct_parts - 1) * 3;
 dct_part_offset = first_part_offset + hdr->first_part_size;
 for (i = 0; i < hdr->num_dct_parts; i++)
  dct_part_total_len += hdr->dct_part_sizes[i];
 dct_part_total_len += dct_size_part_size;
 dct_part_total_len += (dct_part_offset & DEC_8190_ALIGN_MASK);


 hantro_reg_write(vpu, &vp8_dec_num_dct_partitions,
    hdr->num_dct_parts - 1);


 hantro_reg_write(vpu, &vp8_dec_stream_len, dct_part_total_len);


 for (i = 0; i < hdr->num_dct_parts; i++) {
  u32 byte_offset = dct_part_offset + dct_size_part_size + count;
  u32 base_addr = byte_offset + src_dma;

  hantro_reg_write(vpu, &vp8_dec_dct_base[i],
     base_addr & (~DEC_8190_ALIGN_MASK));

  hantro_reg_write(vpu, &vp8_dec_dct_start_bits[i],
     (byte_offset & DEC_8190_ALIGN_MASK) * 8);

  count += hdr->dct_part_sizes[i];
 }
}
