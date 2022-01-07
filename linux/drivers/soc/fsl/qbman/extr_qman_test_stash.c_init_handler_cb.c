
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 scalar_t__ init_handler (void*) ;

__attribute__((used)) static void init_handler_cb(void *h)
{
 if (init_handler(h))
  WARN_ON(1);
}
