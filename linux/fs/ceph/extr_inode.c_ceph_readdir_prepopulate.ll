; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_readdir_prepopulate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_readdir_prepopulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_request = type { i32, i64, i32, i32, i32, i32, i8*, i8*, i32, %struct.TYPE_12__*, %struct.ceph_mds_reply_info_parsed, %struct.dentry* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.ceph_mds_request_head* }
%struct.ceph_mds_request_head = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.ceph_mds_reply_info_parsed = type { i32, i64, %struct.ceph_mds_reply_dir_entry*, %struct.TYPE_18__*, %struct.TYPE_16__*, i64 }
%struct.ceph_mds_reply_dir_entry = type { i64, i32, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.dentry = type { i32, i32 }
%struct.ceph_mds_session = type { i32 }
%struct.ceph_inode_info = type { i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.qstr = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.ceph_readdir_cache_control = type { i64 }
%struct.ceph_vino = type { i64, i64 }
%struct.ceph_dentry_info = type { i64, i64 }

@CEPH_MDS_R_ABORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"readdir_prepopulate got new frag %x -> %x\0A\00", align 1
@CEPH_MDS_OP_LSSNAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"readdir_prepopulate %d items under SNAPDIR dn %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"readdir_prepopulate %d items under dn %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"d_lookup on parent=%p name=%.*s got %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"d_alloc %p '%.*s' = %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"d_alloc badness\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c" dn %p points to wrong inode %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"new_inode badness\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"fill_inode badness on %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c" skip splicing dn %p to inode %p (security xattr deadlock)\0A\00", align 1
@CEPH_MDS_R_DID_PREPOPULATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"readdir_prepopulate done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_readdir_prepopulate(%struct.ceph_mds_request* %0, %struct.ceph_mds_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_mds_request*, align 8
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.ceph_inode_info*, align 8
  %8 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %9 = alloca %struct.qstr, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ceph_mds_request_head*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ceph_readdir_cache_control, align 8
  %21 = alloca %struct.ceph_mds_reply_dir_entry*, align 8
  %22 = alloca %struct.ceph_vino, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.ceph_dentry_info*, align 8
  store %struct.ceph_mds_request* %0, %struct.ceph_mds_request** %4, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %5, align 8
  %25 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %25, i32 0, i32 11
  %27 = load %struct.dentry*, %struct.dentry** %26, align 8
  store %struct.dentry* %27, %struct.dentry** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = call %struct.inode* @d_inode(%struct.dentry* %28)
  %30 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %29)
  store %struct.ceph_inode_info* %30, %struct.ceph_inode_info** %7, align 8
  %31 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %32 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %31, i32 0, i32 10
  store %struct.ceph_mds_reply_info_parsed* %32, %struct.ceph_mds_reply_info_parsed** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %33 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %34 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %33, i32 0, i32 9
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.ceph_mds_request_head*, %struct.ceph_mds_request_head** %37, align 8
  store %struct.ceph_mds_request_head* %38, %struct.ceph_mds_request_head** %16, align 8
  %39 = load %struct.ceph_mds_request_head*, %struct.ceph_mds_request_head** %16, align 8
  %40 = getelementptr inbounds %struct.ceph_mds_request_head, %struct.ceph_mds_request_head* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32_to_cpu(i32 %43)
  store i64 %44, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %45 = bitcast %struct.ceph_readdir_cache_control* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %45, i8 0, i64 8, i1 false)
  %46 = load i32, i32* @CEPH_MDS_R_ABORTED, align 4
  %47 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %48 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %47, i32 0, i32 2
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %2
  %52 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %53 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %54 = call i32 @readdir_prepopulate_inodes_only(%struct.ceph_mds_request* %52, %struct.ceph_mds_session* %53)
  store i32 %54, i32* %3, align 4
  br label %525

