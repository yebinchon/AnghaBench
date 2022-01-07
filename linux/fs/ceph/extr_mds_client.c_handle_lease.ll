; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_handle_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_handle_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ceph_mds_session = type { i32, i32, i32, i32, i32 }
%struct.ceph_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ceph_mds_lease* }
%struct.ceph_mds_lease = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ceph_dentry_info = type { i32, i32, i32, i32, i32, %struct.ceph_mds_session* }
%struct.ceph_vino = type { %struct.inode*, i32 }
%struct.qstr = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"handle_lease from mds%d\0A\00", align 1
@CEPH_NOSNAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"handle_lease %s, ino %llx %p %.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"handle_lease no inode %llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"no parent dentry on inode %p\0A\00", align 1
@CEPH_MDS_LEASE_REVOKE_ACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"corrupt lease message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_mds_session*, %struct.ceph_msg*)* @handle_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_lease(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1, %struct.ceph_msg* %2) #0 {
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca %struct.ceph_msg*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.ceph_dentry_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ceph_mds_lease*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ceph_vino, align 8
  %16 = alloca %struct.qstr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %5, align 8
  store %struct.ceph_msg* %2, %struct.ceph_msg** %6, align 8
  %19 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %20 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %7, align 8
  %24 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %28 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %29, align 8
  store %struct.ceph_mds_lease* %30, %struct.ceph_mds_lease** %13, align 8
  store i32 0, i32* %17, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %34 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 20
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  br label %245

40:                                               ; preds = %3
  %41 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %13, align 8
  %42 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.inode* @le64_to_cpu(i32 %43)
  %45 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %15, i32 0, i32 0
  store %struct.inode* %44, %struct.inode** %45, align 8
  %46 = load i32, i32* @CEPH_NOSNAP, align 4
  %47 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %15, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %13, align 8
  %49 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %13, align 8
  %53 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %52, i64 1
  %54 = call i32 @get_unaligned_le32(%struct.ceph_mds_lease* %53)
  %55 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %57 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add i64 20, %63
  %65 = icmp ult i64 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %40
  br label %245

67:                                               ; preds = %40
  %68 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %13, align 8
  %69 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %68, i64 1
  %70 = bitcast %struct.ceph_mds_lease* %69 to i8*
  %71 = getelementptr i8, i8* %70, i64 4
  %72 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  store i8* %71, i8** %72, align 8
  %73 = load %struct.super_block*, %struct.super_block** %7, align 8
  %74 = bitcast %struct.ceph_vino* %15 to { %struct.inode*, i32 }*
  %75 = getelementptr inbounds { %struct.inode*, i32 }, { %struct.inode*, i32 }* %74, i32 0, i32 0
  %76 = load %struct.inode*, %struct.inode** %75, align 8
  %77 = getelementptr inbounds { %struct.inode*, i32 }, { %struct.inode*, i32 }* %74, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.inode* @ceph_find_inode(%struct.super_block* %73, %struct.inode* %76, i32 %78)
  store %struct.inode* %79, %struct.inode** %8, align 8
  %80 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %13, align 8
  %81 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ceph_lease_op_name(i32 %82)
  %84 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %15, i32 0, i32 0
  %85 = load %struct.inode*, %struct.inode** %84, align 8
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %83, %struct.inode* %85, %struct.inode* %86, i32 %88, i8* %90)
  %92 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %93 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %92, i32 0, i32 1
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %96 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = icmp ne %struct.inode* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %67
  %102 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %15, i32 0, i32 0
  %103 = load %struct.inode*, %struct.inode** %102, align 8
  %104 = ptrtoint %struct.inode* %103 to i32
  %105 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  br label %229

106:                                              ; preds = %67
  %107 = load %struct.inode*, %struct.inode** %8, align 8
  %108 = call %struct.dentry* @d_find_alias(%struct.inode* %107)
  store %struct.dentry* %108, %struct.dentry** %9, align 8
  %109 = load %struct.dentry*, %struct.dentry** %9, align 8
  %110 = icmp ne %struct.dentry* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.inode*, %struct.inode** %8, align 8
  %113 = ptrtoint %struct.inode* %112 to i32
  %114 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = call i32 @WARN_ON(i32 1)
  br label %229

116:                                              ; preds = %106
  %117 = load %struct.dentry*, %struct.dentry** %9, align 8
  %118 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @full_name_hash(%struct.dentry* %117, i8* %119, i32 %121)
  %123 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 2
  store i32 %122, i32* %123, align 8
  %124 = load %struct.dentry*, %struct.dentry** %9, align 8
  %125 = call %struct.dentry* @d_lookup(%struct.dentry* %124, %struct.qstr* %16)
  store %struct.dentry* %125, %struct.dentry** %10, align 8
  %126 = load %struct.dentry*, %struct.dentry** %9, align 8
  %127 = call i32 @dput(%struct.dentry* %126)
  %128 = load %struct.dentry*, %struct.dentry** %10, align 8
  %129 = icmp ne %struct.dentry* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %116
  br label %229

