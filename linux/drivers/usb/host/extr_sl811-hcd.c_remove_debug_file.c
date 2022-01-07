
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sl811 {int debug_file; } ;


 int debugfs_remove (int ) ;

__attribute__((used)) static void remove_debug_file(struct sl811 *sl811)
{
 debugfs_remove(sl811->debug_file);
}
