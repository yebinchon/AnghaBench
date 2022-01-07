; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c___ceph_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c___ceph_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, %struct.TYPE_12__, %struct.TYPE_13__, i32, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.iattr = type { i32, i64, i64, %struct.TYPE_12__, %struct.TYPE_13__, %struct.TYPE_13__, i32, i32 }
%struct.ceph_inode_info = type { i64, i32, i32, i32 }
%struct.ceph_mds_request = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.inode* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32, i8*, i8*, i32, i8*, i8*, i8* }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_cap_flush = type { i32 }
%struct.TYPE_14__ = type { %struct.ceph_mds_client* }

@ENOMEM = common dso_local global i32 0, align 4
@CEPH_MDS_OP_SETATTR = common dso_local global i32 0, align 4
@USE_AUTH_MDS = common dso_local global i32 0, align 4
@CEPH_CAP_ANY_EXCL = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"setattr %p issued %s\0A\00", align 1
@ATTR_UID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"setattr %p uid %d -> %d\0A\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@CEPH_CAP_AUTH_EXCL = common dso_local global i32 0, align 4
@CEPH_CAP_AUTH_SHARED = common dso_local global i32 0, align 4
@CEPH_SETATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"setattr %p gid %d -> %d\0A\00", align 1
@CEPH_SETATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"setattr %p mode 0%o -> 0%o\0A\00", align 1
@CEPH_SETATTR_MODE = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"setattr %p atime %lld.%ld -> %lld.%ld\0A\00", align 1
@CEPH_CAP_FILE_EXCL = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@CEPH_SETATTR_ATIME = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_RD = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"setattr %p size %lld -> %lld\0A\00", align 1
@ATTR_MTIME = common dso_local global i32 0, align 4
@CEPH_SETATTR_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"setattr %p mtime %lld.%ld -> %lld.%ld\0A\00", align 1
@CEPH_SETATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"setattr %p ctime %lld.%ld -> %lld.%ld (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ctime only\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@CEPH_CAP_XATTR_EXCL = common dso_local global i32 0, align 4
@CEPH_SETATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_FILE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"setattr %p ATTR_FILE ... hrm!\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"setattr %p result=%d (%s locally, %d remote)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ceph_setattr(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.ceph_inode_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_mds_request*, align 8
  %9 = alloca %struct.ceph_mds_client*, align 8
  %10 = alloca %struct.ceph_cap_flush*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %19)
  store %struct.ceph_inode_info* %20, %struct.ceph_inode_info** %6, align 8
  %21 = load %struct.iattr*, %struct.iattr** %5, align 8
  %22 = getelementptr inbounds %struct.iattr, %struct.iattr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_14__* @ceph_sb_to_client(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %28, align 8
  store %struct.ceph_mds_client* %29, %struct.ceph_mds_client** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %30 = call %struct.ceph_cap_flush* (...) @ceph_alloc_cap_flush()
  store %struct.ceph_cap_flush* %30, %struct.ceph_cap_flush** %10, align 8
  %31 = load %struct.ceph_cap_flush*, %struct.ceph_cap_flush** %10, align 8
  %32 = icmp ne %struct.ceph_cap_flush* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %733

36:                                               ; preds = %2
  %37 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %38 = load i32, i32* @CEPH_MDS_OP_SETATTR, align 4
  %39 = load i32, i32* @USE_AUTH_MDS, align 4
  %40 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %37, i32 %38, i32 %39)
  store %struct.ceph_mds_request* %40, %struct.ceph_mds_request** %8, align 8
  %41 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %42 = call i64 @IS_ERR(%struct.ceph_mds_request* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.ceph_cap_flush*, %struct.ceph_cap_flush** %10, align 8
  %46 = call i32 @ceph_free_cap_flush(%struct.ceph_cap_flush* %45)
  %47 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %48 = call i32 @PTR_ERR(%struct.ceph_mds_request* %47)
  store i32 %48, i32* %3, align 4
  br label %733

49:                                               ; preds = %36
  %50 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %51 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %50, i32 0, i32 1
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %54 = call i32 @__ceph_caps_issued(%struct.ceph_inode_info* %53, i32* null)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %56 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @CEPH_CAP_ANY_EXCL, align 4
  %62 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  store i32 1, i32* %17, align 4
  %67 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %68 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %67, i32 0, i32 0
  %69 = call i32 @down_read_trylock(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %66
  %72 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %73 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %76 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %75, i32 0, i32 0
  %77 = call i32 @down_read(i32* %76)
  %78 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %79 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %78, i32 0, i32 1
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %82 = call i32 @__ceph_caps_issued(%struct.ceph_inode_info* %81, i32* null)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %71, %66
  br label %84

84:                                               ; preds = %83, %59, %49
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @ceph_cap_string(i32 %86)
  %88 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.inode* %85, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @ATTR_UID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %149

93:                                               ; preds = %84
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @from_kuid(i32* @init_user_ns, i32 %97)
  %99 = load %struct.iattr*, %struct.iattr** %5, align 8
  %100 = getelementptr inbounds %struct.iattr, %struct.iattr* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @from_kuid(i32* @init_user_ns, i32 %101)
  %103 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %94, i32 %98, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %93
  %109 = load %struct.iattr*, %struct.iattr** %5, align 8
  %110 = getelementptr inbounds %struct.iattr, %struct.iattr* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  br label %148

117:                                              ; preds = %93
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @CEPH_CAP_AUTH_SHARED, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %117
  %123 = load %struct.iattr*, %struct.iattr** %5, align 8
  %124 = getelementptr inbounds %struct.iattr, %struct.iattr* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.inode*, %struct.inode** %4, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @uid_eq(i32 %125, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %147, label %131

131:                                              ; preds = %122, %117
  %132 = load %struct.iattr*, %struct.iattr** %5, align 8
  %133 = getelementptr inbounds %struct.iattr, %struct.iattr* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @from_kuid(i32* @init_user_ns, i32 %134)
  %136 = call i8* @cpu_to_le32(i32 %135)
  %137 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %138 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 7
  store i8* %136, i8** %140, align 8
  %141 = load i32, i32* @CEPH_SETATTR_UID, align 4
  %142 = load i32, i32* %14, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* @CEPH_CAP_AUTH_SHARED, align 4
  %145 = load i32, i32* %12, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %131, %122
  br label %148

148:                                              ; preds = %147, %108
  br label %149

149:                                              ; preds = %148, %84
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @ATTR_GID, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %210

154:                                              ; preds = %149
  %155 = load %struct.inode*, %struct.inode** %4, align 8
  %156 = load %struct.inode*, %struct.inode** %4, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @from_kgid(i32* @init_user_ns, i32 %158)
  %160 = load %struct.iattr*, %struct.iattr** %5, align 8
  %161 = getelementptr inbounds %struct.iattr, %struct.iattr* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @from_kgid(i32* @init_user_ns, i32 %162)
  %164 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %155, i32 %159, i32 %163)
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %154
  %170 = load %struct.iattr*, %struct.iattr** %5, align 8
  %171 = getelementptr inbounds %struct.iattr, %struct.iattr* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.inode*, %struct.inode** %4, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %176 = load i32, i32* %13, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %13, align 4
  br label %209

178:                                              ; preds = %154
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @CEPH_CAP_AUTH_SHARED, align 4
  %181 = and i32 %179, %180
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %178
  %184 = load %struct.iattr*, %struct.iattr** %5, align 8
  %185 = getelementptr inbounds %struct.iattr, %struct.iattr* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.inode*, %struct.inode** %4, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @gid_eq(i32 %186, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %208, label %192

192:                                              ; preds = %183, %178
  %193 = load %struct.iattr*, %struct.iattr** %5, align 8
  %194 = getelementptr inbounds %struct.iattr, %struct.iattr* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @from_kgid(i32* @init_user_ns, i32 %195)
  %197 = call i8* @cpu_to_le32(i32 %196)
  %198 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %199 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 6
  store i8* %197, i8** %201, align 8
  %202 = load i32, i32* @CEPH_SETATTR_GID, align 4
  %203 = load i32, i32* %14, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* @CEPH_CAP_AUTH_SHARED, align 4
  %206 = load i32, i32* %12, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %12, align 4
  br label %208

208:                                              ; preds = %192, %183
  br label %209

209:                                              ; preds = %208, %169
  br label %210

210:                                              ; preds = %209, %149
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @ATTR_MODE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %273

215:                                              ; preds = %210
  %216 = load %struct.inode*, %struct.inode** %4, align 8
  %217 = load %struct.inode*, %struct.inode** %4, align 8
  %218 = getelementptr inbounds %struct.inode, %struct.inode* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.iattr*, %struct.iattr** %5, align 8
  %221 = getelementptr inbounds %struct.iattr, %struct.iattr* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), %struct.inode* %216, i64 %219, i64 %222)
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %215
  %229 = load %struct.iattr*, %struct.iattr** %5, align 8
  %230 = getelementptr inbounds %struct.iattr, %struct.iattr* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.inode*, %struct.inode** %4, align 8
  %233 = getelementptr inbounds %struct.inode, %struct.inode* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %235 = load i32, i32* %13, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %13, align 4
  br label %272

237:                                              ; preds = %215
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* @CEPH_CAP_AUTH_SHARED, align 4
  %240 = and i32 %238, %239
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %250, label %242

242:                                              ; preds = %237
  %243 = load %struct.iattr*, %struct.iattr** %5, align 8
  %244 = getelementptr inbounds %struct.iattr, %struct.iattr* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.inode*, %struct.inode** %4, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %245, %248
  br i1 %249, label %250, label %271

250:                                              ; preds = %242, %237
  %251 = load %struct.iattr*, %struct.iattr** %5, align 8
  %252 = getelementptr inbounds %struct.iattr, %struct.iattr* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.inode*, %struct.inode** %4, align 8
  %255 = getelementptr inbounds %struct.inode, %struct.inode* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  %256 = load %struct.iattr*, %struct.iattr** %5, align 8
  %257 = getelementptr inbounds %struct.iattr, %struct.iattr* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = trunc i64 %258 to i32
  %260 = call i8* @cpu_to_le32(i32 %259)
  %261 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %262 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 5
  store i8* %260, i8** %264, align 8
  %265 = load i32, i32* @CEPH_SETATTR_MODE, align 4
  %266 = load i32, i32* %14, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %14, align 4
  %268 = load i32, i32* @CEPH_CAP_AUTH_SHARED, align 4
  %269 = load i32, i32* %12, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %12, align 4
  br label %271

271:                                              ; preds = %250, %242
  br label %272

272:                                              ; preds = %271, %228
  br label %273

273:                                              ; preds = %272, %210
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* @ATTR_ATIME, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %370

278:                                              ; preds = %273
  %279 = load %struct.inode*, %struct.inode** %4, align 8
  %280 = load %struct.inode*, %struct.inode** %4, align 8
  %281 = getelementptr inbounds %struct.inode, %struct.inode* %280, i32 0, i32 5
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.inode*, %struct.inode** %4, align 8
  %285 = getelementptr inbounds %struct.inode, %struct.inode* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.iattr*, %struct.iattr** %5, align 8
  %289 = getelementptr inbounds %struct.iattr, %struct.iattr* %288, i32 0, i32 5
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.iattr*, %struct.iattr** %5, align 8
  %293 = getelementptr inbounds %struct.iattr, %struct.iattr* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), %struct.inode* %279, i32 %283, i32 %287, i32 %291, i32 %295)
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %315

