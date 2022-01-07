
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 short BLACK ;
 int DIFFUSING_MATRIX_HEIGHT ;
 int DIFFUSING_MATRIX_WIDTH ;
 short WHITE ;
 char** diffusing_matrix ;

__attribute__((used)) static void iterate_diffusion_matrix(u32 xres, u32 yres, int x,
         int y, signed short *convert_buf,
         signed short pixel, signed short error)
{
 u16 i, j;


 for (i = 0; i < DIFFUSING_MATRIX_WIDTH; ++i)

  for (j = 0; j < DIFFUSING_MATRIX_HEIGHT; ++j) {
   signed short *write_pos;
   signed char coeff;


   if (x + i < 0 || x + i >= xres || y + j >= yres)
    continue;
   write_pos = &convert_buf[(y + j) * xres + x + i];
   coeff = diffusing_matrix[i][j];
   if (-1 == coeff) {

    *write_pos = pixel;
   } else {
    signed short p = *write_pos + error * coeff;

    if (p > WHITE)
     p = WHITE;
    if (p < BLACK)
     p = BLACK;
    *write_pos = p;
   }
  }
}
