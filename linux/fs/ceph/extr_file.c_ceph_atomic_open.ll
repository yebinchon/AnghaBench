; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_atomic_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_atomic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, i32, i64, i32, i64, i32, %struct.TYPE_10__, i32, %struct.inode*, %struct.TYPE_8__, i32*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.file = type { i32 }
%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, i32, i64, i32, i64, i32, %struct.TYPE_10__, i32, %struct.inode*, %struct.TYPE_8__, i32*, i32, i32, %struct.TYPE_6__ }
%struct.ceph_acl_sec_ctx = type { i32* }

@.str = private unnamed_addr constant [53 x i8] c"atomic_open %p dentry %p '%pd' %s flags %d mode 0%o\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"unhashed\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hashed\00", align 1
@NAME_MAX = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_AUTH_EXCL = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_EXCL = common dso_local global i32 0, align 4
@CEPH_STAT_CAP_INODE = common dso_local global i32 0, align 4
@CEPH_CAP_AUTH_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_XATTR_SHARED = common dso_local global i32 0, align 4
@CEPH_MDS_R_PARENT_LOCKED = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"atomic_open finish_no_open on dn %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"atomic_open finish_open on dn %p\0A\00", align 1
@CEPH_MDS_OP_CREATE = common dso_local global i64 0, align 8
@FMODE_CREATED = common dso_local global i32 0, align 4
@ceph_open = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"atomic_open result=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_atomic_open(%struct.inode* %0, %struct.dentry* %1, %struct.file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ceph_fs_client*, align 8
  %13 = alloca %struct.ceph_mds_client*, align 8
  %14 = alloca %struct.ceph_mds_request*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.ceph_acl_sec_ctx, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %21)
  store %struct.ceph_fs_client* %22, %struct.ceph_fs_client** %12, align 8
  %23 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %12, align 8
  %24 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %23, i32 0, i32 0
  %25 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %24, align 8
  store %struct.ceph_mds_client* %25, %struct.ceph_mds_client** %13, align 8
  %26 = bitcast %struct.ceph_acl_sec_ctx* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 8, i1 false)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = load %struct.dentry*, %struct.dentry** %8, align 8
  %31 = call i64 @d_unhashed(%struct.dentry* %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.inode* %27, %struct.dentry* %28, %struct.dentry* %29, i8* %34, i32 %35, i32 %36)
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 13
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NAME_MAX, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %5
  %45 = load i32, i32* @ENAMETOOLONG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %289

