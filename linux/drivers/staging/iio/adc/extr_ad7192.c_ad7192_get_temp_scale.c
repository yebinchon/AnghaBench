
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int ad7192_get_temp_scale(bool unipolar)
{
 return unipolar ? 2815 * 2 : 2815;
}
