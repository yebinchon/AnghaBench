
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int * ops; } ;
struct hvc_struct {scalar_t__ vtermno; int data; int outbuf_size; char* outbuf; int index; int next; struct hv_ops const* ops; int lock; int tty_resize; TYPE_1__ port; } ;
struct hv_ops {int dummy; } ;


 size_t ALIGN (int,int) ;
 int ENOMEM ;
 struct hvc_struct* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int MAX_NR_HVC_CONSOLES ;
 scalar_t__ atomic_inc_not_zero (int *) ;
 struct hv_ops const** cons_ops ;
 int hvc_check_console (int) ;
 int hvc_init () ;
 int hvc_needs_init ;
 int hvc_port_ops ;
 int hvc_set_winsz ;
 int hvc_structs ;
 int hvc_structs_mutex ;
 struct hvc_struct* kzalloc (int,int ) ;
 int last_hvc ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;
 int tty_port_init (TYPE_1__*) ;
 scalar_t__* vtermnos ;

struct hvc_struct *hvc_alloc(uint32_t vtermno, int data,
        const struct hv_ops *ops,
        int outbuf_size)
{
 struct hvc_struct *hp;
 int i;


 if (atomic_inc_not_zero(&hvc_needs_init)) {
  int err = hvc_init();
  if (err)
   return ERR_PTR(err);
 }

 hp = kzalloc(ALIGN(sizeof(*hp), sizeof(long)) + outbuf_size,
   GFP_KERNEL);
 if (!hp)
  return ERR_PTR(-ENOMEM);

 hp->vtermno = vtermno;
 hp->data = data;
 hp->ops = ops;
 hp->outbuf_size = outbuf_size;
 hp->outbuf = &((char *)hp)[ALIGN(sizeof(*hp), sizeof(long))];

 tty_port_init(&hp->port);
 hp->port.ops = &hvc_port_ops;

 INIT_WORK(&hp->tty_resize, hvc_set_winsz);
 spin_lock_init(&hp->lock);
 mutex_lock(&hvc_structs_mutex);





 for (i=0; i < MAX_NR_HVC_CONSOLES; i++)
  if (vtermnos[i] == hp->vtermno &&
      cons_ops[i] == hp->ops)
   break;


 if (i >= MAX_NR_HVC_CONSOLES)
  i = ++last_hvc;

 hp->index = i;
 cons_ops[i] = ops;
 vtermnos[i] = vtermno;

 list_add_tail(&(hp->next), &hvc_structs);
 mutex_unlock(&hvc_structs_mutex);


 hvc_check_console(i);

 return hp;
}
