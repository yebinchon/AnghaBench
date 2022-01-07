
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_cap {int kref; } ;


 int cap_kref_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void put_cap(struct gb_cap *cap)
{
 kref_put(&cap->kref, cap_kref_release);
}