131:                                              ; preds = %116
  %132 = load %struct.dentry*, %struct.dentry** %10, align 8
  %133 = getelementptr inbounds %struct.dentry, %struct.dentry* %132, i32 0, i32 0
  %134 = call i32 @spin_lock(i32* %133)
  %135 = load %struct.dentry*, %struct.dentry** %10, align 8
  %136 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %135)
  store %struct.ceph_dentry_info* %136, %struct.ceph_dentry_info** %11, align 8
  %137 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %13, align 8
  %138 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  switch i32 %139, label %219 [
    i32 128, label %140
    i32 129, label %164
  ]

140:                                              ; preds = %131
  %141 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %142 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %141, i32 0, i32 5
  %143 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %142, align 8
  %144 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %145 = icmp eq %struct.ceph_mds_session* %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  %147 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %148 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @ceph_seq_cmp(i32 %149, i32 %150)
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %155 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @cpu_to_le32(i32 %156)
  %158 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %13, align 8
  %159 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %153, %146
  %161 = load %struct.dentry*, %struct.dentry** %10, align 8
  %162 = call i32 @__ceph_mdsc_drop_dentry_lease(%struct.dentry* %161)
  br label %163

163:                                              ; preds = %160, %140
  store i32 1, i32* %17, align 4
  br label %219

164:                                              ; preds = %131
  %165 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %166 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %165, i32 0, i32 5
  %167 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %166, align 8
  %168 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %169 = icmp eq %struct.ceph_mds_session* %167, %168
  br i1 %169, label %170, label %218

170:                                              ; preds = %164
  %171 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %172 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %175 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %173, %176
  br i1 %177, label %178, label %218

178:                                              ; preds = %170
  %179 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %180 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %218

183:                                              ; preds = %178
  %184 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %185 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %218

188:                                              ; preds = %183
  %189 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %13, align 8
  %190 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le32_to_cpu(i32 %191)
  %193 = call i64 @msecs_to_jiffies(i32 %192)
  store i64 %193, i64* %18, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %196 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  %197 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %198 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %18, align 8
  %202 = add i64 %200, %201
  %203 = trunc i64 %202 to i32
  %204 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %205 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  %206 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %207 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* %18, align 8
  %211 = lshr i64 %210, 1
  %212 = add i64 %209, %211
  %213 = trunc i64 %212 to i32
  %214 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %215 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %11, align 8
  %217 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %216, i32 0, i32 0
  store i32 0, i32* %217, align 8
  br label %218

218:                                              ; preds = %188, %183, %178, %170, %164
  br label %219

219:                                              ; preds = %131, %218, %163
  %220 = load %struct.dentry*, %struct.dentry** %10, align 8
  %221 = getelementptr inbounds %struct.dentry, %struct.dentry* %220, i32 0, i32 0
  %222 = call i32 @spin_unlock(i32* %221)
  %223 = load %struct.dentry*, %struct.dentry** %10, align 8
  %224 = call i32 @dput(%struct.dentry* %223)
  %225 = load i32, i32* %17, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %219
  br label %239

228:                                              ; preds = %219
  br label %229

229:                                              ; preds = %228, %130, %111, %101
  %230 = load i32, i32* @CEPH_MDS_LEASE_REVOKE_ACK, align 4
  %231 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %13, align 8
  %232 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 4
  %233 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %234 = call i32 @ceph_msg_get(%struct.ceph_msg* %233)
  %235 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %236 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %235, i32 0, i32 2
  %237 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %238 = call i32 @ceph_con_send(i32* %236, %struct.ceph_msg* %237)
  br label %239

239:                                              ; preds = %229, %227
  %240 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %241 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %240, i32 0, i32 1
  %242 = call i32 @mutex_unlock(i32* %241)
  %243 = load %struct.inode*, %struct.inode** %8, align 8
  %244 = call i32 @ceph_async_iput(%struct.inode* %243)
  br label %249

245:                                              ; preds = %66, %39
  %246 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %247 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %248 = call i32 @ceph_msg_dump(%struct.ceph_msg* %247)
  br label %249

249:                                              ; preds = %245, %239
  ret void
}

declare dso_local i32 @dout(i8*, i32, ...) #1

declare dso_local %struct.inode* @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @get_unaligned_le32(%struct.ceph_mds_lease*) #1

declare dso_local %struct.inode* @ceph_find_inode(%struct.super_block*, %struct.inode*, i32) #1

declare dso_local i32 @ceph_lease_op_name(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @full_name_hash(%struct.dentry*, i8*, i32) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry*) #1

declare dso_local i32 @ceph_seq_cmp(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @__ceph_mdsc_drop_dentry_lease(%struct.dentry*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_msg_get(%struct.ceph_msg*) #1

declare dso_local i32 @ceph_con_send(i32*, %struct.ceph_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ceph_async_iput(%struct.inode*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ceph_msg_dump(%struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
