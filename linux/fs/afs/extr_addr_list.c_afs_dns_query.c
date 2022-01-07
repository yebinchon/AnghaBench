
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct afs_vlserver_list {int dummy; } ;
struct afs_cell {TYPE_1__* net; int name_len; int name; } ;
struct TYPE_2__ {int net; } ;


 int AFS_VL_PORT ;
 int ENOMEM ;
 struct afs_vlserver_list* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct afs_vlserver_list*) ;
 int PTR_ERR (struct afs_vlserver_list*) ;
 int VL_SERVICE ;
 int _enter (char*,int ) ;
 int _leave (char*,int) ;
 struct afs_vlserver_list* afs_extract_vlserver_list (struct afs_cell*,char*,int) ;
 struct afs_vlserver_list* afs_parse_text_addrs (TYPE_1__*,char*,int,char,int ,int ) ;
 int dns_query (int ,char*,int ,int ,char*,char**,scalar_t__*,int) ;
 int kfree (char*) ;
 scalar_t__ ktime_get_real_seconds () ;
 int pr_err (char*,int ) ;

struct afs_vlserver_list *afs_dns_query(struct afs_cell *cell, time64_t *_expiry)
{
 struct afs_vlserver_list *vllist;
 char *result = ((void*)0);
 int ret;

 _enter("%s", cell->name);

 ret = dns_query(cell->net->net, "afsdb", cell->name, cell->name_len,
   "srv=1", &result, _expiry, 1);
 if (ret < 0) {
  _leave(" = %d [dns]", ret);
  return ERR_PTR(ret);
 }

 if (*_expiry == 0)
  *_expiry = ktime_get_real_seconds() + 60;

 if (ret > 1 && result[0] == 0)
  vllist = afs_extract_vlserver_list(cell, result, ret);
 else
  vllist = afs_parse_text_addrs(cell->net, result, ret, ',',
           VL_SERVICE, AFS_VL_PORT);
 kfree(result);
 if (IS_ERR(vllist) && vllist != ERR_PTR(-ENOMEM))
  pr_err("Failed to parse DNS data %ld\n", PTR_ERR(vllist));

 return vllist;
}
