
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct f_audio {int cs; } ;
struct TYPE_6__ {int control; int list; } ;
struct TYPE_5__ {int list; } ;
struct TYPE_4__ {int* data; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 size_t UAC__CUR ;
 size_t UAC__MAX ;
 size_t UAC__MIN ;
 size_t UAC__RES ;
 TYPE_3__ feature_unit ;
 int list_add (int *,int *) ;
 TYPE_2__ mute_control ;
 TYPE_1__ volume_control ;

__attribute__((used)) static int control_selector_init(struct f_audio *audio)
{
 INIT_LIST_HEAD(&audio->cs);
 list_add(&feature_unit.list, &audio->cs);

 INIT_LIST_HEAD(&feature_unit.control);
 list_add(&mute_control.list, &feature_unit.control);
 list_add(&volume_control.list, &feature_unit.control);

 volume_control.data[UAC__CUR] = 0xffc0;
 volume_control.data[UAC__MIN] = 0xe3a0;
 volume_control.data[UAC__MAX] = 0xfff0;
 volume_control.data[UAC__RES] = 0x0030;

 return 0;
}