55:                                               ; preds = %2
  %56 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %57 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %55
  %61 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %62 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %67 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %71 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %74 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @strlen(i32 %75)
  %77 = call i64 @ceph_str_hash(i32 %69, i32 %72, i32 %76)
  store i64 %77, i64* %18, align 8
  %78 = load i64, i64* %18, align 8
  %79 = call i64 @ceph_frag_value(i64 %78)
  store i64 %79, i64* %18, align 8
  br label %99

80:                                               ; preds = %60
  %81 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %82 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %87 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 2
  %90 = zext i1 %89 to i32
  %91 = call i32 @WARN_ON_ONCE(i32 %90)
  %92 = load %struct.ceph_mds_request_head*, %struct.ceph_mds_request_head** %16, align 8
  %93 = getelementptr inbounds %struct.ceph_mds_request_head, %struct.ceph_mds_request_head* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @le32_to_cpu(i32 %96)
  store i64 %97, i64* %18, align 8
  br label %98

98:                                               ; preds = %85, %80
  br label %99

99:                                               ; preds = %98, %65
  br label %100

100:                                              ; preds = %99, %55
  %101 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %102 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %101, i32 0, i32 3
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = icmp ne %struct.TYPE_18__* %103, null
  br i1 %104, label %105, label %137

105:                                              ; preds = %100
  %106 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %107 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %106, i32 0, i32 3
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @le32_to_cpu(i32 %110)
  %112 = load i64, i64* %17, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %137

114:                                              ; preds = %105
  %115 = load i64, i64* %17, align 8
  %116 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %117 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %116, i32 0, i32 3
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @le32_to_cpu(i32 %120)
  %122 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %115, i64 %121)
  %123 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %124 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %123, i32 0, i32 3
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @le32_to_cpu(i32 %127)
  store i64 %128, i64* %17, align 8
  %129 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %130 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %114
  %134 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %135 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %134, i32 0, i32 0
  store i32 2, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %114
  br label %137

137:                                              ; preds = %136, %105, %100
  %138 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %139 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %138, i32 0, i32 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @le32_to_cpu(i32 %142)
  %144 = load i64, i64* @CEPH_MDS_OP_LSSNAP, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %137
  %147 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %148 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.dentry*, %struct.dentry** %6, align 8
  %151 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %149, %struct.dentry* %150)
  br label %200

152:                                              ; preds = %137
  %153 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %154 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.dentry*, %struct.dentry** %6, align 8
  %157 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %155, %struct.dentry* %156)
  %158 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %159 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %158, i32 0, i32 3
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  %161 = icmp ne %struct.TYPE_18__* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %152
  %163 = load %struct.dentry*, %struct.dentry** %6, align 8
  %164 = call %struct.inode* @d_inode(%struct.dentry* %163)
  %165 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %166 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %165, i32 0, i32 3
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = call i32 @ceph_fill_dirfrag(%struct.inode* %164, %struct.TYPE_18__* %167)
  br label %169

