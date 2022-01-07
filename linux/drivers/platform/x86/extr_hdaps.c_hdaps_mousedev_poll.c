
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {struct input_dev* input; } ;
struct input_dev {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int HDAPS_PORT_XPOS ;
 int HDAPS_PORT_YPOS ;
 scalar_t__ __hdaps_read_pair (int ,int ,int*,int*) ;
 int hdaps_mtx ;
 int input_report_abs (struct input_dev*,int ,scalar_t__) ;
 int input_sync (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rest_x ;
 scalar_t__ rest_y ;

__attribute__((used)) static void hdaps_mousedev_poll(struct input_polled_dev *dev)
{
 struct input_dev *input_dev = dev->input;
 int x, y;

 mutex_lock(&hdaps_mtx);

 if (__hdaps_read_pair(HDAPS_PORT_XPOS, HDAPS_PORT_YPOS, &x, &y))
  goto out;

 input_report_abs(input_dev, ABS_X, x - rest_x);
 input_report_abs(input_dev, ABS_Y, y - rest_y);
 input_sync(input_dev);

out:
 mutex_unlock(&hdaps_mtx);
}