301:                                              ; preds = %278
  %302 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %303 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %303, align 4
  %306 = load %struct.inode*, %struct.inode** %4, align 8
  %307 = getelementptr inbounds %struct.inode, %struct.inode* %306, i32 0, i32 5
  %308 = load %struct.iattr*, %struct.iattr** %5, align 8
  %309 = getelementptr inbounds %struct.iattr, %struct.iattr* %308, i32 0, i32 5
  %310 = bitcast %struct.TYPE_13__* %307 to i8*
  %311 = bitcast %struct.TYPE_13__* %309 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %310, i8* align 8 %311, i64 8, i1 false)
  %312 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %313 = load i32, i32* %13, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %13, align 4
  br label %369

315:                                              ; preds = %278
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %337

320:                                              ; preds = %315
  %321 = load %struct.inode*, %struct.inode** %4, align 8
  %322 = getelementptr inbounds %struct.inode, %struct.inode* %321, i32 0, i32 5
  %323 = load %struct.iattr*, %struct.iattr** %5, align 8
  %324 = getelementptr inbounds %struct.iattr, %struct.iattr* %323, i32 0, i32 5
  %325 = call i64 @timespec64_compare(%struct.TYPE_13__* %322, %struct.TYPE_13__* %324)
  %326 = icmp slt i64 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %320
  %328 = load %struct.inode*, %struct.inode** %4, align 8
  %329 = getelementptr inbounds %struct.inode, %struct.inode* %328, i32 0, i32 5
  %330 = load %struct.iattr*, %struct.iattr** %5, align 8
  %331 = getelementptr inbounds %struct.iattr, %struct.iattr* %330, i32 0, i32 5
  %332 = bitcast %struct.TYPE_13__* %329 to i8*
  %333 = bitcast %struct.TYPE_13__* %331 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %332, i8* align 8 %333, i64 8, i1 false)
  %334 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %335 = load i32, i32* %13, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %13, align 4
  br label %368