169:                                              ; preds = %162, %152
  %170 = load i64, i64* %17, align 8
  %171 = call i64 @ceph_frag_is_leftmost(i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %199

173:                                              ; preds = %169
  %174 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %175 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %199

178:                                              ; preds = %173
  %179 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %180 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i64, i64* %18, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %199, label %186

186:                                              ; preds = %183, %178
  %187 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %188 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %187, i32 0, i32 3
  %189 = call i8* @atomic64_read(i32* %188)
  %190 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %191 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %190, i32 0, i32 7
  store i8* %189, i8** %191, align 8
  %192 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %193 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %192, i32 0, i32 2
  %194 = call i8* @atomic64_read(i32* %193)
  %195 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %196 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %195, i32 0, i32 6
  store i8* %194, i8** %196, align 8
  %197 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %198 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %197, i32 0, i32 1
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %186, %183, %173, %169
  br label %200

200:                                              ; preds = %199, %146
  %201 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %202 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %20, i32 0, i32 0
  store i64 %203, i64* %204, align 8
  %205 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %206 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %19, align 8
  store i32 0, i32* %15, align 4
  br label %209

209:                                              ; preds = %502, %200
  %210 = load i32, i32* %15, align 4
  %211 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %212 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %505

215:                                              ; preds = %209
  %216 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %217 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %216, i32 0, i32 2
  %218 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %217, align 8
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %218, i64 %220
  store %struct.ceph_mds_reply_dir_entry* %221, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %222 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %223 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  store i32 %224, i32* %225, align 4
  %226 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %227 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 1
  store i32 %228, i32* %229, align 4
  %230 = load %struct.dentry*, %struct.dentry** %6, align 8
  %231 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @full_name_hash(%struct.dentry* %230, i32 %232, i32 %234)
  %236 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 2
  store i32 %235, i32* %236, align 4
  %237 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %238 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @le64_to_cpu(i32 %242)
  %244 = ptrtoint i8* %243 to i64
  %245 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %22, i32 0, i32 0
  store i64 %244, i64* %245, align 8
  %246 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %247 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i8* @le64_to_cpu(i32 %251)
  %253 = ptrtoint i8* %252 to i64
  %254 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %22, i32 0, i32 1
  store i64 %253, i64* %254, align 8
  %255 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %256 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %287

259:                                              ; preds = %215
  %260 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %261 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %265 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %268 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = call i64 @ceph_str_hash(i32 %263, i32 %266, i32 %269)
  store i64 %270, i64* %23, align 8
  %271 = load i64, i64* %23, align 8
  %272 = call i64 @ceph_frag_value(i64 %271)
  store i64 %272, i64* %23, align 8
  %273 = load i64, i64* %23, align 8
  %274 = load i64, i64* %18, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %259
  store i64 2, i64* %19, align 8
  br label %277

277:                                              ; preds = %276, %259
  %278 = load i64, i64* %23, align 8
  store i64 %278, i64* %18, align 8
  %279 = load i64, i64* %23, align 8
  %280 = load i64, i64* %19, align 8
  %281 = add nsw i64 %280, 1
  store i64 %281, i64* %19, align 8
  %282 = trunc i64 %280 to i32
  %283 = call i8* @ceph_make_fpos(i64 %279, i32 %282, i32 1)
  %284 = ptrtoint i8* %283 to i64
  %285 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %286 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  br label %296

287:                                              ; preds = %215
  %288 = load i64, i64* %17, align 8
  %289 = load i64, i64* %19, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %19, align 8
  %291 = trunc i64 %289 to i32
  %292 = call i8* @ceph_make_fpos(i64 %288, i32 %291, i32 0)
  %293 = ptrtoint i8* %292 to i64
  %294 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %295 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %294, i32 0, i32 0
  store i64 %293, i64* %295, align 8
  br label %296

296:                                              ; preds = %287, %277
  br label %297

297:                                              ; preds = %371, %296
  %298 = load %struct.dentry*, %struct.dentry** %6, align 8
  %299 = call %struct.dentry* @d_lookup(%struct.dentry* %298, %struct.qstr* %9)
  store %struct.dentry* %299, %struct.dentry** %10, align 8
  %300 = load %struct.dentry*, %struct.dentry** %6, align 8
  %301 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.dentry*, %struct.dentry** %10, align 8
  %306 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), %struct.dentry* %300, i32 %302, i32 %304, %struct.dentry* %305)
  %307 = load %struct.dentry*, %struct.dentry** %10, align 8
  %308 = icmp ne %struct.dentry* %307, null
  br i1 %308, label %326, label %309

309:                                              ; preds = %297
  %310 = load %struct.dentry*, %struct.dentry** %6, align 8
  %311 = call %struct.dentry* @d_alloc(%struct.dentry* %310, %struct.qstr* %9)
  store %struct.dentry* %311, %struct.dentry** %10, align 8
  %312 = load %struct.dentry*, %struct.dentry** %6, align 8
  %313 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.dentry*, %struct.dentry** %10, align 8
  %318 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %struct.dentry* %312, i32 %314, i32 %316, %struct.dentry* %317)
  %319 = load %struct.dentry*, %struct.dentry** %10, align 8
  %320 = icmp ne %struct.dentry* %319, null
  br i1 %320, label %325, label %321

