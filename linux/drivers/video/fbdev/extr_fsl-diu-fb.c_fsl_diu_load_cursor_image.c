
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct mfb_info {struct fsl_diu_data* parent; } ;
struct fsl_diu_data {int * cursor; } ;
struct fb_info {struct mfb_info* par; } ;
typedef int __le16 ;


 int DIV_ROUND_UP (unsigned int,int) ;
 int MAX_CURS ;
 int be32_to_cpup (void const*) ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static void fsl_diu_load_cursor_image(struct fb_info *info,
 const void *image, uint16_t bg, uint16_t fg,
 unsigned int width, unsigned int height)
{
 struct mfb_info *mfbi = info->par;
 struct fsl_diu_data *data = mfbi->parent;
 __le16 *cursor = data->cursor;
 __le16 _fg = cpu_to_le16(fg);
 __le16 _bg = cpu_to_le16(bg);
 unsigned int h, w;

 for (h = 0; h < height; h++) {
  uint32_t mask = 1 << 31;
  uint32_t line = be32_to_cpup(image);

  for (w = 0; w < width; w++) {
   cursor[w] = (line & mask) ? _fg : _bg;
   mask >>= 1;
  }

  cursor += MAX_CURS;
  image += DIV_ROUND_UP(width, 8);
 }
}
