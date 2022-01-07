; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_10__, %struct.ceph_dir_file_info* }
%struct.TYPE_10__ = type { i32 }
%struct.ceph_dir_file_info = type { i64, i64, i32, i32, i32, %struct.TYPE_14__, i32*, %struct.ceph_mds_request* }
%struct.TYPE_14__ = type { i32 }
%struct.ceph_mds_request = type { i32, i64, i64, i32, i32, %struct.ceph_mds_reply_info_parsed, i32, i32, %struct.inode*, %struct.TYPE_9__, i32, i32, i32 }
%struct.ceph_mds_reply_info_parsed = type { i32, %struct.ceph_mds_reply_dir_entry*, i64, i64, %struct.TYPE_11__*, i64 }
%struct.ceph_mds_reply_dir_entry = type { i32, i8*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.inode = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8*, i8* }
%struct.dir_context = type { i32 }
%struct.ceph_inode_info = type { i32, i32, i32, i32 }
%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_vino = type { i8*, i8* }

@.str = private unnamed_addr constant [29 x i8] c"readdir %p file %p pos %llx\0A\00", align 1
@CEPH_F_ATEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"readdir off 0 -> '.'\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"readdir off 1 -> '..'\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DCACHE = common dso_local global i32 0, align 4
@NOASYNCREADDIR = common dso_local global i32 0, align 4
@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CEPH_MDS_OP_LSSNAP = common dso_local global i32 0, align 4
@CEPH_MDS_OP_READDIR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"readdir fetching %llx.%llx frag %x offset '%s'\0A\00", align 1
@USE_AUTH_MDS = common dso_local global i32 0, align 4
@CEPH_MDS_R_DIRECT_IS_HASH = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_EXCL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_READDIR_REPLY_BITFLAGS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [89 x i8] c"readdir got and parsed readdir result=%d on frag %x, end=%d, complete=%d, hash_order=%d\0A\00", align 1
@CEPH_MDS_R_DID_PREPOPULATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"readdir !did_prepopulate\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"readdir frag %x num %d pos %llx chunk first %llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"readdir (%d/%d) -> %llx '%.*s' %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"filldir stopping us...\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"readdir next frag is %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c" marking %p complete and ordered\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c" marking %p complete\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"readdir %p file %p done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @ceph_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.ceph_dir_file_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ceph_inode_info*, align 8
  %9 = alloca %struct.ceph_fs_client*, align 8
  %10 = alloca %struct.ceph_mds_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ceph_mds_request*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ceph_mds_reply_dir_entry*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ceph_mds_reply_dir_entry*, align 8
  %24 = alloca %struct.ceph_vino, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 1
  %30 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %29, align 8
  store %struct.ceph_dir_file_info* %30, %struct.ceph_dir_file_info** %6, align 8
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = call %struct.inode* @file_inode(%struct.file* %31)
  store %struct.inode* %32, %struct.inode** %7, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %33)
  store %struct.ceph_inode_info* %34, %struct.ceph_inode_info** %8, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %35)
  store %struct.ceph_fs_client* %36, %struct.ceph_fs_client** %9, align 8
  %37 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %9, align 8
  %38 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %37, i32 0, i32 0
  %39 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %38, align 8
  store %struct.ceph_mds_client* %39, %struct.ceph_mds_client** %10, align 8
  store i32 -1, i32* %13, align 4
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %43 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.inode* %40, %struct.file* %41, i32 %44)
  %46 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %47 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CEPH_F_ATEND, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %818