321:                                              ; preds = %309
  %322 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %323 = load i32, i32* @ENOMEM, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %12, align 4
  br label %506

325:                                              ; preds = %309
  br label %380

326:                                              ; preds = %297
  %327 = load %struct.dentry*, %struct.dentry** %10, align 8
  %328 = call i64 @d_really_is_positive(%struct.dentry* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %379

330:                                              ; preds = %326
  %331 = load %struct.dentry*, %struct.dentry** %10, align 8
  %332 = call %struct.inode* @d_inode(%struct.dentry* %331)
  %333 = call i64 @ceph_ino(%struct.inode* %332)
  %334 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %22, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %333, %335
  br i1 %336, label %344, label %337

337:                                              ; preds = %330
  %338 = load %struct.dentry*, %struct.dentry** %10, align 8
  %339 = call %struct.inode* @d_inode(%struct.dentry* %338)
  %340 = call i64 @ceph_snap(%struct.inode* %339)
  %341 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %22, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %340, %342
  br i1 %343, label %344, label %379

344:                                              ; preds = %337, %330
  %345 = load %struct.dentry*, %struct.dentry** %10, align 8
  %346 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %345)
  store %struct.ceph_dentry_info* %346, %struct.ceph_dentry_info** %24, align 8
  %347 = load %struct.dentry*, %struct.dentry** %10, align 8
  %348 = load %struct.dentry*, %struct.dentry** %10, align 8
  %349 = call %struct.inode* @d_inode(%struct.dentry* %348)
  %350 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), %struct.dentry* %347, %struct.inode* %349)
  %351 = load %struct.dentry*, %struct.dentry** %10, align 8
  %352 = getelementptr inbounds %struct.dentry, %struct.dentry* %351, i32 0, i32 1
  %353 = call i32 @spin_lock(i32* %352)
  %354 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %24, align 8
  %355 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = icmp sgt i64 %356, 0
  br i1 %357, label %358, label %371

358:                                              ; preds = %344
  %359 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %24, align 8
  %360 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %363 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %362, i32 0, i32 0
  %364 = call i64 @atomic_read(i32* %363)
  %365 = icmp eq i64 %361, %364
  br i1 %365, label %366, label %371

366:                                              ; preds = %358
  %367 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %368 = call i32 @__ceph_dir_clear_ordered(%struct.ceph_inode_info* %367)
  %369 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %24, align 8
  %370 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %369, i32 0, i32 0
  store i64 0, i64* %370, align 8
  br label %371

371:                                              ; preds = %366, %358, %344
  %372 = load %struct.dentry*, %struct.dentry** %10, align 8
  %373 = getelementptr inbounds %struct.dentry, %struct.dentry* %372, i32 0, i32 1
  %374 = call i32 @spin_unlock(i32* %373)
  %375 = load %struct.dentry*, %struct.dentry** %10, align 8
  %376 = call i32 @d_delete(%struct.dentry* %375)
  %377 = load %struct.dentry*, %struct.dentry** %10, align 8
  %378 = call i32 @dput(%struct.dentry* %377)
  br label %297

379:                                              ; preds = %337, %326
  br label %380