337:                                              ; preds = %320, %315
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %340 = and i32 %338, %339
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %349, label %342

342:                                              ; preds = %337
  %343 = load %struct.inode*, %struct.inode** %4, align 8
  %344 = getelementptr inbounds %struct.inode, %struct.inode* %343, i32 0, i32 5
  %345 = load %struct.iattr*, %struct.iattr** %5, align 8
  %346 = getelementptr inbounds %struct.iattr, %struct.iattr* %345, i32 0, i32 5
  %347 = call i32 @timespec64_equal(%struct.TYPE_13__* %344, %struct.TYPE_13__* %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %367, label %349

349:                                              ; preds = %342, %337
  %350 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %351 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 4
  %354 = load %struct.iattr*, %struct.iattr** %5, align 8
  %355 = getelementptr inbounds %struct.iattr, %struct.iattr* %354, i32 0, i32 5
  %356 = call i32 @ceph_encode_timespec64(i32* %353, %struct.TYPE_13__* %355)
  %357 = load i32, i32* @CEPH_SETATTR_ATIME, align 4
  %358 = load i32, i32* %14, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %14, align 4
  %360 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %361 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %362 = or i32 %360, %361
  %363 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %364 = or i32 %362, %363
  %365 = load i32, i32* %12, align 4
  %366 = or i32 %365, %364
  store i32 %366, i32* %12, align 4
  br label %367

367:                                              ; preds = %349, %342
  br label %368

368:                                              ; preds = %367, %327
  br label %369

369:                                              ; preds = %368, %301
  br label %370

370:                                              ; preds = %369, %273
  %371 = load i32, i32* %7, align 4
  %372 = load i32, i32* @ATTR_SIZE, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %463

375:                                              ; preds = %370
  %376 = load %struct.inode*, %struct.inode** %4, align 8
  %377 = load %struct.inode*, %struct.inode** %4, align 8
  %378 = getelementptr inbounds %struct.inode, %struct.inode* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.iattr*, %struct.iattr** %5, align 8
  %381 = getelementptr inbounds %struct.iattr, %struct.iattr* %380, i32 0, i32 2
  %382 = load i64, i64* %381, align 8
  %383 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %struct.inode* %376, i64 %379, i64 %382)
  %384 = load i32, i32* %11, align 4
  %385 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %419

