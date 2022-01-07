
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 scalar_t__ send_first_frame (int *) ;

__attribute__((used)) static void send_first_frame_cb(void *ignore)
{
 if (send_first_frame(((void*)0)))
  WARN_ON(1);
}
