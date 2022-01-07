; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_export.c___get_snap_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_export.c___get_snap_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.ceph_fs_client = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ceph_mds_request = type { i32, i8*, %struct.ceph_mds_reply_info_parsed, i32, %struct.inode*, %struct.TYPE_8__, i32 }
%struct.ceph_mds_reply_info_parsed = type { i32, %struct.ceph_mds_reply_dir_entry*, i64 }
%struct.ceph_mds_reply_dir_entry = type { i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@CEPH_MDS_OP_LSSNAP = common dso_local global i32 0, align 4
@USE_AUTH_MDS = common dso_local global i32 0, align 4
@CEPH_READDIR_REPLY_BITFLAGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"get_snap_name %p ino %llx.%llx err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, %struct.dentry*)* @__get_snap_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_snap_name(%struct.dentry* %0, i8* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ceph_fs_client*, align 8
  %10 = alloca %struct.ceph_mds_request*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %15 = alloca %struct.ceph_mds_reply_dir_entry*, align 8
  %16 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = call %struct.inode* @d_inode(%struct.dentry* %17)
  store %struct.inode* %18, %struct.inode** %7, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = call %struct.inode* @d_inode(%struct.dentry* %19)
  store %struct.inode* %20, %struct.inode** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %21)
  store %struct.ceph_fs_client* %22, %struct.ceph_fs_client** %9, align 8
  store %struct.ceph_mds_request* null, %struct.ceph_mds_request** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 2, i32* %12, align 4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %13, align 4
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i64 @ceph_ino(%struct.inode* %25)
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = call i64 @ceph_ino(%struct.inode* %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %216

31:                                               ; preds = %3
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call i64 @ceph_snap(%struct.inode* %32)
  %34 = load i64, i64* @CEPH_SNAPDIR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call i64 @ceph_snap(%struct.inode* %37)
  %39 = load i64, i64* @CEPH_NOSNAP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %9, align 8
  %44 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcpy(i8* %42, i32 %47)
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %41, %36
  br label %216

50:                                               ; preds = %31
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = call i64 @ceph_snap(%struct.inode* %51)
  %53 = load i64, i64* @CEPH_SNAPDIR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %216

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %210
  %58 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %9, align 8
  %59 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CEPH_MDS_OP_LSSNAP, align 4
  %62 = load i32, i32* @USE_AUTH_MDS, align 4
  %63 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(i32 %60, i32 %61, i32 %62)
  store %struct.ceph_mds_request* %63, %struct.ceph_mds_request** %10, align 8
  %64 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %65 = call i64 @IS_ERR(%struct.ceph_mds_request* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %69 = call i32 @PTR_ERR(%struct.ceph_mds_request* %68)
  store i32 %69, i32* %13, align 4
  store %struct.ceph_mds_request* null, %struct.ceph_mds_request** %10, align 8
  br label %216

70:                                               ; preds = %57
  %71 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = call i32 @ceph_alloc_readdir_reply_buffer(%struct.ceph_mds_request* %71, %struct.inode* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %216

77:                                               ; preds = %70
  %78 = load i32, i32* @USE_AUTH_MDS, align 4
  %79 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %80 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %83 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @CEPH_READDIR_REPLY_BITFLAGS, align 4
  %85 = call i32 @cpu_to_le16(i32 %84)
  %86 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %87 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %77
  %93 = load i8*, i8** %11, align 8
  %94 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %95 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  store i8* null, i8** %11, align 8
  br label %96

96:                                               ; preds = %92, %77
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %99 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %98, i32 0, i32 4
  store %struct.inode* %97, %struct.inode** %99, align 8
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = call i32 @ihold(%struct.inode* %100)
  %102 = load %struct.dentry*, %struct.dentry** %4, align 8
  %103 = call i32 @dget(%struct.dentry* %102)
  %104 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %105 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load %struct.inode*, %struct.inode** %8, align 8
  %107 = call i32 @inode_lock(%struct.inode* %106)
  %108 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %9, align 8
  %109 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %112 = call i32 @ceph_mdsc_do_request(i32 %110, i32* null, %struct.ceph_mds_request* %111)
  store i32 %112, i32* %13, align 4
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = call i32 @inode_unlock(%struct.inode* %113)
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %96
  br label %216

118:                                              ; preds = %96
  %119 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %120 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %119, i32 0, i32 2
  store %struct.ceph_mds_reply_info_parsed* %120, %struct.ceph_mds_reply_info_parsed** %14, align 8
  store i32 0, i32* %16, align 4
  br label %121

121:                                              ; preds = %167, %118
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %124 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %170

127:                                              ; preds = %121
  %128 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %129 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %128, i32 0, i32 1
  %130 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %130, i64 %132
  store %struct.ceph_mds_reply_dir_entry* %133, %struct.ceph_mds_reply_dir_entry** %15, align 8
  %134 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %15, align 8
  %135 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = icmp ne %struct.TYPE_9__* %137, null
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 @BUG_ON(i32 %140)
  %142 = load %struct.inode*, %struct.inode** %7, align 8
  %143 = call i64 @ceph_snap(%struct.inode* %142)
  %144 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %15, align 8
  %145 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @le64_to_cpu(i32 %149)
  %151 = icmp eq i64 %143, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %127
  %153 = load i8*, i8** %5, align 8
  %154 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %15, align 8
  %155 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %15, align 8
  %158 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @memcpy(i8* %153, i32 %156, i64 %159)
  %161 = load i8*, i8** %5, align 8
  %162 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %15, align 8
  %163 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  store i8 0, i8* %165, align 1
  store i32 0, i32* %13, align 4
  br label %216

166:                                              ; preds = %127
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %16, align 4
  br label %121

170:                                              ; preds = %121
  %171 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %172 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %213

176:                                              ; preds = %170
  %177 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %178 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp sle i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @BUG_ON(i32 %181)
  %183 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %184 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %183, i32 0, i32 1
  %185 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %184, align 8
  %186 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %187 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %185, i64 %190
  store %struct.ceph_mds_reply_dir_entry* %191, %struct.ceph_mds_reply_dir_entry** %15, align 8
  %192 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %14, align 8
  %193 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = add i32 %195, %194
  store i32 %196, i32* %12, align 4
  %197 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %15, align 8
  %198 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %15, align 8
  %201 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @GFP_KERNEL, align 4
  %204 = call i8* @kstrndup(i32 %199, i64 %202, i32 %203)
  store i8* %204, i8** %11, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %176
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %13, align 4
  br label %216

210:                                              ; preds = %176
  %211 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %212 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %211)
  store %struct.ceph_mds_request* null, %struct.ceph_mds_request** %10, align 8
  br label %57

213:                                              ; preds = %175
  %214 = load i32, i32* @ENOENT, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %13, align 4
  br label %216

216:                                              ; preds = %213, %207, %152, %117, %76, %67, %55, %49, %30
  %217 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %218 = icmp ne %struct.ceph_mds_request* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %221 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i8*, i8** %11, align 8
  %224 = call i32 @kfree(i8* %223)
  %225 = load %struct.dentry*, %struct.dentry** %6, align 8
  %226 = load %struct.inode*, %struct.inode** %7, align 8
  %227 = call i32 @ceph_vinop(%struct.inode* %226)
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.dentry* %225, i32 %227, i32 %228)
  %230 = load i32, i32* %13, align 4
  ret i32 %230
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i64 @ceph_ino(%struct.inode*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_alloc_readdir_reply_buffer(%struct.ceph_mds_request*, %struct.inode*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ceph_mdsc_do_request(i32, i32*, %struct.ceph_mds_request*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i8* @kstrndup(i32, i64, i32) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dout(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @ceph_vinop(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
