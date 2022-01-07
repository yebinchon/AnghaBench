
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_remote_node_context {int * user_cookie; int (* user_callback ) (int *) ;} ;


 int stub1 (int *) ;

__attribute__((used)) static void sci_remote_node_context_notify_user(
 struct sci_remote_node_context *rnc)
{
 if (rnc->user_callback != ((void*)0)) {
  (*rnc->user_callback)(rnc->user_cookie);

  rnc->user_callback = ((void*)0);
  rnc->user_cookie = ((void*)0);
 }
}
