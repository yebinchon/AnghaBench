
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int dummy; } ;
struct cedrus_buffer {int dummy; } ;


 int to_vb2_v4l2_buffer (struct vb2_buffer const*) ;
 struct cedrus_buffer* vb2_v4l2_to_cedrus_buffer (int ) ;

__attribute__((used)) static inline struct cedrus_buffer *
vb2_to_cedrus_buffer(const struct vb2_buffer *p)
{
 return vb2_v4l2_to_cedrus_buffer(to_vb2_v4l2_buffer(p));
}