47:                                               ; preds = %5
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @O_CREAT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = call i64 @ceph_quota_is_max_files_exceeded(%struct.inode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EDQUOT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %289

59:                                               ; preds = %52
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call i32 @ceph_pre_init_acls(%struct.inode* %60, i32* %11, %struct.ceph_acl_sec_ctx* %16)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %18, align 4
  store i32 %65, i32* %6, align 4
  br label %289

66:                                               ; preds = %59
  %67 = load %struct.dentry*, %struct.dentry** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @ceph_security_init_secctx(%struct.dentry* %67, i32 %68, %struct.ceph_acl_sec_ctx* %16)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %284

73:                                               ; preds = %66
  br label %82

74:                                               ; preds = %47
  %75 = load %struct.dentry*, %struct.dentry** %8, align 8
  %76 = call i64 @d_in_lookup(%struct.dentry* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @ENOENT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %289

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %73
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call %struct.dentry* @prepare_open_request(i32 %85, i32 %86, i32 %87)
  %89 = bitcast %struct.dentry* %88 to %struct.ceph_mds_request*
  store %struct.ceph_mds_request* %89, %struct.ceph_mds_request** %14, align 8
  %90 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %91 = bitcast %struct.ceph_mds_request* %90 to %struct.dentry*
  %92 = call i64 @IS_ERR(%struct.dentry* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %82
  %95 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %96 = bitcast %struct.ceph_mds_request* %95 to %struct.dentry*
  %97 = call i32 @PTR_ERR(%struct.dentry* %96)
  store i32 %97, i32* %18, align 4
  br label %284

98:                                               ; preds = %82
  %99 = load %struct.dentry*, %struct.dentry** %8, align 8
  %100 = call i32 @dget(%struct.dentry* %99)
  %101 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %102 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %101, i32 0, i32 12
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %104 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %103, i32 0, i32 0
  store i32 2, i32* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @O_CREAT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %98
  %110 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %111 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %114 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %116 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %117 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %116, i32 0, i32 11
  store i32 %115, i32* %117, align 8
  %118 = getelementptr inbounds %struct.ceph_acl_sec_ctx, %struct.ceph_acl_sec_ctx* %16, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %109
  %122 = getelementptr inbounds %struct.ceph_acl_sec_ctx, %struct.ceph_acl_sec_ctx* %16, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %125 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %124, i32 0, i32 10
  store i32* %123, i32** %125, align 8
  %126 = getelementptr inbounds %struct.ceph_acl_sec_ctx, %struct.ceph_acl_sec_ctx* %16, i32 0, i32 0
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %121, %109
  br label %128

128:                                              ; preds = %127, %98
  %129 = load i32, i32* @CEPH_STAT_CAP_INODE, align 4
  %130 = load i32, i32* @CEPH_CAP_AUTH_SHARED, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %17, align 4
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = call i64 @ceph_security_xattr_wanted(%struct.inode* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i32, i32* @CEPH_CAP_XATTR_SHARED, align 4
  %137 = load i32, i32* %17, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %135, %128
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @cpu_to_le32(i32 %140)
  %142 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %143 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %142, i32 0, i32 9
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 8
  %146 = load %struct.inode*, %struct.inode** %7, align 8
  %147 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %148 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %147, i32 0, i32 8
  store %struct.inode* %146, %struct.inode** %148, align 8
  %149 = load i32, i32* @CEPH_MDS_R_PARENT_LOCKED, align 4
  %150 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %151 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %150, i32 0, i32 7
  %152 = call i32 @set_bit(i32 %149, i32* %151)
  %153 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %13, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @O_CREAT, align 4
  %156 = load i32, i32* @O_TRUNC, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %139
  %161 = load %struct.inode*, %struct.inode** %7, align 8
  br label %163

162:                                              ; preds = %139
  br label %163

163:                                              ; preds = %162, %160
  %164 = phi %struct.inode* [ %161, %160 ], [ null, %162 ]
  %165 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %166 = bitcast %struct.ceph_mds_request* %165 to %struct.dentry*
  %167 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %153, %struct.inode* %164, %struct.dentry* %166)
  store i32 %167, i32* %18, align 4
  %168 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %169 = bitcast %struct.ceph_mds_request* %168 to %struct.dentry*
  %170 = load %struct.dentry*, %struct.dentry** %8, align 8
  %171 = load i32, i32* %18, align 4
  %172 = call i32 @ceph_handle_snapdir(%struct.dentry* %169, %struct.dentry* %170, i32 %171)
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %18, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %163
  br label %261

176:                                              ; preds = %163
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @O_CREAT, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %176
  %182 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %183 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %181
  %190 = load %struct.inode*, %struct.inode** %7, align 8
  %191 = load %struct.dentry*, %struct.dentry** %8, align 8
  %192 = call i32 @ceph_handle_notrace_create(%struct.inode* %190, %struct.dentry* %191)
  store i32 %192, i32* %18, align 4
  br label %193

193:                                              ; preds = %189, %181, %176
  %194 = load %struct.dentry*, %struct.dentry** %8, align 8
  %195 = call i64 @d_in_lookup(%struct.dentry* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %193
  %198 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %199 = bitcast %struct.ceph_mds_request* %198 to %struct.dentry*
  %200 = load %struct.dentry*, %struct.dentry** %8, align 8
  %201 = load i32, i32* %18, align 4
  %202 = call %struct.dentry* @ceph_finish_lookup(%struct.dentry* %199, %struct.dentry* %200, i32 %201)
  store %struct.dentry* %202, %struct.dentry** %15, align 8
  %203 = load %struct.dentry*, %struct.dentry** %15, align 8
  %204 = call i64 @IS_ERR(%struct.dentry* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load %struct.dentry*, %struct.dentry** %15, align 8
  %208 = call i32 @PTR_ERR(%struct.dentry* %207)
  store i32 %208, i32* %18, align 4
  br label %209

209:                                              ; preds = %206, %197
  br label %211

210:                                              ; preds = %193
  store %struct.dentry* null, %struct.dentry** %15, align 8
  br label %211

211:                                              ; preds = %210, %209
  %212 = load i32, i32* %18, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %261

215:                                              ; preds = %211
  %216 = load %struct.dentry*, %struct.dentry** %15, align 8
  %217 = icmp ne %struct.dentry* %216, null
  br i1 %217, label %226, label %218

218:                                              ; preds = %215
  %219 = load %struct.dentry*, %struct.dentry** %8, align 8
  %220 = call i64 @d_really_is_negative(%struct.dentry* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = load %struct.dentry*, %struct.dentry** %8, align 8
  %224 = call i64 @d_is_symlink(%struct.dentry* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %222, %218, %215
  %227 = load %struct.dentry*, %struct.dentry** %15, align 8
  %228 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.dentry* %227)
  %229 = load %struct.file*, %struct.file** %9, align 8
  %230 = load %struct.dentry*, %struct.dentry** %15, align 8
  %231 = call i32 @finish_no_open(%struct.file* %229, %struct.dentry* %230)
  store i32 %231, i32* %18, align 4
  br label %260

232:                                              ; preds = %222
  %233 = load %struct.dentry*, %struct.dentry** %15, align 8
  %234 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), %struct.dentry* %233)
  %235 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %236 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @CEPH_MDS_OP_CREATE, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %255

240:                                              ; preds = %232
  %241 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %242 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %240
  %247 = load %struct.dentry*, %struct.dentry** %8, align 8
  %248 = call i32 @d_inode(%struct.dentry* %247)
  %249 = call i32 @ceph_init_inode_acls(i32 %248, %struct.ceph_acl_sec_ctx* %16)
  %250 = load i32, i32* @FMODE_CREATED, align 4
  %251 = load %struct.file*, %struct.file** %9, align 8
  %252 = getelementptr inbounds %struct.file, %struct.file* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %246, %240, %232
  %256 = load %struct.file*, %struct.file** %9, align 8
  %257 = load %struct.dentry*, %struct.dentry** %8, align 8
  %258 = load i32, i32* @ceph_open, align 4
  %259 = call i32 @finish_open(%struct.file* %256, %struct.dentry* %257, i32 %258)
  store i32 %259, i32* %18, align 4
  br label %260

260:                                              ; preds = %255, %226
  br label %261

261:                                              ; preds = %260, %214, %175
  %262 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %263 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %280, label %266

266:                                              ; preds = %261
  %267 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %268 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %266
  %272 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %273 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %272, i32 0, i32 4
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @ceph_inode(i64 %274)
  %276 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %277 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @ceph_put_fmode(i32 %275, i32 %278)
  br label %280

280:                                              ; preds = %271, %266, %261
  %281 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %282 = bitcast %struct.ceph_mds_request* %281 to %struct.dentry*
  %283 = call i32 @ceph_mdsc_put_request(%struct.dentry* %282)
  br label %284

284:                                              ; preds = %280, %94, %72
  %285 = call i32 @ceph_release_acl_sec_ctx(%struct.ceph_acl_sec_ctx* %16)
  %286 = load i32, i32* %18, align 4
  %287 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %286)
  %288 = load i32, i32* %18, align 4
  store i32 %288, i32* %6, align 4
  br label %289

289:                                              ; preds = %284, %78, %64, %56, %44
  %290 = load i32, i32* %6, align 4
  ret i32 %290
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local i64 @ceph_quota_is_max_files_exceeded(%struct.inode*) #1

declare dso_local i32 @ceph_pre_init_acls(%struct.inode*, i32*, %struct.ceph_acl_sec_ctx*) #1

declare dso_local i32 @ceph_security_init_secctx(%struct.dentry*, i32, %struct.ceph_acl_sec_ctx*) #1

declare dso_local i64 @d_in_lookup(%struct.dentry*) #1

declare dso_local %struct.dentry* @prepare_open_request(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i64 @ceph_security_xattr_wanted(%struct.inode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @ceph_handle_snapdir(%struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @ceph_handle_notrace_create(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.dentry* @ceph_finish_lookup(%struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i64 @d_is_symlink(%struct.dentry*) #1

declare dso_local i32 @finish_no_open(%struct.file*, %struct.dentry*) #1

declare dso_local i32 @ceph_init_inode_acls(i32, %struct.ceph_acl_sec_ctx*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @finish_open(%struct.file*, %struct.dentry*, i32) #1

declare dso_local i32 @ceph_put_fmode(i32, i32) #1

declare dso_local i32 @ceph_inode(i64) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.dentry*) #1

declare dso_local i32 @ceph_release_acl_sec_ctx(%struct.ceph_acl_sec_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