388:                                              ; preds = %375
  %389 = load %struct.iattr*, %struct.iattr** %5, align 8
  %390 = getelementptr inbounds %struct.iattr, %struct.iattr* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.inode*, %struct.inode** %4, align 8
  %393 = getelementptr inbounds %struct.inode, %struct.inode* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = icmp sgt i64 %391, %394
  br i1 %395, label %396, label %419

396:                                              ; preds = %388
  %397 = load %struct.inode*, %struct.inode** %4, align 8
  %398 = load %struct.iattr*, %struct.iattr** %5, align 8
  %399 = getelementptr inbounds %struct.iattr, %struct.iattr* %398, i32 0, i32 2
  %400 = load i64, i64* %399, align 8
  %401 = call i32 @i_size_write(%struct.inode* %397, i64 %400)
  %402 = load %struct.iattr*, %struct.iattr** %5, align 8
  %403 = getelementptr inbounds %struct.iattr, %struct.iattr* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = call i32 @calc_inode_blocks(i64 %404)
  %406 = load %struct.inode*, %struct.inode** %4, align 8
  %407 = getelementptr inbounds %struct.inode, %struct.inode* %406, i32 0, i32 4
  store i32 %405, i32* %407, align 8
  %408 = load %struct.iattr*, %struct.iattr** %5, align 8
  %409 = getelementptr inbounds %struct.iattr, %struct.iattr* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %412 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %411, i32 0, i32 0
  store i64 %410, i64* %412, align 8
  %413 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %414 = load i32, i32* %13, align 4
  %415 = or i32 %414, %413
  store i32 %415, i32* %13, align 4
  %416 = load i32, i32* @ATTR_MTIME, align 4
  %417 = load i32, i32* %7, align 4
  %418 = or i32 %417, %416
  store i32 %418, i32* %7, align 4
  br label %462

