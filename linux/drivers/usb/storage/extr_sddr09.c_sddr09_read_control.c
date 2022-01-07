
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int CONTROL_SHIFT ;
 int sddr09_read21 (struct us_data*,unsigned long,unsigned int,int ,unsigned char*,int) ;
 int usb_stor_dbg (struct us_data*,char*,unsigned long,unsigned int) ;

__attribute__((used)) static int
sddr09_read_control(struct us_data *us,
  unsigned long address,
  unsigned int blocks,
  unsigned char *content,
  int use_sg) {

 usb_stor_dbg(us, "Read control address %lu, blocks %d\n",
       address, blocks);

 return sddr09_read21(us, address, blocks,
        CONTROL_SHIFT, content, use_sg);
}
