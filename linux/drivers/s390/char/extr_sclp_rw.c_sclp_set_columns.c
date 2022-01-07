
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_buffer {unsigned short columns; scalar_t__ current_length; int * current_line; } ;


 int sclp_finalize_mto (struct sclp_buffer*) ;

void
sclp_set_columns(struct sclp_buffer *buffer, unsigned short columns)
{
 buffer->columns = columns;
 if (buffer->current_line != ((void*)0) &&
     buffer->current_length > buffer->columns)
  sclp_finalize_mto(buffer);
}