419:                                              ; preds = %388, %375
  %420 = load i32, i32* %11, align 4
  %421 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %422 = and i32 %420, %421
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %432, label %424

424:                                              ; preds = %419
  %425 = load %struct.iattr*, %struct.iattr** %5, align 8
  %426 = getelementptr inbounds %struct.iattr, %struct.iattr* %425, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.inode*, %struct.inode** %4, align 8
  %429 = getelementptr inbounds %struct.inode, %struct.inode* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %427, %430
  br i1 %431, label %432, label %461

432:                                              ; preds = %424, %419
  %433 = load %struct.iattr*, %struct.iattr** %5, align 8
  %434 = getelementptr inbounds %struct.iattr, %struct.iattr* %433, i32 0, i32 2
  %435 = load i64, i64* %434, align 8
  %436 = call i8* @cpu_to_le64(i64 %435)
  %437 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %438 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %437, i32 0, i32 3
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i32 0, i32 3
  store i8* %436, i8** %440, align 8
  %441 = load %struct.inode*, %struct.inode** %4, align 8
  %442 = getelementptr inbounds %struct.inode, %struct.inode* %441, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = call i8* @cpu_to_le64(i64 %443)
  %445 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %446 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %445, i32 0, i32 3
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %447, i32 0, i32 2
  store i8* %444, i8** %448, align 8
  %449 = load i32, i32* @CEPH_SETATTR_SIZE, align 4
  %450 = load i32, i32* %14, align 4
  %451 = or i32 %450, %449
  store i32 %451, i32* %14, align 4
  %452 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %453 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %454 = or i32 %452, %453
  %455 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %456 = or i32 %454, %455
  %457 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %458 = or i32 %456, %457
  %459 = load i32, i32* %12, align 4
  %460 = or i32 %459, %458
  store i32 %460, i32* %12, align 4
  br label %461

461:                                              ; preds = %432, %424
  br label %462

462:                                              ; preds = %461, %396
  br label %463

463:                                              ; preds = %462, %370
  %464 = load i32, i32* %7, align 4
  %465 = load i32, i32* @ATTR_MTIME, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %560

468:                                              ; preds = %463
  %469 = load %struct.inode*, %struct.inode** %4, align 8
  %470 = load %struct.inode*, %struct.inode** %4, align 8
  %471 = getelementptr inbounds %struct.inode, %struct.inode* %470, i32 0, i32 3
  %472 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.inode*, %struct.inode** %4, align 8
  %475 = getelementptr inbounds %struct.inode, %struct.inode* %474, i32 0, i32 3
  %476 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.iattr*, %struct.iattr** %5, align 8
  %479 = getelementptr inbounds %struct.iattr, %struct.iattr* %478, i32 0, i32 4
  %480 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.iattr*, %struct.iattr** %5, align 8
  %483 = getelementptr inbounds %struct.iattr, %struct.iattr* %482, i32 0, i32 4
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), %struct.inode* %469, i32 %473, i32 %477, i32 %481, i32 %485)
  %487 = load i32, i32* %11, align 4
  %488 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %505

491:                                              ; preds = %468
  %492 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %493 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %493, align 4
  %496 = load %struct.inode*, %struct.inode** %4, align 8
  %497 = getelementptr inbounds %struct.inode, %struct.inode* %496, i32 0, i32 3
  %498 = load %struct.iattr*, %struct.iattr** %5, align 8
  %499 = getelementptr inbounds %struct.iattr, %struct.iattr* %498, i32 0, i32 4
  %500 = bitcast %struct.TYPE_13__* %497 to i8*
  %501 = bitcast %struct.TYPE_13__* %499 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %500, i8* align 8 %501, i64 8, i1 false)
  %502 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %503 = load i32, i32* %13, align 4
  %504 = or i32 %503, %502
  store i32 %504, i32* %13, align 4
  br label %559

