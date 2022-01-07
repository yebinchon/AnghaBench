
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amvdec_session {int height; int width; } ;


 int get_output_size (int ,int ) ;

u32 amvdec_get_output_size(struct amvdec_session *sess)
{
 return get_output_size(sess->width, sess->height);
}
