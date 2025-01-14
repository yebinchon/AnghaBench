
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_mode; int i_sb; int i_ino; } ;
struct TYPE_10__ {int dentry; } ;
struct file {TYPE_3__ f_path; struct ceph_dir_file_info* private_data; } ;
struct dir_context {int pos; } ;
struct dentry {int dummy; } ;
struct ceph_vino {void* snap; void* ino; } ;
struct ceph_mds_reply_info_parsed {int dir_nr; struct ceph_mds_reply_dir_entry* dir_entries; scalar_t__ dir_end; scalar_t__ hash_order; TYPE_4__* dir_dir; scalar_t__ dir_complete; } ;
struct TYPE_8__ {int flags; void* frag; void* offset_hash; } ;
struct TYPE_9__ {TYPE_1__ readdir; } ;
struct ceph_mds_request {unsigned int r_direct_hash; scalar_t__ r_dir_release_cnt; scalar_t__ r_dir_ordered_cnt; int r_readdir_cache_idx; int r_readdir_offset; struct ceph_mds_reply_info_parsed r_reply_info; int r_req_flags; int r_dentry; struct inode* r_inode; TYPE_2__ r_args; int r_path2; int r_inode_drop; int r_direct_mode; } ;
struct TYPE_13__ {TYPE_5__* in; } ;
struct ceph_mds_reply_dir_entry {int offset; char* name; int name_len; TYPE_6__ inode; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_inode_info {int i_ceph_lock; int i_ordered_count; int i_release_count; int i_shared_gen; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;
struct TYPE_14__ {int flags; } ;
struct ceph_dir_file_info {scalar_t__ dir_release_count; scalar_t__ dir_ordered_count; int readdir_cache_idx; int next_offset; unsigned int frag; TYPE_7__ file_info; int * last_name; struct ceph_mds_request* last_readdir; } ;
typedef int loff_t ;
typedef int ino_t ;
struct TYPE_12__ {int snapid; int ino; int mode; } ;
struct TYPE_11__ {int frag; } ;