505:                                              ; preds = %468
  %506 = load i32, i32* %11, align 4
  %507 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %527

510:                                              ; preds = %505
  %511 = load %struct.inode*, %struct.inode** %4, align 8
  %512 = getelementptr inbounds %struct.inode, %struct.inode* %511, i32 0, i32 3
  %513 = load %struct.iattr*, %struct.iattr** %5, align 8
  %514 = getelementptr inbounds %struct.iattr, %struct.iattr* %513, i32 0, i32 4
  %515 = call i64 @timespec64_compare(%struct.TYPE_13__* %512, %struct.TYPE_13__* %514)
  %516 = icmp slt i64 %515, 0
  br i1 %516, label %517, label %527

517:                                              ; preds = %510
  %518 = load %struct.inode*, %struct.inode** %4, align 8
  %519 = getelementptr inbounds %struct.inode, %struct.inode* %518, i32 0, i32 3
  %520 = load %struct.iattr*, %struct.iattr** %5, align 8
  %521 = getelementptr inbounds %struct.iattr, %struct.iattr* %520, i32 0, i32 4
  %522 = bitcast %struct.TYPE_13__* %519 to i8*
  %523 = bitcast %struct.TYPE_13__* %521 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %522, i8* align 8 %523, i64 8, i1 false)
  %524 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %525 = load i32, i32* %13, align 4
  %526 = or i32 %525, %524
  store i32 %526, i32* %13, align 4
  br label %558

527:                                              ; preds = %510, %505
  %528 = load i32, i32* %11, align 4
  %529 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %530 = and i32 %528, %529
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %539, label %532

532:                                              ; preds = %527
  %533 = load %struct.inode*, %struct.inode** %4, align 8
  %534 = getelementptr inbounds %struct.inode, %struct.inode* %533, i32 0, i32 3
  %535 = load %struct.iattr*, %struct.iattr** %5, align 8
  %536 = getelementptr inbounds %struct.iattr, %struct.iattr* %535, i32 0, i32 4
  %537 = call i32 @timespec64_equal(%struct.TYPE_13__* %534, %struct.TYPE_13__* %536)
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %557, label %539

539:                                              ; preds = %532, %527
  %540 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %541 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %540, i32 0, i32 3
  %542 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %542, i32 0, i32 1
  %544 = load %struct.iattr*, %struct.iattr** %5, align 8
  %545 = getelementptr inbounds %struct.iattr, %struct.iattr* %544, i32 0, i32 4
  %546 = call i32 @ceph_encode_timespec64(i32* %543, %struct.TYPE_13__* %545)
  %547 = load i32, i32* @CEPH_SETATTR_MTIME, align 4
  %548 = load i32, i32* %14, align 4
  %549 = or i32 %548, %547
  store i32 %549, i32* %14, align 4
  %550 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %551 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %552 = or i32 %550, %551
  %553 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %554 = or i32 %552, %553
  %555 = load i32, i32* %12, align 4
  %556 = or i32 %555, %554
  store i32 %556, i32* %12, align 4
  br label %557

557:                                              ; preds = %539, %532
  br label %558

558:                                              ; preds = %557, %517
  br label %559

559:                                              ; preds = %558, %491
  br label %560

560:                                              ; preds = %559, %463
  %561 = load i32, i32* %7, align 4
  %562 = load i32, i32* @ATTR_CTIME, align 4
  %563 = and i32 %561, %562
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %640

