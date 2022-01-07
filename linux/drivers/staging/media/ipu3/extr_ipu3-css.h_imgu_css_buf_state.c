
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_css_buffer {int state; } ;
typedef enum imgu_css_buffer_state { ____Placeholder_imgu_css_buffer_state } imgu_css_buffer_state ;



__attribute__((used)) static inline enum imgu_css_buffer_state
imgu_css_buf_state(struct imgu_css_buffer *b)
{
 return b->state;
}
