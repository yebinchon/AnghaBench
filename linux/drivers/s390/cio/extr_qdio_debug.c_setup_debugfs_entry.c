
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_q {int nr; int * debugfs_q; TYPE_1__* irq_ptr; scalar_t__ is_input_q; } ;
struct TYPE_2__ {int debugfs_dev; } ;


 scalar_t__ IS_ERR (int *) ;
 int QDIO_DEBUGFS_NAME_LEN ;
 int * debugfs_create_file (char*,int,int ,struct qdio_q*,int *) ;
 int qstat_fops ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static void setup_debugfs_entry(struct qdio_q *q)
{
 char name[QDIO_DEBUGFS_NAME_LEN];

 snprintf(name, QDIO_DEBUGFS_NAME_LEN, "%s_%d",
   q->is_input_q ? "input" : "output",
   q->nr);
 q->debugfs_q = debugfs_create_file(name, 0444,
    q->irq_ptr->debugfs_dev, q, &qstat_fops);
 if (IS_ERR(q->debugfs_q))
  q->debugfs_q = ((void*)0);
}
