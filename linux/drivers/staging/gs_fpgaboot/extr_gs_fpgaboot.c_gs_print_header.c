
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpgaimage {int lendata; int time; int date; int part; int filename; } ;


 int pr_info (char*,int ) ;

__attribute__((used)) static void gs_print_header(struct fpgaimage *fimage)
{
 pr_info("file: %s\n", fimage->filename);
 pr_info("part: %s\n", fimage->part);
 pr_info("date: %s\n", fimage->date);
 pr_info("time: %s\n", fimage->time);
 pr_info("lendata: %d\n", fimage->lendata);
}