380:                                              ; preds = %379, %325
  %381 = load %struct.dentry*, %struct.dentry** %10, align 8
  %382 = call i64 @d_really_is_positive(%struct.dentry* %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %380
  %385 = load %struct.dentry*, %struct.dentry** %10, align 8
  %386 = call %struct.inode* @d_inode(%struct.dentry* %385)
  store %struct.inode* %386, %struct.inode** %11, align 8
  br label %409

387:                                              ; preds = %380
  %388 = load %struct.dentry*, %struct.dentry** %6, align 8
  %389 = getelementptr inbounds %struct.dentry, %struct.dentry* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = bitcast %struct.ceph_vino* %22 to { i64, i64 }*
  %392 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %391, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = call %struct.inode* @ceph_get_inode(i32 %390, i64 %393, i64 %395)
  store %struct.inode* %396, %struct.inode** %11, align 8
  %397 = load %struct.inode*, %struct.inode** %11, align 8
  %398 = call i64 @IS_ERR(%struct.inode* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %408

400:                                              ; preds = %387
  %401 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %402 = load %struct.dentry*, %struct.dentry** %10, align 8
  %403 = call i32 @d_drop(%struct.dentry* %402)
  %404 = load %struct.dentry*, %struct.dentry** %10, align 8
  %405 = call i32 @dput(%struct.dentry* %404)
  %406 = load %struct.inode*, %struct.inode** %11, align 8
  %407 = call i32 @PTR_ERR(%struct.inode* %406)
  store i32 %407, i32* %12, align 4
  br label %506

408:                                              ; preds = %387
  br label %409

409:                                              ; preds = %408, %384
  %410 = load %struct.inode*, %struct.inode** %11, align 8
  %411 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %412 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %411, i32 0, i32 2
  %413 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %414 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %415 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %418 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %417, i32 0, i32 5
  %419 = call i32 @fill_inode(%struct.inode* %410, i32* null, %struct.TYPE_17__* %412, i32* null, %struct.ceph_mds_session* %413, i32 %416, i32 -1, i32* %418)
  store i32 %419, i32* %14, align 4
  %420 = load i32, i32* %14, align 4
  %421 = icmp slt i32 %420, 0
  br i1 %421, label %422, label %435

422:                                              ; preds = %409
  %423 = load %struct.inode*, %struct.inode** %11, align 8
  %424 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), %struct.inode* %423)
  %425 = load %struct.dentry*, %struct.dentry** %10, align 8
  %426 = call i64 @d_really_is_negative(%struct.dentry* %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %422
  %429 = load %struct.inode*, %struct.inode** %11, align 8
  %430 = call i32 @ceph_async_iput(%struct.inode* %429)
  br label %431

431:                                              ; preds = %428, %422
  %432 = load %struct.dentry*, %struct.dentry** %10, align 8
  %433 = call i32 @d_drop(%struct.dentry* %432)
  %434 = load i32, i32* %14, align 4
  store i32 %434, i32* %12, align 4
  br label %499

435:                                              ; preds = %409
  %436 = load %struct.dentry*, %struct.dentry** %10, align 8
  %437 = call i64 @d_really_is_negative(%struct.dentry* %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %458

439:                                              ; preds = %435
  %440 = load %struct.inode*, %struct.inode** %11, align 8
  %441 = call i64 @ceph_security_xattr_deadlock(%struct.inode* %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %451

443:                                              ; preds = %439
  %444 = load %struct.dentry*, %struct.dentry** %10, align 8
  %445 = load %struct.inode*, %struct.inode** %11, align 8
  %446 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0), %struct.dentry* %444, %struct.inode* %445)
  %447 = load %struct.inode*, %struct.inode** %11, align 8
  %448 = call i32 @ceph_async_iput(%struct.inode* %447)
  %449 = load i32, i32* %13, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %13, align 4
  br label %499

451:                                              ; preds = %439
  %452 = load %struct.inode*, %struct.inode** %11, align 8
  %453 = call i32 @splice_dentry(%struct.dentry** %10, %struct.inode* %452)
  store i32 %453, i32* %12, align 4
  %454 = load i32, i32* %12, align 4
  %455 = icmp slt i32 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %451
  br label %499

457:                                              ; preds = %451
  br label %458

458:                                              ; preds = %457, %435
  %459 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %460 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = load %struct.dentry*, %struct.dentry** %10, align 8
  %463 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %462)
  %464 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %463, i32 0, i32 0
  store i64 %461, i64* %464, align 8
  %465 = load %struct.dentry*, %struct.dentry** %6, align 8
  %466 = call %struct.inode* @d_inode(%struct.dentry* %465)
  %467 = load %struct.dentry*, %struct.dentry** %10, align 8
  %468 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %21, align 8
  %469 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %472 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 8
  %474 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %475 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @update_dentry_lease(%struct.inode* %466, %struct.dentry* %467, i32 %470, i32 %473, i32 %476)
  %478 = load i32, i32* %12, align 4
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %498