565:                                              ; preds = %560
  %566 = load i32, i32* %7, align 4
  %567 = load i32, i32* @ATTR_SIZE, align 4
  %568 = load i32, i32* @ATTR_MTIME, align 4
  %569 = or i32 %567, %568
  %570 = load i32, i32* @ATTR_ATIME, align 4
  %571 = or i32 %569, %570
  %572 = load i32, i32* @ATTR_MODE, align 4
  %573 = or i32 %571, %572
  %574 = load i32, i32* @ATTR_UID, align 4
  %575 = or i32 %573, %574
  %576 = load i32, i32* @ATTR_GID, align 4
  %577 = or i32 %575, %576
  %578 = and i32 %566, %577
  %579 = icmp eq i32 %578, 0
  %580 = zext i1 %579 to i32
  store i32 %580, i32* %18, align 4
  %581 = load %struct.inode*, %struct.inode** %4, align 8
  %582 = load %struct.inode*, %struct.inode** %4, align 8
  %583 = getelementptr inbounds %struct.inode, %struct.inode* %582, i32 0, i32 2
  %584 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.inode*, %struct.inode** %4, align 8
  %587 = getelementptr inbounds %struct.inode, %struct.inode* %586, i32 0, i32 2
  %588 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 8
  %590 = load %struct.iattr*, %struct.iattr** %5, align 8
  %591 = getelementptr inbounds %struct.iattr, %struct.iattr* %590, i32 0, i32 3
  %592 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 4
  %594 = load %struct.iattr*, %struct.iattr** %5, align 8
  %595 = getelementptr inbounds %struct.iattr, %struct.iattr* %594, i32 0, i32 3
  %596 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = load i32, i32* %18, align 4
  %599 = icmp ne i32 %598, 0
  %600 = zext i1 %599 to i64
  %601 = select i1 %599, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %602 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), %struct.inode* %581, i32 %585, i32 %589, i32 %593, i32 %597, i8* %601)
  %603 = load i32, i32* %18, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %639

605:                                              ; preds = %565
  %606 = load i32, i32* %11, align 4
  %607 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %608 = and i32 %606, %607
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %614

610:                                              ; preds = %605
  %611 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %612 = load i32, i32* %13, align 4
  %613 = or i32 %612, %611
  store i32 %613, i32* %13, align 4
  br label %638

614:                                              ; preds = %605
  %615 = load i32, i32* %11, align 4
  %616 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %617 = and i32 %615, %616
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %623

619:                                              ; preds = %614
  %620 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %621 = load i32, i32* %13, align 4
  %622 = or i32 %621, %620
  store i32 %622, i32* %13, align 4
  br label %637

623:                                              ; preds = %614
  %624 = load i32, i32* %11, align 4
  %625 = load i32, i32* @CEPH_CAP_XATTR_EXCL, align 4
  %626 = and i32 %624, %625
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %632

628:                                              ; preds = %623
  %629 = load i32, i32* @CEPH_CAP_XATTR_EXCL, align 4
  %630 = load i32, i32* %13, align 4
  %631 = or i32 %630, %629
  store i32 %631, i32* %13, align 4
  br label %636

632:                                              ; preds = %623
  %633 = load i32, i32* @CEPH_SETATTR_CTIME, align 4
  %634 = load i32, i32* %14, align 4
  %635 = or i32 %634, %633
  store i32 %635, i32* %14, align 4
  br label %636

636:                                              ; preds = %632, %628
  br label %637

637:                                              ; preds = %636, %619
  br label %638

638:                                              ; preds = %637, %610
  br label %639

639:                                              ; preds = %638, %565
  br label %640

640:                                              ; preds = %639, %560
  %641 = load i32, i32* %7, align 4
  %642 = load i32, i32* @ATTR_FILE, align 4
  %643 = and i32 %641, %642
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %648

645:                                              ; preds = %640
  %646 = load %struct.inode*, %struct.inode** %4, align 8
  %647 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), %struct.inode* %646)
  br label %648

648:                                              ; preds = %645, %640
  %649 = load i32, i32* %13, align 4
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %661

651:                                              ; preds = %648
  %652 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %653 = load i32, i32* %13, align 4
  %654 = call i32 @__ceph_mark_dirty_caps(%struct.ceph_inode_info* %652, i32 %653, %struct.ceph_cap_flush** %10)
  store i32 %654, i32* %16, align 4
  %655 = load %struct.inode*, %struct.inode** %4, align 8
  %656 = getelementptr inbounds %struct.inode, %struct.inode* %655, i32 0, i32 2
  %657 = load %struct.iattr*, %struct.iattr** %5, align 8
  %658 = getelementptr inbounds %struct.iattr, %struct.iattr* %657, i32 0, i32 3
  %659 = bitcast %struct.TYPE_12__* %656 to i8*
  %660 = bitcast %struct.TYPE_12__* %658 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %659, i8* align 8 %660, i64 8, i1 false)
  br label %661

661:                                              ; preds = %651, %648
  %662 = load i32, i32* %11, align 4
  %663 = load i32, i32* %12, align 4
  %664 = and i32 %663, %662
  store i32 %664, i32* %12, align 4
  %665 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %666 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %665, i32 0, i32 1
  %667 = call i32 @spin_unlock(i32* %666)
  %668 = load i32, i32* %17, align 4
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %674

