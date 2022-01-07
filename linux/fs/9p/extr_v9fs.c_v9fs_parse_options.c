
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int substring_t ;
struct v9fs_session_info {int afid; int debug; int cache; char* cachetag; long session_lock_timeout; char* uname; char* aname; int nodev; int flags; void* uid; int dfltgid; void* dfltuid; } ;


 int CACHE_FSCACHE ;
 int CACHE_LOOSE ;
 int CACHE_MMAP ;
 int CACHE_NONE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 long HZ ;
 int MAX_OPT_ARGS ;
 int P9_DEBUG_ERROR ;
 long P9_LOCK_TIMEOUT ;
 int V9FS_ACCESS_ANY ;
 int V9FS_ACCESS_CLIENT ;
 int V9FS_ACCESS_MASK ;
 int V9FS_ACCESS_SINGLE ;
 int V9FS_ACCESS_USER ;
 int V9FS_POSIX_ACL ;
 int current_user_ns () ;
 int get_cache_mode (char*) ;
 int gid_valid (int ) ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int make_kgid (int ,int) ;
 void* make_kuid (int ,int) ;
 int match_int (int *,int*) ;
 void* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 int p9_debug (int ,char*) ;
 int p9_debug_level ;
 int pr_info (char*,char*) ;
 int simple_strtoul (char*,char**,int) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (void*) ;

__attribute__((used)) static int v9fs_parse_options(struct v9fs_session_info *v9ses, char *opts)
{
 char *options, *tmp_options;
 substring_t args[MAX_OPT_ARGS];
 char *p;
 int option = 0;
 char *s, *e;
 int ret = 0;


 v9ses->afid = ~0;
 v9ses->debug = 0;
 v9ses->cache = CACHE_NONE;



 v9ses->session_lock_timeout = P9_LOCK_TIMEOUT;

 if (!opts)
  return 0;

 tmp_options = kstrdup(opts, GFP_KERNEL);
 if (!tmp_options) {
  ret = -ENOMEM;
  goto fail_option_alloc;
 }
 options = tmp_options;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token, r;
  if (!*p)
   continue;
  token = match_token(p, tokens, args);
  switch (token) {
  case 137:
   r = match_int(&args[0], &option);
   if (r < 0) {
    p9_debug(P9_DEBUG_ERROR,
      "integer field, but no integer?\n");
    ret = r;
   } else {
    v9ses->debug = option;



   }
   break;

  case 135:
   r = match_int(&args[0], &option);
   if (r < 0) {
    p9_debug(P9_DEBUG_ERROR,
      "integer field, but no integer?\n");
    ret = r;
    continue;
   }
   v9ses->dfltuid = make_kuid(current_user_ns(), option);
   if (!uid_valid(v9ses->dfltuid)) {
    p9_debug(P9_DEBUG_ERROR,
      "uid field, but not a uid?\n");
    ret = -EINVAL;
   }
   break;
  case 136:
   r = match_int(&args[0], &option);
   if (r < 0) {
    p9_debug(P9_DEBUG_ERROR,
      "integer field, but no integer?\n");
    ret = r;
    continue;
   }
   v9ses->dfltgid = make_kgid(current_user_ns(), option);
   if (!gid_valid(v9ses->dfltgid)) {
    p9_debug(P9_DEBUG_ERROR,
      "gid field, but not a gid?\n");
    ret = -EINVAL;
   }
   break;
  case 141:
   r = match_int(&args[0], &option);
   if (r < 0) {
    p9_debug(P9_DEBUG_ERROR,
      "integer field, but no integer?\n");
    ret = r;
   } else {
    v9ses->afid = option;
   }
   break;
  case 128:
   kfree(v9ses->uname);
   v9ses->uname = match_strdup(&args[0]);
   if (!v9ses->uname) {
    ret = -ENOMEM;
    goto free_and_return;
   }
   break;
  case 129:
   kfree(v9ses->aname);
   v9ses->aname = match_strdup(&args[0]);
   if (!v9ses->aname) {
    ret = -ENOMEM;
    goto free_and_return;
   }
   break;
  case 131:
   v9ses->nodev = 1;
   break;
  case 139:
   v9ses->cache = CACHE_LOOSE;
   break;
  case 134:
   v9ses->cache = CACHE_FSCACHE;
   break;
  case 132:
   v9ses->cache = CACHE_MMAP;
   break;
  case 138:
   break;
  case 140:
   s = match_strdup(&args[0]);
   if (!s) {
    ret = -ENOMEM;
    p9_debug(P9_DEBUG_ERROR,
      "problem allocating copy of cache arg\n");
    goto free_and_return;
   }
   r = get_cache_mode(s);
   if (r < 0)
    ret = r;
   else
    v9ses->cache = r;

   kfree(s);
   break;

  case 142:
   s = match_strdup(&args[0]);
   if (!s) {
    ret = -ENOMEM;
    p9_debug(P9_DEBUG_ERROR,
      "problem allocating copy of access arg\n");
    goto free_and_return;
   }

   v9ses->flags &= ~V9FS_ACCESS_MASK;
   if (strcmp(s, "user") == 0)
    v9ses->flags |= V9FS_ACCESS_USER;
   else if (strcmp(s, "any") == 0)
    v9ses->flags |= V9FS_ACCESS_ANY;
   else if (strcmp(s, "client") == 0) {
    v9ses->flags |= V9FS_ACCESS_CLIENT;
   } else {
    uid_t uid;
    v9ses->flags |= V9FS_ACCESS_SINGLE;
    uid = simple_strtoul(s, &e, 10);
    if (*e != '\0') {
     ret = -EINVAL;
     pr_info("Unknown access argument %s\n",
      s);
     kfree(s);
     continue;
    }
    v9ses->uid = make_kuid(current_user_ns(), uid);
    if (!uid_valid(v9ses->uid)) {
     ret = -EINVAL;
     pr_info("Unknown uid %s\n", s);
    }
   }

   kfree(s);
   break;

  case 130:



   p9_debug(P9_DEBUG_ERROR,
     "Not defined CONFIG_9P_FS_POSIX_ACL. Ignoring posixacl option\n");

   break;

  case 133:
   r = match_int(&args[0], &option);
   if (r < 0) {
    p9_debug(P9_DEBUG_ERROR,
      "integer field, but no integer?\n");
    ret = r;
    continue;
   }
   if (option < 1) {
    p9_debug(P9_DEBUG_ERROR,
      "locktimeout must be a greater than zero integer.\n");
    ret = -EINVAL;
    continue;
   }
   v9ses->session_lock_timeout = (long)option * HZ;
   break;

  default:
   continue;
  }
 }

free_and_return:
 kfree(tmp_options);
fail_option_alloc:
 return ret;
}
