
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_css_queue {int css_fmt; } ;



__attribute__((used)) static bool imgu_css_queue_enabled(struct imgu_css_queue *q)
{
 return q->css_fmt;
}
