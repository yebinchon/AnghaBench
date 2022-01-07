
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int cachetag; } ;


 int CACHETAG_LEN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int jiffies ;
 int kmalloc (int ,int ) ;
 int scnprintf (int ,int ,char*,int ) ;

__attribute__((used)) static
int v9fs_random_cachetag(struct v9fs_session_info *v9ses)
{
 v9ses->cachetag = kmalloc(CACHETAG_LEN, GFP_KERNEL);
 if (!v9ses->cachetag)
  return -ENOMEM;

 return scnprintf(v9ses->cachetag, CACHETAG_LEN, "%lu", jiffies);
}
