
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gb_camera {int dummy; } ;


 int gb_camera_capture (struct gb_camera*,int ,unsigned int,unsigned int,size_t,void const*) ;

__attribute__((used)) static int gb_camera_op_capture(void *priv, u32 request_id,
    unsigned int streams, unsigned int num_frames,
    size_t settings_size, const void *settings)
{
 struct gb_camera *gcam = priv;

 return gb_camera_capture(gcam, request_id, streams, num_frames,
     settings_size, settings);
}