670:                                              ; preds = %661
  %671 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %672 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %671, i32 0, i32 0
  %673 = call i32 @up_read(i32* %672)
  br label %674

674:                                              ; preds = %670, %661
  %675 = load i32, i32* %16, align 4
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %681

677:                                              ; preds = %674
  %678 = load %struct.inode*, %struct.inode** %4, align 8
  %679 = load i32, i32* %16, align 4
  %680 = call i32 @__mark_inode_dirty(%struct.inode* %678, i32 %679)
  br label %681

681:                                              ; preds = %677, %674
  %682 = load i32, i32* %14, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %710

684:                                              ; preds = %681
  %685 = load %struct.inode*, %struct.inode** %4, align 8
  %686 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %687 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %686, i32 0, i32 4
  store %struct.inode* %685, %struct.inode** %687, align 8
  %688 = load %struct.inode*, %struct.inode** %4, align 8
  %689 = call i32 @ihold(%struct.inode* %688)
  %690 = load i32, i32* %12, align 4
  %691 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %692 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %691, i32 0, i32 0
  store i32 %690, i32* %692, align 8
  %693 = load i32, i32* %14, align 4
  %694 = call i8* @cpu_to_le32(i32 %693)
  %695 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %696 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %695, i32 0, i32 3
  %697 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %696, i32 0, i32 0
  %698 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %697, i32 0, i32 0
  store i8* %694, i8** %698, align 8
  %699 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %700 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %699, i32 0, i32 1
  store i32 1, i32* %700, align 4
  %701 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %702 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %701, i32 0, i32 2
  %703 = load %struct.iattr*, %struct.iattr** %5, align 8
  %704 = getelementptr inbounds %struct.iattr, %struct.iattr* %703, i32 0, i32 3
  %705 = bitcast %struct.TYPE_12__* %702 to i8*
  %706 = bitcast %struct.TYPE_12__* %704 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %705, i8* align 8 %706, i64 8, i1 false)
  %707 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %708 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %709 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %707, i32* null, %struct.ceph_mds_request* %708)
  store i32 %709, i32* %15, align 4
  br label %710

710:                                              ; preds = %684, %681
  %711 = load %struct.inode*, %struct.inode** %4, align 8
  %712 = load i32, i32* %15, align 4
  %713 = load i32, i32* %13, align 4
  %714 = call i32 @ceph_cap_string(i32 %713)
  %715 = load i32, i32* %14, align 4
  %716 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), %struct.inode* %711, i32 %712, i32 %714, i32 %715)
  %717 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %718 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %717)
  %719 = load %struct.ceph_cap_flush*, %struct.ceph_cap_flush** %10, align 8
  %720 = call i32 @ceph_free_cap_flush(%struct.ceph_cap_flush* %719)
  %721 = load i32, i32* %15, align 4
  %722 = icmp sge i32 %721, 0
  br i1 %722, label %723, label %731

723:                                              ; preds = %710
  %724 = load i32, i32* %14, align 4
  %725 = load i32, i32* @CEPH_SETATTR_SIZE, align 4
  %726 = and i32 %724, %725
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %728, label %731

728:                                              ; preds = %723
  %729 = load %struct.inode*, %struct.inode** %4, align 8
  %730 = call i32 @__ceph_do_pending_vmtruncate(%struct.inode* %729)
  br label %731

731:                                              ; preds = %728, %723, %710
  %732 = load i32, i32* %15, align 4
  store i32 %732, i32* %3, align 4
  br label %733

733:                                              ; preds = %731, %44, %33
  %734 = load i32, i32* %3, align 4
  ret i32 %734
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_14__* @ceph_sb_to_client(i32) #1

declare dso_local %struct.ceph_cap_flush* @ceph_alloc_cap_flush(...) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_free_cap_flush(%struct.ceph_cap_flush*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_caps_issued(%struct.ceph_inode_info*, i32*) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, ...) #1

declare dso_local i32 @ceph_cap_string(i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @timespec64_compare(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @timespec64_equal(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ceph_encode_timespec64(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @calc_inode_blocks(i64) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @__ceph_mark_dirty_caps(%struct.ceph_inode_info*, i32, %struct.ceph_cap_flush**) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, i32*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

declare dso_local i32 @__ceph_do_pending_vmtruncate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
