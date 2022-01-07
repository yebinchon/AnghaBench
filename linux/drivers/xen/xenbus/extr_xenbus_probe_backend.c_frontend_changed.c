
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_watch {int dummy; } ;


 int xenbus_otherend_changed (struct xenbus_watch*,char const*,char const*,int ) ;

__attribute__((used)) static void frontend_changed(struct xenbus_watch *watch,
        const char *path, const char *token)
{
 xenbus_otherend_changed(watch, path, token, 0);
}
