; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_export.c___snapfh_to_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_export.c___snapfh_to_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.ceph_nfs_snapfh = type { i64, i64, i64, i32 }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, %struct.inode*, %struct.ceph_vino, %struct.TYPE_5__ }
%struct.inode = type { i64 }
%struct.ceph_vino = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.ceph_mds_client* }

@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@CEPH_MDS_OP_LOOKUPINO = common dso_local global i32 0, align 4
@USE_ANY_MDS = common dso_local global i32 0, align 4
@CEPH_STAT_CAP_INODE = common dso_local global i32 0, align 4
@CEPH_CAP_XATTR_SHARED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"snapfh_to_parent %llx.%llx\0A err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"snapfh_to_dentry %llx.%llx parent %llx hash %x err=%d\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.ceph_nfs_snapfh*, i32)* @__snapfh_to_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @__snapfh_to_dentry(%struct.super_block* %0, %struct.ceph_nfs_snapfh* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ceph_nfs_snapfh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_mds_client*, align 8
  %9 = alloca %struct.ceph_mds_request*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ceph_vino, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ceph_nfs_snapfh* %1, %struct.ceph_nfs_snapfh** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.TYPE_6__* @ceph_sb_to_client(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %17, align 8
  store %struct.ceph_mds_client* %18, %struct.ceph_mds_client** %8, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %3
  %22 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %23 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %27 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CEPH_SNAPDIR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i64, i64* @CEPH_NOSNAP, align 8
  %33 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  br label %51

34:                                               ; preds = %21
  %35 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %36 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %39 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i64, i64* @CEPH_SNAPDIR, align 8
  %44 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  br label %50

45:                                               ; preds = %34
  %46 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %47 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %31
  br label %61

52:                                               ; preds = %3
  %53 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %54 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %58 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %52, %51
  %62 = load %struct.super_block*, %struct.super_block** %5, align 8
  %63 = bitcast %struct.ceph_vino* %11 to { i64, i64 }*
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.inode* @ceph_find_inode(%struct.super_block* %62, i64 %65, i64 %67)
  store %struct.inode* %68, %struct.inode** %10, align 8
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = icmp ne %struct.inode* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = call %struct.dentry* @d_obtain_alias(%struct.inode* %72)
  store %struct.dentry* %73, %struct.dentry** %4, align 8
  br label %231

74:                                               ; preds = %61
  %75 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %76 = load i32, i32* @CEPH_MDS_OP_LOOKUPINO, align 4
  %77 = load i32, i32* @USE_ANY_MDS, align 4
  %78 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %75, i32 %76, i32 %77)
  store %struct.ceph_mds_request* %78, %struct.ceph_mds_request** %9, align 8
  %79 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %80 = call i64 @IS_ERR(%struct.ceph_mds_request* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %84 = call %struct.dentry* @ERR_CAST(%struct.ceph_mds_request* %83)
  store %struct.dentry* %84, %struct.dentry** %4, align 8
  br label %231

85:                                               ; preds = %74
  %86 = load i32, i32* @CEPH_STAT_CAP_INODE, align 4
  store i32 %86, i32* %12, align 4
  %87 = load %struct.super_block*, %struct.super_block** %5, align 8
  %88 = getelementptr inbounds %struct.super_block, %struct.super_block* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @d_inode(i32 %89)
  %91 = call i64 @ceph_security_xattr_wanted(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i32, i32* @CEPH_CAP_XATTR_SHARED, align 4
  %95 = load i32, i32* %12, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %93, %85
  %98 = load i32, i32* %12, align 4
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %101 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i8* %99, i8** %103, align 8
  %104 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CEPH_NOSNAP, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %144

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @cpu_to_le64(i64 %110)
  %112 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %113 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  store i8* %111, i8** %115, align 8
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %143, label %118

118:                                              ; preds = %108
  %119 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %120 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %123 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %118
  %127 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %128 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i8* @cpu_to_le64(i64 %129)
  %131 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %132 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i8* %130, i8** %134, align 8
  %135 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %136 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %140 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i8* %138, i8** %142, align 8
  br label %143

143:                                              ; preds = %126, %118, %108
  br label %144

144:                                              ; preds = %143, %97
  %145 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %146 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %145, i32 0, i32 2
  %147 = bitcast %struct.ceph_vino* %146 to i8*
  %148 = bitcast %struct.ceph_vino* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 16, i1 false)
  %149 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %150 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  %151 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %152 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %153 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %151, i32* null, %struct.ceph_mds_request* %152)
  store i32 %153, i32* %13, align 4
  %154 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %155 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %154, i32 0, i32 1
  %156 = load %struct.inode*, %struct.inode** %155, align 8
  store %struct.inode* %156, %struct.inode** %10, align 8
  %157 = load %struct.inode*, %struct.inode** %10, align 8
  %158 = icmp ne %struct.inode* %157, null
  br i1 %158, label %159, label %187

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CEPH_SNAPDIR, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load %struct.inode*, %struct.inode** %10, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 1, i32* %14, align 4
  br label %170

170:                                              ; preds = %169, %164
  %171 = load %struct.inode*, %struct.inode** %10, align 8
  %172 = call %struct.inode* @ceph_get_snapdir(%struct.inode* %171)
  store %struct.inode* %172, %struct.inode** %10, align 8
  br label %186

173:                                              ; preds = %159
  %174 = load %struct.inode*, %struct.inode** %10, align 8
  %175 = call i64 @ceph_snap(%struct.inode* %174)
  %176 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %175, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load %struct.inode*, %struct.inode** %10, align 8
  %181 = call i32 @ihold(%struct.inode* %180)
  br label %185

182:                                              ; preds = %173
  %183 = load i32, i32* @EOPNOTSUPP, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %13, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %185

185:                                              ; preds = %182, %179
  br label %186

186:                                              ; preds = %185, %170
  br label %187

187:                                              ; preds = %186, %144
  %188 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %189 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %188)
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = call i32 (i8*, i64, i64, i64, ...) @dout(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %194, i64 %196, i64 %198)
  br label %213

