
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef unsigned int s16 ;


 int USB_MAX_FRAME_NUMBER ;

__attribute__((used)) static inline s16
frame_diff(u16 left, u16 right)
{
 return ((unsigned) (left - right)) % (USB_MAX_FRAME_NUMBER + 1);
}
