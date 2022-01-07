
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_lnode {TYPE_1__* fcfinfo; int fcf_lsthead; void* fcf_flowid; void* vnp_flowid; int sm; } ;
struct csio_hw {int dummy; } ;
struct csio_fcf_info {int dummy; } ;
struct TYPE_2__ {int kref; } ;


 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 void* CSIO_INVALID_IDX ;
 int EINVAL ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ csio_fdmi_enable ;
 int csio_init_state (int *,int ) ;
 scalar_t__ csio_is_npiv_ln (struct csio_lnode*) ;
 scalar_t__ csio_is_root_ln (struct csio_lnode*) ;
 int csio_ln_err (struct csio_lnode*,char*) ;
 scalar_t__ csio_ln_fdmi_init (struct csio_lnode*) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int csio_lns_uninit ;
 struct csio_lnode* csio_parent_lnode (struct csio_lnode*) ;
 struct csio_lnode* csio_root_lnode (struct csio_lnode*) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 void* kzalloc (int,int ) ;
 int n_err_nomem ;

__attribute__((used)) static int
csio_ln_init(struct csio_lnode *ln)
{
 int rv = -EINVAL;
 struct csio_lnode *rln, *pln;
 struct csio_hw *hw = csio_lnode_to_hw(ln);

 csio_init_state(&ln->sm, csio_lns_uninit);
 ln->vnp_flowid = CSIO_INVALID_IDX;
 ln->fcf_flowid = CSIO_INVALID_IDX;

 if (csio_is_root_ln(ln)) {



  ln->fcfinfo = kzalloc(sizeof(struct csio_fcf_info), GFP_KERNEL);
  if (!ln->fcfinfo) {
   csio_ln_err(ln, "Failed to alloc FCF record\n");
   CSIO_INC_STATS(hw, n_err_nomem);
   goto err;
  }

  INIT_LIST_HEAD(&ln->fcf_lsthead);
  kref_init(&ln->fcfinfo->kref);

  if (csio_fdmi_enable && csio_ln_fdmi_init(ln))
   goto err;

 } else {





  rln = csio_root_lnode(ln);

  if (csio_is_npiv_ln(ln)) {

   pln = csio_parent_lnode(ln);
   kref_get(&pln->fcfinfo->kref);
   ln->fcfinfo = pln->fcfinfo;
  } else {

   ln->fcfinfo = kzalloc(sizeof(struct csio_fcf_info),
        GFP_KERNEL);
   if (!ln->fcfinfo) {
    csio_ln_err(ln, "Failed to alloc FCF info\n");
    CSIO_INC_STATS(hw, n_err_nomem);
    goto err;
   }

   kref_init(&ln->fcfinfo->kref);

   if (csio_fdmi_enable && csio_ln_fdmi_init(ln))
    goto err;
  }

 }

 return 0;
err:
 return rv;
}
