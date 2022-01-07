
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gb_camera {int dummy; } ;


 int gb_camera_flush (struct gb_camera*,int *) ;

__attribute__((used)) static int gb_camera_op_flush(void *priv, u32 *request_id)
{
 struct gb_camera *gcam = priv;

 return gb_camera_flush(gcam, request_id);
}