200:                                              ; preds = %187
  %201 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %11, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %206 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %6, align 8
  %209 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %13, align 4
  %212 = call i32 (i8*, i64, i64, i64, ...) @dout(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %202, i64 %204, i64 %207, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %200, %192
  %214 = load %struct.inode*, %struct.inode** %10, align 8
  %215 = icmp ne %struct.inode* %214, null
  br i1 %215, label %220, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* @ESTALE, align 4
  %218 = sub nsw i32 0, %217
  %219 = call %struct.dentry* @ERR_PTR(i32 %218)
  store %struct.dentry* %219, %struct.dentry** %4, align 8
  br label %231

220:                                              ; preds = %213
  %221 = load i32, i32* %14, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load %struct.inode*, %struct.inode** %10, align 8
  %225 = call %struct.dentry* @d_obtain_root(%struct.inode* %224)
  br label %229

226:                                              ; preds = %220
  %227 = load %struct.inode*, %struct.inode** %10, align 8
  %228 = call %struct.dentry* @d_obtain_alias(%struct.inode* %227)
  br label %229

229:                                              ; preds = %226, %223
  %230 = phi %struct.dentry* [ %225, %223 ], [ %228, %226 ]
  store %struct.dentry* %230, %struct.dentry** %4, align 8
  br label %231

231:                                              ; preds = %229, %216, %82, %71
  %232 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %232
}

declare dso_local %struct.TYPE_6__* @ceph_sb_to_client(%struct.super_block*) #1

declare dso_local %struct.inode* @ceph_find_inode(%struct.super_block*, i64, i64) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.ceph_mds_request*) #1

declare dso_local i64 @ceph_security_xattr_wanted(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, i32*, %struct.ceph_mds_request*) #1

declare dso_local %struct.inode* @ceph_get_snapdir(%struct.inode*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

declare dso_local i32 @dout(i8*, i64, i64, i64, ...) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @d_obtain_root(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
