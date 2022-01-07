
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sl811 {int debug_file; } ;


 int S_IRUGO ;
 int debugfs_create_file (char*,int ,int ,struct sl811*,int *) ;
 int sl811h_debug_fops ;
 int usb_debug_root ;

__attribute__((used)) static void create_debug_file(struct sl811 *sl811)
{
 sl811->debug_file = debugfs_create_file("sl811h", S_IRUGO,
      usb_debug_root, sl811,
      &sl811h_debug_fops);
}
