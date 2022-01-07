
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int put_device (void*) ;

__attribute__((used)) static void scsi_seq_stop(struct seq_file *sfile, void *v)
{
 put_device(v);
}
