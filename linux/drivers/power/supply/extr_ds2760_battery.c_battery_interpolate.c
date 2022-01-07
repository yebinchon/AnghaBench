
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int battery_interpolate(int array[], int temp)
{
 int index, dt;

 if (temp <= 0)
  return array[0];
 if (temp >= 40)
  return array[4];

 index = temp / 10;
 dt = temp % 10;

 return array[index] + (((array[index + 1] - array[index]) * dt) / 10);
}