54:                                               ; preds = %2
  %55 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %56 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ceph_translate_ino(i32 %64, i32 %67)
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 12
  %73 = call i32 @dir_emit(%struct.dir_context* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %68, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %818

76:                                               ; preds = %59
  %77 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %78 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %54
  %80 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %81 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %107

84:                                               ; preds = %79
  %85 = load %struct.file*, %struct.file** %4, align 8
  %86 = getelementptr inbounds %struct.file, %struct.file* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @parent_ino(i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @ceph_translate_ino(i32 %94, i32 %95)
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 12
  %101 = call i32 @dir_emit(%struct.dir_context* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2, i32 %96, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %818

104:                                              ; preds = %84
  %105 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %106 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %105, i32 0, i32 0
  store i32 2, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %79
  %108 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %109 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %108, i32 0, i32 0
  %110 = call i32 @spin_lock(i32* %109)
  %111 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %9, align 8
  %112 = load i32, i32* @DCACHE, align 4
  %113 = call i64 @ceph_test_mount_opt(%struct.ceph_fs_client* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %152

115:                                              ; preds = %107
  %116 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %9, align 8
  %117 = load i32, i32* @NOASYNCREADDIR, align 4
  %118 = call i64 @ceph_test_mount_opt(%struct.ceph_fs_client* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %152, label %120

120:                                              ; preds = %115
  %121 = load %struct.inode*, %struct.inode** %7, align 8
  %122 = call i64 @ceph_snap(%struct.inode* %121)
  %123 = load i64, i64* @CEPH_SNAPDIR, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %152

125:                                              ; preds = %120
  %126 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %127 = call i64 @__ceph_dir_is_complete_ordered(%struct.ceph_inode_info* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %125
  %130 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %131 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %132 = call i64 @__ceph_caps_issued_mask(%struct.ceph_inode_info* %130, i32 %131, i32 1)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %129
  %135 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %136 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %135, i32 0, i32 3
  %137 = call i32 @atomic_read(i32* %136)
  store i32 %137, i32* %16, align 4
  %138 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %139 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock(i32* %139)
  %141 = load %struct.file*, %struct.file** %4, align 8
  %142 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @__dcache_readdir(%struct.file* %141, %struct.dir_context* %142, i32 %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @EAGAIN, align 4
  %147 = sub nsw i32 0, %146
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %134
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %3, align 4
  br label %818

151:                                              ; preds = %134
  br label %156

152:                                              ; preds = %129, %125, %120, %115, %107
  %153 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %154 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %153, i32 0, i32 0
  %155 = call i32 @spin_unlock(i32* %154)
  br label %156

156:                                              ; preds = %152, %151
  br label %157

157:                                              ; preds = %754, %701, %156
  %158 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %159 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %160 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @need_send_readdir(%struct.ceph_dir_file_info* %158, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %511

164:                                              ; preds = %157
  %165 = load %struct.inode*, %struct.inode** %7, align 8
  %166 = call i64 @ceph_snap(%struct.inode* %165)
  %167 = load i64, i64* @CEPH_SNAPDIR, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* @CEPH_MDS_OP_LSSNAP, align 4
  br label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @CEPH_MDS_OP_READDIR, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  store i32 %174, i32* %18, align 4
  %175 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %176 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %175, i32 0, i32 7
  %177 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %176, align 8
  %178 = icmp ne %struct.ceph_mds_request* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %181 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %180, i32 0, i32 7
  %182 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %181, align 8
  %183 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %182)
  %184 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %185 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %184, i32 0, i32 7
  store %struct.ceph_mds_request* null, %struct.ceph_mds_request** %185, align 8
  br label %186

186:                                              ; preds = %179, %173
  %187 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %188 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @is_hash_order(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %186
  %193 = load i32, i32* %13, align 4
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %197 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %198 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @fpos_hash(i32 %199)
  %201 = call i32 @ceph_choose_frag(%struct.ceph_inode_info* %196, i32 %200, i32* null, i32* null)
  store i32 %201, i32* %13, align 4
  br label %202

202:                                              ; preds = %195, %192
  br label %208

203:                                              ; preds = %186
  %204 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %205 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @fpos_frag(i32 %206)
  store i32 %207, i32* %13, align 4
  br label %208

208:                                              ; preds = %203, %202
  %209 = load %struct.inode*, %struct.inode** %7, align 8
  %210 = call i32 @ceph_vinop(%struct.inode* %209)
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %213 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %212, i32 0, i32 6
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %210, i32 %211, i32* %214)
  %216 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %10, align 8
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* @USE_AUTH_MDS, align 4
  %219 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %216, i32 %217, i32 %218)
  store %struct.ceph_mds_request* %219, %struct.ceph_mds_request** %17, align 8
  %220 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %221 = call i64 @IS_ERR(%struct.ceph_mds_request* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %208
  %224 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %225 = call i32 @PTR_ERR(%struct.ceph_mds_request* %224)
  store i32 %225, i32* %3, align 4
  br label %818

226:                                              ; preds = %208
  %227 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %228 = load %struct.inode*, %struct.inode** %7, align 8
  %229 = call i32 @ceph_alloc_readdir_reply_buffer(%struct.ceph_mds_request* %227, %struct.inode* %228)
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %234 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %233)
  %235 = load i32, i32* %12, align 4
  store i32 %235, i32* %3, align 4
  br label %818

236:                                              ; preds = %226
  %237 = load i32, i32* @USE_AUTH_MDS, align 4
  %238 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %239 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %238, i32 0, i32 12
  store i32 %237, i32* %239, align 8
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* @CEPH_MDS_OP_READDIR, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %255

243:                                              ; preds = %236
  %244 = load i32, i32* %13, align 4
  %245 = call i32 @ceph_frag_value(i32 %244)
  %246 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %247 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load i32, i32* @CEPH_MDS_R_DIRECT_IS_HASH, align 4
  %249 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %250 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %249, i32 0, i32 6
  %251 = call i32 @__set_bit(i32 %248, i32* %250)
  %252 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %253 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %254 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %253, i32 0, i32 11
  store i32 %252, i32* %254, align 4
  br label %255

255:                                              ; preds = %243, %236
  %256 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %257 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %256, i32 0, i32 6
  %258 = load i32*, i32** %257, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %278

260:                                              ; preds = %255
  %261 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %262 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %261, i32 0, i32 6
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* @GFP_KERNEL, align 4
  %265 = call i32 @kstrdup(i32* %263, i32 %264)
  %266 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %267 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %266, i32 0, i32 10
  store i32 %265, i32* %267, align 8
  %268 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %269 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %268, i32 0, i32 10
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %260
  %273 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %274 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %273)
  %275 = load i32, i32* @ENOMEM, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %3, align 4
  br label %818

277:                                              ; preds = %260
  br label %295

278:                                              ; preds = %255
  %279 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %280 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i64 @is_hash_order(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %278
  %285 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %286 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @fpos_hash(i32 %287)
  %289 = call i8* @cpu_to_le32(i32 %288)
  %290 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %291 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %290, i32 0, i32 9
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 2
  store i8* %289, i8** %293, align 8
  br label %294

294:                                              ; preds = %284, %278
  br label %295

295:                                              ; preds = %294, %277
  %296 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %297 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %300 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %299, i32 0, i32 1
  store i64 %298, i64* %300, align 8
  %301 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %302 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %305 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %304, i32 0, i32 2
  store i64 %303, i64* %305, align 8
  %306 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %307 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %310 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %309, i32 0, i32 3
  store i32 %308, i32* %310, align 8
  %311 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %312 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %315 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %314, i32 0, i32 4
  store i32 %313, i32* %315, align 4
  %316 = load i32, i32* %13, align 4
  %317 = call i8* @cpu_to_le32(i32 %316)
  %318 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %319 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %318, i32 0, i32 9
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 1
  store i8* %317, i8** %321, align 8
  %322 = load i32, i32* @CEPH_READDIR_REPLY_BITFLAGS, align 4
  %323 = call i32 @cpu_to_le16(i32 %322)
  %324 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %325 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %324, i32 0, i32 9
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 0
  store i32 %323, i32* %327, align 8
  %328 = load %struct.inode*, %struct.inode** %7, align 8
  %329 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %330 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %329, i32 0, i32 8
  store %struct.inode* %328, %struct.inode** %330, align 8
  %331 = load %struct.inode*, %struct.inode** %7, align 8
  %332 = call i32 @ihold(%struct.inode* %331)
  %333 = load %struct.file*, %struct.file** %4, align 8
  %334 = getelementptr inbounds %struct.file, %struct.file* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @dget(i32 %336)
  %338 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %339 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %338, i32 0, i32 7
  store i32 %337, i32* %339, align 4
  %340 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %10, align 8
  %341 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %342 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %340, i32* null, %struct.ceph_mds_request* %341)
  store i32 %342, i32* %12, align 4
  %343 = load i32, i32* %12, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %295
  %346 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %347 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %346)
  %348 = load i32, i32* %12, align 4
  store i32 %348, i32* %3, align 4
  br label %818

349:                                              ; preds = %295
  %350 = load i32, i32* %12, align 4
  %351 = load i32, i32* %13, align 4
  %352 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %353 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %352, i32 0, i32 5
  %354 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  %356 = trunc i64 %355 to i32
  %357 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %358 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %358, i32 0, i32 5
  %360 = load i64, i64* %359, align 8
  %361 = trunc i64 %360 to i32
  %362 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %363 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %362, i32 0, i32 5
  %364 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = trunc i64 %365 to i32
  %367 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0), i32 %350, i32 %351, i32 %356, i32 %361, i32 %366)
  %368 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %369 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %368, i32 0, i32 5
  store %struct.ceph_mds_reply_info_parsed* %369, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %370 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %371 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %370, i32 0, i32 4
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @le32_to_cpu(i32 %374)
  %376 = load i32, i32* %13, align 4
  %377 = icmp ne i32 %375, %376
  br i1 %377, label %378, label %404

378:                                              ; preds = %349
  %379 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %380 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %379, i32 0, i32 4
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @le32_to_cpu(i32 %383)
  store i32 %384, i32* %13, align 4
  %385 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %386 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %385, i32 0, i32 3
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %403, label %389

389:                                              ; preds = %378
  %390 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %391 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %394 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %393, i32 0, i32 3
  store i32 %392, i32* %394, align 4
  %395 = load i32, i32* %13, align 4
  %396 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %397 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 4
  %399 = call i8* @ceph_make_fpos(i32 %395, i32 %398, i32 0)
  %400 = ptrtoint i8* %399 to i32
  %401 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %402 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %401, i32 0, i32 0
  store i32 %400, i32* %402, align 4
  br label %403

403:                                              ; preds = %389, %378
  br label %404

404:                                              ; preds = %403, %349
  %405 = load i32, i32* %13, align 4
  %406 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %407 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %406, i32 0, i32 4
  store i32 %405, i32* %407, align 8
  %408 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %409 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %410 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %409, i32 0, i32 7
  store %struct.ceph_mds_request* %408, %struct.ceph_mds_request** %410, align 8
  %411 = load i32, i32* @CEPH_MDS_R_DID_PREPOPULATE, align 4
  %412 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %413 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %412, i32 0, i32 6
  %414 = call i64 @test_bit(i32 %411, i32* %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %451

416:                                              ; preds = %404
  %417 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %418 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %421 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %420, i32 0, i32 2
  store i32 %419, i32* %421, align 8
  %422 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %423 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %416
  %427 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %428 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %427, i32 0, i32 1
  store i64 0, i64* %428, align 8
  br label %450

429:                                              ; preds = %416
  %430 = load i32, i32* %13, align 4
  %431 = call i64 @ceph_frag_is_leftmost(i32 %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %449

433:                                              ; preds = %429
  %434 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %435 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 4
  %437 = icmp eq i32 %436, 2
  br i1 %437, label %438, label %449

438:                                              ; preds = %433
  %439 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %440 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %439, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %443 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %442, i32 0, i32 0
  store i64 %441, i64* %443, align 8
  %444 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %445 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %444, i32 0, i32 2
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %448 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %447, i32 0, i32 1
  store i64 %446, i64* %448, align 8
  br label %449

449:                                              ; preds = %438, %433, %429
  br label %450

450:                                              ; preds = %449, %426
  br label %457

451:                                              ; preds = %404
  %452 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %453 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %454 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %453, i32 0, i32 2
  store i32 -1, i32* %454, align 8
  %455 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %456 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %455, i32 0, i32 0
  store i64 0, i64* %456, align 8
  br label %457

457:                                              ; preds = %451, %450
  %458 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %459 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = icmp sgt i32 %460, 0
  br i1 %461, label %462, label %500

462:                                              ; preds = %457
  %463 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %464 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %463, i32 0, i32 1
  %465 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %464, align 8
  %466 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %467 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = sub nsw i32 %468, 1
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %465, i64 %470
  store %struct.ceph_mds_reply_dir_entry* %471, %struct.ceph_mds_reply_dir_entry** %19, align 8
  %472 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %473 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %472, i32 0, i32 5
  %474 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %473, i32 0, i32 2
  %475 = load i64, i64* %474, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %462
  br label %484

478:                                              ; preds = %462
  %479 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %19, align 8
  %480 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = call i32 @fpos_off(i32 %481)
  %483 = add nsw i32 %482, 1
  br label %484

484:                                              ; preds = %478, %477
  %485 = phi i32 [ 2, %477 ], [ %483, %478 ]
  store i32 %485, i32* %20, align 4
  %486 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %487 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %19, align 8
  %488 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %487, i32 0, i32 1
  %489 = load i8*, i8** %488, align 8
  %490 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %19, align 8
  %491 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = load i32, i32* %20, align 4
  %494 = call i32 @note_last_dentry(%struct.ceph_dir_file_info* %486, i8* %489, i32 %492, i32 %493)
  store i32 %494, i32* %12, align 4
  %495 = load i32, i32* %12, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %499

497:                                              ; preds = %484
  %498 = load i32, i32* %12, align 4
  store i32 %498, i32* %3, align 4
  br label %818

499:                                              ; preds = %484
  br label %510

500:                                              ; preds = %457
  %501 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %17, align 8
  %502 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %501, i32 0, i32 5
  %503 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %502, i32 0, i32 2
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %509

506:                                              ; preds = %500
  %507 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %508 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %507, i32 0, i32 3
  store i32 2, i32* %508, align 4
  br label %509

509:                                              ; preds = %506, %500
  br label %510

510:                                              ; preds = %509, %499
  br label %511

511:                                              ; preds = %510, %157
  %512 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %513 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %512, i32 0, i32 7
  %514 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %513, align 8
  %515 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %514, i32 0, i32 5
  store %struct.ceph_mds_reply_info_parsed* %515, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %516 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %517 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %516, i32 0, i32 4
  %518 = load i32, i32* %517, align 8
  %519 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %520 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %523 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 4
  %525 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %526 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %537

529:                                              ; preds = %511
  %530 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %531 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %530, i32 0, i32 1
  %532 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %531, align 8
  %533 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %532, i64 0
  %534 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = sext i32 %535 to i64
  br label %538

537:                                              ; preds = %511
  br label %538

538:                                              ; preds = %537, %529
  %539 = phi i64 [ %536, %529 ], [ 0, %537 ]
  %540 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %518, i32 %521, i32 %524, i64 %539)
  store i32 0, i32* %11, align 4
  %541 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %542 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = icmp sgt i32 %543, 0
  br i1 %544, label %545, label %582

545:                                              ; preds = %538
  %546 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %547 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  store i32 %548, i32* %22, align 4
  br label %549

549:                                              ; preds = %580, %545
  %550 = load i32, i32* %22, align 4
  %551 = icmp sgt i32 %550, 0
  br i1 %551, label %552, label %581

552:                                              ; preds = %549
  %553 = load i32, i32* %22, align 4
  %554 = ashr i32 %553, 1
  store i32 %554, i32* %21, align 4
  %555 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %556 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %555, i32 0, i32 1
  %557 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %556, align 8
  %558 = load i32, i32* %11, align 4
  %559 = load i32, i32* %21, align 4
  %560 = add nsw i32 %558, %559
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %557, i64 %561
  %563 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %566 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 4
  %568 = icmp slt i32 %564, %567
  br i1 %568, label %569, label %578

569:                                              ; preds = %552
  %570 = load i32, i32* %21, align 4
  %571 = add nsw i32 %570, 1
  %572 = load i32, i32* %11, align 4
  %573 = add nsw i32 %572, %571
  store i32 %573, i32* %11, align 4
  %574 = load i32, i32* %21, align 4
  %575 = add nsw i32 %574, 1
  %576 = load i32, i32* %22, align 4
  %577 = sub nsw i32 %576, %575
  store i32 %577, i32* %22, align 4
  br label %580

578:                                              ; preds = %552
  %579 = load i32, i32* %21, align 4
  store i32 %579, i32* %22, align 4
  br label %580

580:                                              ; preds = %578, %569
  br label %549

581:                                              ; preds = %549
  br label %582

582:                                              ; preds = %581, %538
  br label %583

583:                                              ; preds = %687, %582
  %584 = load i32, i32* %11, align 4
  %585 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %586 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = icmp slt i32 %584, %587
  br i1 %588, label %589, label %690

589:                                              ; preds = %583
  %590 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %591 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %590, i32 0, i32 1
  %592 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %591, align 8
  %593 = load i32, i32* %11, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %592, i64 %594
  store %struct.ceph_mds_reply_dir_entry* %595, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %596 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %597 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %600 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = icmp slt i32 %598, %601
  %603 = zext i1 %602 to i32
  %604 = call i32 @BUG_ON(i32 %603)
  %605 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %606 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %609 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %608, i32 0, i32 0
  store i32 %607, i32* %609, align 4
  %610 = load i32, i32* %11, align 4
  %611 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %612 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %615 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %614, i32 0, i32 0
  %616 = load i32, i32* %615, align 4
  %617 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %618 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %617, i32 0, i32 2
  %619 = load i32, i32* %618, align 8
  %620 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %621 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %620, i32 0, i32 1
  %622 = load i8*, i8** %621, align 8
  %623 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %624 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %623, i32 0, i32 3
  %625 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %624, i32 0, i32 0
  %626 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %610, i32 %613, i32 %616, i32 %619, i8* %622, %struct.TYPE_12__** %625)
  %627 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %628 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %627, i32 0, i32 3
  %629 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %628, i32 0, i32 0
  %630 = load %struct.TYPE_12__*, %struct.TYPE_12__** %629, align 8
  %631 = icmp ne %struct.TYPE_12__* %630, null
  %632 = xor i1 %631, true
  %633 = zext i1 %632 to i32
  %634 = call i32 @BUG_ON(i32 %633)
  %635 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %636 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %635, i32 0, i32 3
  %637 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %636, i32 0, i32 0
  %638 = load %struct.TYPE_12__*, %struct.TYPE_12__** %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %638, i32 0, i32 2
  %640 = load i32, i32* %639, align 4
  %641 = call i32 @le32_to_cpu(i32 %640)
  %642 = ashr i32 %641, 12
  store i32 %642, i32* %26, align 4
  %643 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %644 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %643, i32 0, i32 3
  %645 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %644, i32 0, i32 0
  %646 = load %struct.TYPE_12__*, %struct.TYPE_12__** %645, align 8
  %647 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %646, i32 0, i32 1
  %648 = load i32, i32* %647, align 4
  %649 = call i8* @le64_to_cpu(i32 %648)
  %650 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %24, i32 0, i32 1
  store i8* %649, i8** %650, align 8
  %651 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %652 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %651, i32 0, i32 3
  %653 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %652, i32 0, i32 0
  %654 = load %struct.TYPE_12__*, %struct.TYPE_12__** %653, align 8
  %655 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %654, i32 0, i32 0
  %656 = load i32, i32* %655, align 4
  %657 = call i8* @le64_to_cpu(i32 %656)
  %658 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %24, i32 0, i32 0
  store i8* %657, i8** %658, align 8
  %659 = bitcast %struct.ceph_vino* %24 to { i8*, i8* }*
  %660 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %659, i32 0, i32 0
  %661 = load i8*, i8** %660, align 8
  %662 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %659, i32 0, i32 1
  %663 = load i8*, i8** %662, align 8
  %664 = call i32 @ceph_vino_to_ino(i8* %661, i8* %663)
  store i32 %664, i32* %25, align 4
  %665 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %666 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %667 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %666, i32 0, i32 1
  %668 = load i8*, i8** %667, align 8
  %669 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %23, align 8
  %670 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %669, i32 0, i32 2
  %671 = load i32, i32* %670, align 8
  %672 = load %struct.inode*, %struct.inode** %7, align 8
  %673 = getelementptr inbounds %struct.inode, %struct.inode* %672, i32 0, i32 1
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* %25, align 4
  %676 = call i32 @ceph_translate_ino(i32 %674, i32 %675)
  %677 = load i32, i32* %26, align 4
  %678 = call i32 @dir_emit(%struct.dir_context* %665, i8* %668, i32 %671, i32 %676, i32 %677)
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %682, label %680

680:                                              ; preds = %589
  %681 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %818

682:                                              ; preds = %589
  %683 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %684 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %683, i32 0, i32 0
  %685 = load i32, i32* %684, align 4
  %686 = add nsw i32 %685, 1
  store i32 %686, i32* %684, align 4
  br label %687

687:                                              ; preds = %682
  %688 = load i32, i32* %11, align 4
  %689 = add nsw i32 %688, 1
  store i32 %689, i32* %11, align 4
  br label %583

690:                                              ; preds = %583
  %691 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %692 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %691, i32 0, i32 7
  %693 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %692, align 8
  %694 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %693)
  %695 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %696 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %695, i32 0, i32 7
  store %struct.ceph_mds_request* null, %struct.ceph_mds_request** %696, align 8
  %697 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %698 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %697, i32 0, i32 3
  %699 = load i32, i32* %698, align 4
  %700 = icmp sgt i32 %699, 2
  br i1 %700, label %701, label %705

701:                                              ; preds = %690
  %702 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %703 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %702, i32 0, i32 4
  %704 = load i32, i32* %703, align 8
  store i32 %704, i32* %13, align 4
  br label %157

705:                                              ; preds = %690
  %706 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %707 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %706, i32 0, i32 4
  %708 = load i32, i32* %707, align 8
  %709 = call i32 @ceph_frag_is_rightmost(i32 %708)
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %757, label %711

711:                                              ; preds = %705
  %712 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %713 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %712, i32 0, i32 4
  %714 = load i32, i32* %713, align 8
  %715 = call i32 @ceph_frag_next(i32 %714)
  store i32 %715, i32* %13, align 4
  %716 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %717 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %716, i32 0, i32 0
  %718 = load i32, i32* %717, align 4
  %719 = call i64 @is_hash_order(i32 %718)
  %720 = icmp ne i64 %719, 0
  br i1 %720, label %721, label %739

721:                                              ; preds = %711
  %722 = load i32, i32* %13, align 4
  %723 = call i32 @ceph_frag_value(i32 %722)
  %724 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %725 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %724, i32 0, i32 3
  %726 = load i32, i32* %725, align 4
  %727 = call i8* @ceph_make_fpos(i32 %723, i32 %726, i32 1)
  %728 = ptrtoint i8* %727 to i32
  store i32 %728, i32* %27, align 4
  %729 = load i32, i32* %27, align 4
  %730 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %731 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %730, i32 0, i32 0
  %732 = load i32, i32* %731, align 4
  %733 = icmp sgt i32 %729, %732
  br i1 %733, label %734, label %738

734:                                              ; preds = %721
  %735 = load i32, i32* %27, align 4
  %736 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %737 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %736, i32 0, i32 0
  store i32 %735, i32* %737, align 4
  br label %738

738:                                              ; preds = %734, %721
  br label %754

739:                                              ; preds = %711
  %740 = load i32, i32* %13, align 4
  %741 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %742 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %741, i32 0, i32 3
  %743 = load i32, i32* %742, align 4
  %744 = call i8* @ceph_make_fpos(i32 %740, i32 %743, i32 0)
  %745 = ptrtoint i8* %744 to i32
  %746 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %747 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %746, i32 0, i32 0
  store i32 %745, i32* %747, align 4
  %748 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %749 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %748, i32 0, i32 6
  %750 = load i32*, i32** %749, align 8
  %751 = call i32 @kfree(i32* %750)
  %752 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %753 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %752, i32 0, i32 6
  store i32* null, i32** %753, align 8
  br label %754

754:                                              ; preds = %739, %738
  %755 = load i32, i32* %13, align 4
  %756 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %755)
  br label %157