 int BUG_ON (int) ;
 int CEPH_CAP_FILE_EXCL ;
 int CEPH_CAP_FILE_SHARED ;
 int CEPH_F_ATEND ;
 int CEPH_MDS_OP_LSSNAP ;
 int CEPH_MDS_OP_READDIR ;
 int CEPH_MDS_R_DID_PREPOPULATE ;
 int CEPH_MDS_R_DIRECT_IS_HASH ;
 int CEPH_READDIR_REPLY_BITFLAGS ;
 scalar_t__ CEPH_SNAPDIR ;
 int DCACHE ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ceph_mds_request*) ;
 int NOASYNCREADDIR ;
 int PTR_ERR (struct ceph_mds_request*) ;
 int USE_AUTH_MDS ;
 scalar_t__ __ceph_caps_issued_mask (struct ceph_inode_info*,int ,int) ;
 scalar_t__ __ceph_dir_is_complete_ordered (struct ceph_inode_info*) ;
 int __ceph_dir_set_complete (struct ceph_inode_info*,scalar_t__,scalar_t__) ;
 int __dcache_readdir (struct file*,struct dir_context*,int) ;
 int __set_bit (int ,int *) ;
 scalar_t__ atomic64_read (int *) ;
 int atomic_read (int *) ;
 int ceph_alloc_readdir_reply_buffer (struct ceph_mds_request*,struct inode*) ;
 unsigned int ceph_choose_frag (struct ceph_inode_info*,unsigned int,int *,int *) ;
 scalar_t__ ceph_frag_is_leftmost (unsigned int) ;
 int ceph_frag_is_rightmost (unsigned int) ;
 unsigned int ceph_frag_next (unsigned int) ;
 unsigned int ceph_frag_value (unsigned int) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct ceph_fs_client* ceph_inode_to_client (struct inode*) ;
 void* ceph_make_fpos (unsigned int,int,int) ;
 struct ceph_mds_request* ceph_mdsc_create_request (struct ceph_mds_client*,int,int ) ;
 int ceph_mdsc_do_request (struct ceph_mds_client*,int *,struct ceph_mds_request*) ;
 int ceph_mdsc_put_request (struct ceph_mds_request*) ;
 scalar_t__ ceph_snap (struct inode*) ;
 scalar_t__ ceph_test_mount_opt (struct ceph_fs_client*,int ) ;
 int ceph_translate_ino (int ,int ) ;
 int ceph_vino_to_ino (struct ceph_vino) ;
 int ceph_vinop (struct inode*) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (unsigned int) ;
 int dget (int ) ;
 int dir_emit (struct dir_context*,char*,int,int ,int) ;
 int dout (char*,...) ;
 struct inode* file_inode (struct file*) ;
 unsigned int fpos_frag (int) ;
 unsigned int fpos_hash (int) ;
 int fpos_off (int) ;
 int i_size_write (struct inode*,int) ;
 int ihold (struct inode*) ;
 scalar_t__ is_hash_order (int) ;
 int kfree (int *) ;
 int kstrdup (int *,int ) ;
 int le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 scalar_t__ need_send_readdir (struct ceph_dir_file_info*,int) ;
 int note_last_dentry (struct ceph_dir_file_info*,char*,int,unsigned int) ;
 int parent_ino (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ceph_readdir(struct file *file, struct dir_context *ctx)
{
 struct ceph_dir_file_info *dfi = file->private_data;
 struct inode *inode = file_inode(file);
 struct ceph_inode_info *ci = ceph_inode(inode);
 struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
 struct ceph_mds_client *mdsc = fsc->mdsc;
 int i;
 int err;
 unsigned frag = -1;
 struct ceph_mds_reply_info_parsed *rinfo;

 dout("readdir %p file %p pos %llx\n", inode, file, ctx->pos);
 if (dfi->file_info.flags & CEPH_F_ATEND)
  return 0;


 if (ctx->pos == 0) {
  dout("readdir off 0 -> '.'\n");
  if (!dir_emit(ctx, ".", 1,
       ceph_translate_ino(inode->i_sb, inode->i_ino),
       inode->i_mode >> 12))
   return 0;
  ctx->pos = 1;
 }
 if (ctx->pos == 1) {
  ino_t ino = parent_ino(file->f_path.dentry);
  dout("readdir off 1 -> '..'\n");
  if (!dir_emit(ctx, "..", 2,
       ceph_translate_ino(inode->i_sb, ino),
       inode->i_mode >> 12))
   return 0;
  ctx->pos = 2;
 }


 spin_lock(&ci->i_ceph_lock);
 if (ceph_test_mount_opt(fsc, DCACHE) &&
     !ceph_test_mount_opt(fsc, NOASYNCREADDIR) &&
     ceph_snap(inode) != CEPH_SNAPDIR &&
     __ceph_dir_is_complete_ordered(ci) &&
     __ceph_caps_issued_mask(ci, CEPH_CAP_FILE_SHARED, 1)) {
  int shared_gen = atomic_read(&ci->i_shared_gen);
  spin_unlock(&ci->i_ceph_lock);
  err = __dcache_readdir(file, ctx, shared_gen);
  if (err != -EAGAIN)
   return err;
 } else {
  spin_unlock(&ci->i_ceph_lock);
 }


more:

 if (need_send_readdir(dfi, ctx->pos)) {
  struct ceph_mds_request *req;
  int op = ceph_snap(inode) == CEPH_SNAPDIR ?
   CEPH_MDS_OP_LSSNAP : CEPH_MDS_OP_READDIR;


  if (dfi->last_readdir) {
   ceph_mdsc_put_request(dfi->last_readdir);
   dfi->last_readdir = ((void*)0);
  }

  if (is_hash_order(ctx->pos)) {


   if (frag == (unsigned)-1)
    frag = ceph_choose_frag(ci, fpos_hash(ctx->pos),
       ((void*)0), ((void*)0));
  } else {
   frag = fpos_frag(ctx->pos);
  }

  dout("readdir fetching %llx.%llx frag %x offset '%s'\n",
       ceph_vinop(inode), frag, dfi->last_name);
  req = ceph_mdsc_create_request(mdsc, op, USE_AUTH_MDS);
  if (IS_ERR(req))
   return PTR_ERR(req);
  err = ceph_alloc_readdir_reply_buffer(req, inode);
  if (err) {
   ceph_mdsc_put_request(req);
   return err;
  }

  req->r_direct_mode = USE_AUTH_MDS;
  if (op == CEPH_MDS_OP_READDIR) {
   req->r_direct_hash = ceph_frag_value(frag);
   __set_bit(CEPH_MDS_R_DIRECT_IS_HASH, &req->r_req_flags);
   req->r_inode_drop = CEPH_CAP_FILE_EXCL;
  }
  if (dfi->last_name) {
   req->r_path2 = kstrdup(dfi->last_name, GFP_KERNEL);
   if (!req->r_path2) {
    ceph_mdsc_put_request(req);
    return -ENOMEM;
   }
  } else if (is_hash_order(ctx->pos)) {
   req->r_args.readdir.offset_hash =
    cpu_to_le32(fpos_hash(ctx->pos));
  }

  req->r_dir_release_cnt = dfi->dir_release_count;
  req->r_dir_ordered_cnt = dfi->dir_ordered_count;
  req->r_readdir_cache_idx = dfi->readdir_cache_idx;
  req->r_readdir_offset = dfi->next_offset;
  req->r_args.readdir.frag = cpu_to_le32(frag);
  req->r_args.readdir.flags =
    cpu_to_le16(CEPH_READDIR_REPLY_BITFLAGS);

  req->r_inode = inode;
  ihold(inode);
  req->r_dentry = dget(file->f_path.dentry);
  err = ceph_mdsc_do_request(mdsc, ((void*)0), req);
  if (err < 0) {
   ceph_mdsc_put_request(req);
   return err;
  }
  dout("readdir got and parsed readdir result=%d on "
       "frag %x, end=%d, complete=%d, hash_order=%d\n",
       err, frag,
       (int)req->r_reply_info.dir_end,
       (int)req->r_reply_info.dir_complete,
       (int)req->r_reply_info.hash_order);

  rinfo = &req->r_reply_info;
  if (le32_to_cpu(rinfo->dir_dir->frag) != frag) {
   frag = le32_to_cpu(rinfo->dir_dir->frag);
   if (!rinfo->hash_order) {
    dfi->next_offset = req->r_readdir_offset;

    ctx->pos = ceph_make_fpos(frag,
         dfi->next_offset,
         0);
   }
  }

  dfi->frag = frag;
  dfi->last_readdir = req;

  if (test_bit(CEPH_MDS_R_DID_PREPOPULATE, &req->r_req_flags)) {
   dfi->readdir_cache_idx = req->r_readdir_cache_idx;
   if (dfi->readdir_cache_idx < 0) {

    dfi->dir_ordered_count = 0;
   } else if (ceph_frag_is_leftmost(frag) &&
       dfi->next_offset == 2) {


    dfi->dir_release_count = req->r_dir_release_cnt;
    dfi->dir_ordered_count = req->r_dir_ordered_cnt;
   }
  } else {
   dout("readdir !did_prepopulate\n");

   dfi->readdir_cache_idx = -1;

   dfi->dir_release_count = 0;
  }


  if (rinfo->dir_nr > 0) {
   struct ceph_mds_reply_dir_entry *rde =
     rinfo->dir_entries + (rinfo->dir_nr-1);
   unsigned next_offset = req->r_reply_info.dir_end ?
     2 : (fpos_off(rde->offset) + 1);
   err = note_last_dentry(dfi, rde->name, rde->name_len,
            next_offset);
   if (err)
    return err;
  } else if (req->r_reply_info.dir_end) {
   dfi->next_offset = 2;

  }
 }

 rinfo = &dfi->last_readdir->r_reply_info;
 dout("readdir frag %x num %d pos %llx chunk first %llx\n",
      dfi->frag, rinfo->dir_nr, ctx->pos,
      rinfo->dir_nr ? rinfo->dir_entries[0].offset : 0LL);

 i = 0;

 if (rinfo->dir_nr > 0) {
  int step, nr = rinfo->dir_nr;
  while (nr > 0) {
   step = nr >> 1;
   if (rinfo->dir_entries[i + step].offset < ctx->pos) {
    i += step + 1;
    nr -= step + 1;
   } else {
    nr = step;
   }
  }
 }
 for (; i < rinfo->dir_nr; i++) {
  struct ceph_mds_reply_dir_entry *rde = rinfo->dir_entries + i;
  struct ceph_vino vino;
  ino_t ino;
  u32 ftype;

  BUG_ON(rde->offset < ctx->pos);

  ctx->pos = rde->offset;
  dout("readdir (%d/%d) -> %llx '%.*s' %p\n",
       i, rinfo->dir_nr, ctx->pos,
       rde->name_len, rde->name, &rde->inode.in);

  BUG_ON(!rde->inode.in);
  ftype = le32_to_cpu(rde->inode.in->mode) >> 12;
  vino.ino = le64_to_cpu(rde->inode.in->ino);
  vino.snap = le64_to_cpu(rde->inode.in->snapid);
  ino = ceph_vino_to_ino(vino);

  if (!dir_emit(ctx, rde->name, rde->name_len,
         ceph_translate_ino(inode->i_sb, ino), ftype)) {
   dout("filldir stopping us...\n");
   return 0;
  }
  ctx->pos++;
 }

 ceph_mdsc_put_request(dfi->last_readdir);
 dfi->last_readdir = ((void*)0);

 if (dfi->next_offset > 2) {
  frag = dfi->frag;
  goto more;
 }


 if (!ceph_frag_is_rightmost(dfi->frag)) {
  frag = ceph_frag_next(dfi->frag);
  if (is_hash_order(ctx->pos)) {
   loff_t new_pos = ceph_make_fpos(ceph_frag_value(frag),
       dfi->next_offset, 1);
   if (new_pos > ctx->pos)
    ctx->pos = new_pos;

  } else {
   ctx->pos = ceph_make_fpos(frag, dfi->next_offset,
       0);
   kfree(dfi->last_name);
   dfi->last_name = ((void*)0);
  }
  dout("readdir next frag is %x\n", frag);
  goto more;
 }
 dfi->file_info.flags |= CEPH_F_ATEND;






 if (atomic64_read(&ci->i_release_count) ==
     dfi->dir_release_count) {
  spin_lock(&ci->i_ceph_lock);
  if (dfi->dir_ordered_count ==
    atomic64_read(&ci->i_ordered_count)) {
   dout(" marking %p complete and ordered\n", inode);


   BUG_ON(dfi->readdir_cache_idx < 0);
   i_size_write(inode, dfi->readdir_cache_idx *
         sizeof(struct dentry*));
  } else {
   dout(" marking %p complete\n", inode);
  }
  __ceph_dir_set_complete(ci, dfi->dir_release_count,
     dfi->dir_ordered_count);
  spin_unlock(&ci->i_ceph_lock);
 }

 dout("readdir %p file %p done.\n", inode, file);
 return 0;
}
