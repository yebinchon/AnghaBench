
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct monwrite_hdr {int datalen; int mod_level; int release; int version; int record_num; int applid; } ;
struct appldata_product_id {int mod_lvl; int release_nr; int version_nr; int record_nr; int prod_fn; int prod_nr; } ;
struct appldata_parameter_list {int mod_lvl; int release_nr; int version_nr; int record_nr; int prod_fn; int prod_nr; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int appldata_asm (struct appldata_product_id*,struct appldata_product_id*,int,void*,int ) ;
 int kfree (struct appldata_product_id*) ;
 struct appldata_product_id* kmalloc (int,int ) ;
 int memcpy (int ,char*,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int monwrite_diag(struct monwrite_hdr *myhdr, char *buffer, int fcn)
{
 struct appldata_parameter_list *parm_list;
 struct appldata_product_id *id;
 int rc;

 id = kmalloc(sizeof(*id), GFP_KERNEL);
 parm_list = kmalloc(sizeof(*parm_list), GFP_KERNEL);
 rc = -ENOMEM;
 if (!id || !parm_list)
  goto out;
 memcpy(id->prod_nr, "LNXAPPL", 7);
 id->prod_fn = myhdr->applid;
 id->record_nr = myhdr->record_num;
 id->version_nr = myhdr->version;
 id->release_nr = myhdr->release;
 id->mod_lvl = myhdr->mod_level;
 rc = appldata_asm(parm_list, id, fcn,
     (void *) buffer, myhdr->datalen);
 if (rc <= 0)
  goto out;
 pr_err("Writing monitor data failed with rc=%i\n", rc);
 rc = (rc == 5) ? -EPERM : -EINVAL;
out:
 kfree(id);
 kfree(parm_list);
 return rc;
}
