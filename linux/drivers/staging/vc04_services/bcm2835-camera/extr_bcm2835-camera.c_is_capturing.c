
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * camera_port; } ;
struct bm2835_mmal_dev {TYPE_2__** component; TYPE_1__ capture; } ;
struct TYPE_4__ {int * output; } ;


 size_t CAM_PORT_CAPTURE ;
 size_t COMP_CAMERA ;

__attribute__((used)) static inline bool is_capturing(struct bm2835_mmal_dev *dev)
{
 return dev->capture.camera_port ==
     &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE];
}