757:                                              ; preds = %705
  %758 = load i32, i32* @CEPH_F_ATEND, align 4
  %759 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %760 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %759, i32 0, i32 5
  %761 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %760, i32 0, i32 0
  %762 = load i32, i32* %761, align 4
  %763 = or i32 %762, %758
  store i32 %763, i32* %761, align 4
  %764 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %765 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %764, i32 0, i32 2
  %766 = call i64 @atomic64_read(i32* %765)
  %767 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %768 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %767, i32 0, i32 0
  %769 = load i64, i64* %768, align 8
  %770 = icmp eq i64 %766, %769
  br i1 %770, label %771, label %814

771:                                              ; preds = %757
  %772 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %773 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %772, i32 0, i32 0
  %774 = call i32 @spin_lock(i32* %773)
  %775 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %776 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %775, i32 0, i32 1
  %777 = load i64, i64* %776, align 8
  %778 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %779 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %778, i32 0, i32 1
  %780 = call i64 @atomic64_read(i32* %779)
  %781 = icmp eq i64 %777, %780
  br i1 %781, label %782, label %799

782:                                              ; preds = %771
  %783 = load %struct.inode*, %struct.inode** %7, align 8
  %784 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), %struct.inode* %783)
  %785 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %786 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %785, i32 0, i32 2
  %787 = load i32, i32* %786, align 8
  %788 = icmp slt i32 %787, 0
  %789 = zext i1 %788 to i32
  %790 = call i32 @BUG_ON(i32 %789)
  %791 = load %struct.inode*, %struct.inode** %7, align 8
  %792 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %793 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %792, i32 0, i32 2
  %794 = load i32, i32* %793, align 8
  %795 = sext i32 %794 to i64
  %796 = mul i64 %795, 8
  %797 = trunc i64 %796 to i32
  %798 = call i32 @i_size_write(%struct.inode* %791, i32 %797)
  br label %802

