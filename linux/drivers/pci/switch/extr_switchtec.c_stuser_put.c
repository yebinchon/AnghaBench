
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchtec_user {int kref; } ;


 int kref_put (int *,int ) ;
 int stuser_free ;

__attribute__((used)) static void stuser_put(struct switchtec_user *stuser)
{
 kref_put(&stuser->kref, stuser_free);
}
