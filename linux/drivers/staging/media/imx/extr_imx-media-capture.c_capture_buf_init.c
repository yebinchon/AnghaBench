
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int dummy; } ;
struct imx_media_buffer {int list; } ;


 int INIT_LIST_HEAD (int *) ;
 struct imx_media_buffer* to_imx_media_vb (struct vb2_buffer*) ;

__attribute__((used)) static int capture_buf_init(struct vb2_buffer *vb)
{
 struct imx_media_buffer *buf = to_imx_media_vb(vb);

 INIT_LIST_HEAD(&buf->list);

 return 0;
}