799:                                              ; preds = %771
  %800 = load %struct.inode*, %struct.inode** %7, align 8
  %801 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), %struct.inode* %800)
  br label %802

802:                                              ; preds = %799, %782
  %803 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %804 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %805 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %804, i32 0, i32 0
  %806 = load i64, i64* %805, align 8
  %807 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %808 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %807, i32 0, i32 1
  %809 = load i64, i64* %808, align 8
  %810 = call i32 @__ceph_dir_set_complete(%struct.ceph_inode_info* %803, i64 %806, i64 %809)
  %811 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %812 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %811, i32 0, i32 0
  %813 = call i32 @spin_unlock(i32* %812)
  br label %814

814:                                              ; preds = %802, %757
  %815 = load %struct.inode*, %struct.inode** %7, align 8
  %816 = load %struct.file*, %struct.file** %4, align 8
  %817 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), %struct.inode* %815, %struct.file* %816)
  store i32 0, i32* %3, align 4
  br label %818

818:                                              ; preds = %814, %680, %497, %345, %272, %232, %223, %149, %103, %75, %53
  %819 = load i32, i32* %3, align 4
  ret i32 %819
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

declare dso_local i32 @ceph_translate_ino(i32, i32) #1

declare dso_local i32 @parent_ino(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ceph_test_mount_opt(%struct.ceph_fs_client*, i32) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i64 @__ceph_dir_is_complete_ordered(%struct.ceph_inode_info*) #1

declare dso_local i64 @__ceph_caps_issued_mask(%struct.ceph_inode_info*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__dcache_readdir(%struct.file*, %struct.dir_context*, i32) #1

declare dso_local i64 @need_send_readdir(%struct.ceph_dir_file_info*, i32) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

declare dso_local i64 @is_hash_order(i32) #1

declare dso_local i32 @ceph_choose_frag(%struct.ceph_inode_info*, i32, i32*, i32*) #1

declare dso_local i32 @fpos_hash(i32) #1

declare dso_local i32 @fpos_frag(i32) #1

declare dso_local i32 @ceph_vinop(%struct.inode*) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_alloc_readdir_reply_buffer(%struct.ceph_mds_request*, %struct.inode*) #1

declare dso_local i32 @ceph_frag_value(i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @kstrdup(i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @dget(i32) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, i32*, %struct.ceph_mds_request*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @ceph_make_fpos(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ceph_frag_is_leftmost(i32) #1

declare dso_local i32 @fpos_off(i32) #1

declare dso_local i32 @note_last_dentry(%struct.ceph_dir_file_info*, i8*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @ceph_vino_to_ino(i8*, i8*) #1

declare dso_local i32 @ceph_frag_is_rightmost(i32) #1

declare dso_local i32 @ceph_frag_next(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @__ceph_dir_set_complete(%struct.ceph_inode_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
