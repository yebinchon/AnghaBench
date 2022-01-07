
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int beacon_timeout_ms ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static
ssize_t beacon_timeout_ms_show(struct class *class,
    struct class_attribute *attr,
    char *buf)
{
 return scnprintf(buf, PAGE_SIZE, "%lu\n", beacon_timeout_ms);
}
