
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct afs_vlserver_list {int nr_servers; TYPE_1__* servers; } ;
struct afs_net {int dummy; } ;
struct afs_addr_list {int nr_addrs; } ;
typedef int __be32 ;
struct TYPE_4__ {int addresses; } ;
struct TYPE_3__ {TYPE_2__* server; } ;


 int AFS_MAX_ADDRESSES ;
 int AFS_VL_PORT ;
 int AF_INET ;
 int AF_INET6 ;
 int EDESTADDRREQ ;
 int EINVAL ;
 int ENOMEM ;
 struct afs_vlserver_list* ERR_PTR (int) ;
 int _debug (char*,unsigned int,int ) ;
 int _enter (char*,int,int,char const*,char) ;
 int _leave (char*,...) ;
 struct afs_addr_list* afs_alloc_addrlist (unsigned int,unsigned short,int ) ;
 TYPE_2__* afs_alloc_vlserver (char*,int,int ) ;
 struct afs_vlserver_list* afs_alloc_vlserver_list (int) ;
 int afs_merge_fs_addr4 (struct afs_addr_list*,int ,unsigned int) ;
 int afs_merge_fs_addr6 (struct afs_addr_list*,int *,unsigned int) ;
 int afs_put_addrlist (struct afs_addr_list*) ;
 int afs_put_vlserverlist (struct afs_net*,struct afs_vlserver_list*) ;
 scalar_t__ in4_pton (char const*,int,int *,int,char const**) ;
 scalar_t__ in6_pton (char const*,int,int *,int,char const**) ;
 scalar_t__ isdigit (char const) ;
 char* memchr (char const*,char,int) ;
 int rcu_assign_pointer (int ,struct afs_addr_list*) ;

struct afs_vlserver_list *afs_parse_text_addrs(struct afs_net *net,
            const char *text, size_t len,
            char delim,
            unsigned short service,
            unsigned short port)
{
 struct afs_vlserver_list *vllist;
 struct afs_addr_list *alist;
 const char *p, *end = text + len;
 const char *problem;
 unsigned int nr = 0;
 int ret = -ENOMEM;

 _enter("%*.*s,%c", (int)len, (int)len, text, delim);

 if (!len) {
  _leave(" = -EDESTADDRREQ [empty]");
  return ERR_PTR(-EDESTADDRREQ);
 }

 if (delim == ':' && (memchr(text, ',', len) || !memchr(text, '.', len)))
  delim = ',';


 p = text;
 do {
  if (!*p) {
   problem = "nul";
   goto inval;
  }
  if (*p == delim)
   continue;
  nr++;
  if (*p == '[') {
   p++;
   if (p == end) {
    problem = "brace1";
    goto inval;
   }
   p = memchr(p, ']', end - p);
   if (!p) {
    problem = "brace2";
    goto inval;
   }
   p++;
   if (p >= end)
    break;
  }

  p = memchr(p, delim, end - p);
  if (!p)
   break;
  p++;
 } while (p < end);

 _debug("%u/%u addresses", nr, AFS_MAX_ADDRESSES);

 vllist = afs_alloc_vlserver_list(1);
 if (!vllist)
  return ERR_PTR(-ENOMEM);

 vllist->nr_servers = 1;
 vllist->servers[0].server = afs_alloc_vlserver("<dummy>", 7, AFS_VL_PORT);
 if (!vllist->servers[0].server)
  goto error_vl;

 alist = afs_alloc_addrlist(nr, service, AFS_VL_PORT);
 if (!alist)
  goto error;


 p = text;
 do {
  const char *q, *stop;
  unsigned int xport = port;
  __be32 x[4];
  int family;

  if (*p == delim) {
   p++;
   continue;
  }

  if (*p == '[') {
   p++;
   q = memchr(p, ']', end - p);
  } else {
   for (q = p; q < end; q++)
    if (*q == '+' || *q == delim)
     break;
  }

  if (in4_pton(p, q - p, (u8 *)&x[0], -1, &stop)) {
   family = AF_INET;
  } else if (in6_pton(p, q - p, (u8 *)x, -1, &stop)) {
   family = AF_INET6;
  } else {
   problem = "family";
   goto bad_address;
  }

  p = q;
  if (stop != p) {
   problem = "nostop";
   goto bad_address;
  }

  if (q < end && *q == ']')
   p++;

  if (p < end) {
   if (*p == '+') {

    xport = 0;
    p++;
    if (p >= end || !isdigit(*p)) {
     problem = "port";
     goto bad_address;
    }
    do {
     xport *= 10;
     xport += *p - '0';
     if (xport > 65535) {
      problem = "pval";
      goto bad_address;
     }
     p++;
    } while (p < end && isdigit(*p));
   } else if (*p == delim) {
    p++;
   } else {
    problem = "weird";
    goto bad_address;
   }
  }

  if (family == AF_INET)
   afs_merge_fs_addr4(alist, x[0], xport);
  else
   afs_merge_fs_addr6(alist, x, xport);

 } while (p < end);

 rcu_assign_pointer(vllist->servers[0].server->addresses, alist);
 _leave(" = [nr %u]", alist->nr_addrs);
 return vllist;

inval:
 _leave(" = -EINVAL [%s %zu %*.*s]",
        problem, p - text, (int)len, (int)len, text);
 return ERR_PTR(-EINVAL);
bad_address:
 _leave(" = -EINVAL [%s %zu %*.*s]",
        problem, p - text, (int)len, (int)len, text);
 ret = -EINVAL;
error:
 afs_put_addrlist(alist);
error_vl:
 afs_put_vlserverlist(net, vllist);
 return ERR_PTR(ret);
}
