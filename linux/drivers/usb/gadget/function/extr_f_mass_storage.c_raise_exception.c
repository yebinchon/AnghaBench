
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {int dummy; } ;
typedef enum fsg_state { ____Placeholder_fsg_state } fsg_state ;


 int __raise_exception (struct fsg_common*,int,int *) ;

__attribute__((used)) static void raise_exception(struct fsg_common *common, enum fsg_state new_state)
{
 __raise_exception(common, new_state, ((void*)0));
}