480:                                              ; preds = %458
  %481 = load i32, i32* %13, align 4
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %498

483:                                              ; preds = %480
  %484 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %20, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = icmp sge i64 %485, 0
  br i1 %486, label %487, label %498

487:                                              ; preds = %483
  %488 = load %struct.dentry*, %struct.dentry** %6, align 8
  %489 = call %struct.inode* @d_inode(%struct.dentry* %488)
  %490 = load %struct.dentry*, %struct.dentry** %10, align 8
  %491 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %492 = call i32 @fill_readdir_cache(%struct.inode* %489, %struct.dentry* %490, %struct.ceph_readdir_cache_control* %20, %struct.ceph_mds_request* %491)
  store i32 %492, i32* %14, align 4
  %493 = load i32, i32* %14, align 4
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %495, label %497

495:                                              ; preds = %487
  %496 = load i32, i32* %14, align 4
  store i32 %496, i32* %12, align 4
  br label %497

497:                                              ; preds = %495, %487
  br label %498

498:                                              ; preds = %497, %483, %480, %458
  br label %499

499:                                              ; preds = %498, %456, %443, %431
  %500 = load %struct.dentry*, %struct.dentry** %10, align 8
  %501 = call i32 @dput(%struct.dentry* %500)
  br label %502

502:                                              ; preds = %499
  %503 = load i32, i32* %15, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %15, align 4
  br label %209

505:                                              ; preds = %209
  br label %506

506:                                              ; preds = %505, %400, %321
  %507 = load i32, i32* %12, align 4
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %521

509:                                              ; preds = %506
  %510 = load i32, i32* %13, align 4
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %521

512:                                              ; preds = %509
  %513 = load i32, i32* @CEPH_MDS_R_DID_PREPOPULATE, align 4
  %514 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %515 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %514, i32 0, i32 2
  %516 = call i32 @set_bit(i32 %513, i32* %515)
  %517 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %20, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %520 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %519, i32 0, i32 1
  store i64 %518, i64* %520, align 8
  br label %521

521:                                              ; preds = %512, %509, %506
  %522 = call i32 @ceph_readdir_cache_release(%struct.ceph_readdir_cache_control* %20)
  %523 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %524 = load i32, i32* %12, align 4
  store i32 %524, i32* %3, align 4
  br label %525

525:                                              ; preds = %521, %51
  %526 = load i32, i32* %3, align 4
  ret i32 %526
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @readdir_prepopulate_inodes_only(%struct.ceph_mds_request*, %struct.ceph_mds_session*) #1

declare dso_local i64 @ceph_str_hash(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @ceph_frag_value(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @ceph_fill_dirfrag(%struct.inode*, %struct.TYPE_18__*) #1

declare dso_local i64 @ceph_frag_is_leftmost(i64) #1

declare dso_local i8* @atomic64_read(i32*) #1

declare dso_local i32 @full_name_hash(%struct.dentry*, i32, i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i8* @ceph_make_fpos(i64, i32, i32) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i64 @ceph_ino(%struct.inode*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__ceph_dir_clear_ordered(%struct.ceph_inode_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.inode* @ceph_get_inode(i32, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @fill_inode(%struct.inode*, i32*, %struct.TYPE_17__*, i32*, %struct.ceph_mds_session*, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, %struct.inode*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @ceph_async_iput(%struct.inode*) #1

declare dso_local i64 @ceph_security_xattr_deadlock(%struct.inode*) #1

declare dso_local i32 @splice_dentry(%struct.dentry**, %struct.inode*) #1

declare dso_local i32 @update_dentry_lease(%struct.inode*, %struct.dentry*, i32, i32, i32) #1

declare dso_local i32 @fill_readdir_cache(%struct.inode*, %struct.dentry*, %struct.ceph_readdir_cache_control*, %struct.ceph_mds_request*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ceph_readdir_cache_release(%struct.ceph_readdir_cache_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
