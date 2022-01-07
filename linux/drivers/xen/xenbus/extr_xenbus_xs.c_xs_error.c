
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 int kfree (char*) ;

__attribute__((used)) static int xs_error(char *reply)
{
 if (IS_ERR(reply))
  return PTR_ERR(reply);
 kfree(reply);
 return 0;
}
