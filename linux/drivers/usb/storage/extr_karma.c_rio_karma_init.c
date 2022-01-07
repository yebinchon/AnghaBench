
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int extra_destructor; struct karma_data* extra; } ;
struct karma_data {int in_storage; int recv; } ;


 int GFP_NOIO ;
 int RIO_ENTER_STORAGE ;
 int RIO_RECV_LEN ;
 int kfree (struct karma_data*) ;
 int kmalloc (int ,int ) ;
 struct karma_data* kzalloc (int,int ) ;
 int rio_karma_destructor ;
 int rio_karma_send_command (int ,struct us_data*) ;

__attribute__((used)) static int rio_karma_init(struct us_data *us)
{
 int ret = 0;
 struct karma_data *data = kzalloc(sizeof(struct karma_data), GFP_NOIO);

 if (!data)
  goto out;

 data->recv = kmalloc(RIO_RECV_LEN, GFP_NOIO);
 if (!data->recv) {
  kfree(data);
  goto out;
 }

 us->extra = data;
 us->extra_destructor = rio_karma_destructor;
 ret = rio_karma_send_command(RIO_ENTER_STORAGE, us);
 data->in_storage = (ret == 0);
out:
 return ret;
}
