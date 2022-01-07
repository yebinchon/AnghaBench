
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_screen {int ** lines; } ;
typedef int char32_t ;


 int memcpy (int *,int *,unsigned int) ;
 int memset32 (int *,char,unsigned int) ;

__attribute__((used)) static void vc_uniscr_copy_area(struct uni_screen *dst,
    unsigned int dst_cols,
    unsigned int dst_rows,
    struct uni_screen *src,
    unsigned int src_cols,
    unsigned int src_top_row,
    unsigned int src_bot_row)
{
 unsigned int dst_row = 0;

 if (!dst)
  return;

 while (src_top_row < src_bot_row) {
  char32_t *src_line = src->lines[src_top_row];
  char32_t *dst_line = dst->lines[dst_row];

  memcpy(dst_line, src_line, src_cols * sizeof(char32_t));
  if (dst_cols - src_cols)
   memset32(dst_line + src_cols, ' ', dst_cols - src_cols);
  src_top_row++;
  dst_row++;
 }
 while (dst_row < dst_rows) {
  char32_t *dst_line = dst->lines[dst_row];

  memset32(dst_line, ' ', dst_cols);
  dst_row++;
 }
}
