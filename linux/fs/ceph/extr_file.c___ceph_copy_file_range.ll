; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c___ceph_copy_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c___ceph_copy_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i64, i32 }
%struct.ceph_inode_info = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, i32, i32 }
%struct.ceph_cap_flush = type { i32 }
%struct.ceph_fs_client = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ceph_object_locator = type { i8*, i32 }
%struct.ceph_object_id = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Copying files across clusters: src: %pU dst: %pU\0A\00", align 1
@EXDEV = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@NOCOPYFROM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid src/dst files layout\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to write src file (%zd)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to write dst file (%zd)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"get_rd_wr_caps returned %d\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to invalidate inode pages (%zd)\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"do_splice_direct returned %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%llx.%08llx\00", align 1
@CEPH_OSD_OP_FLAG_FADVISE_SEQUENTIAL = common dso_local global i32 0, align 4
@CEPH_OSD_OP_FLAG_FADVISE_NOCACHE = common dso_local global i32 0, align 4
@CEPH_OSD_OP_FLAG_FADVISE_DONTNEED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"ceph_osdc_copy_from returned %d\0A\00", align 1
@CHECK_CAPS_NODELAY = common dso_local global i32 0, align 4
@CHECK_CAPS_AUTHONLY = common dso_local global i32 0, align 4
@CEPH_INLINE_NONE = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, %struct.file*, i64, i64, i32)* @__ceph_copy_file_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ceph_copy_file_range(%struct.file* %0, i64 %1, %struct.file* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.ceph_inode_info*, align 8
  %17 = alloca %struct.ceph_inode_info*, align 8
  %18 = alloca %struct.ceph_cap_flush*, align 8
  %19 = alloca %struct.ceph_fs_client*, align 8
  %20 = alloca %struct.ceph_object_locator, align 8
  %21 = alloca %struct.ceph_object_locator, align 8
  %22 = alloca %struct.ceph_object_id, align 4
  %23 = alloca %struct.ceph_object_id, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.ceph_fs_client*, align 8
  %40 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %41 = load %struct.file*, %struct.file** %8, align 8
  %42 = call %struct.inode* @file_inode(%struct.file* %41)
  store %struct.inode* %42, %struct.inode** %14, align 8
  %43 = load %struct.file*, %struct.file** %10, align 8
  %44 = call %struct.inode* @file_inode(%struct.file* %43)
  store %struct.inode* %44, %struct.inode** %15, align 8
  %45 = load %struct.inode*, %struct.inode** %14, align 8
  %46 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %45)
  store %struct.ceph_inode_info* %46, %struct.ceph_inode_info** %16, align 8
  %47 = load %struct.inode*, %struct.inode** %15, align 8
  %48 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %47)
  store %struct.ceph_inode_info* %48, %struct.ceph_inode_info** %17, align 8
  %49 = load %struct.inode*, %struct.inode** %14, align 8
  %50 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %49)
  store %struct.ceph_fs_client* %50, %struct.ceph_fs_client** %19, align 8
  store i64 0, i64* %24, align 8
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %26, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %38, align 4
  %53 = load %struct.inode*, %struct.inode** %14, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.inode*, %struct.inode** %15, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %6
  %61 = load %struct.inode*, %struct.inode** %15, align 8
  %62 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %61)
  store %struct.ceph_fs_client* %62, %struct.ceph_fs_client** %39, align 8
  %63 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %19, align 8
  %64 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %39, align 8
  %68 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = call i64 @ceph_fsid_compare(i32* %66, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %60
  %74 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %19, align 8
  %75 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %39, align 8
  %79 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32* %77, i32* %81)
  %83 = load i32, i32* @EXDEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %477

85:                                               ; preds = %60
  br label %86

86:                                               ; preds = %85, %6
  %87 = load %struct.inode*, %struct.inode** %15, align 8
  %88 = call i64 @ceph_snap(%struct.inode* %87)
  %89 = load i64, i64* @CEPH_NOSNAP, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @EROFS, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %477

94:                                               ; preds = %86
  %95 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %19, align 8
  %96 = load i32, i32* @NOCOPYFROM, align 4
  %97 = call i64 @ceph_test_mount_opt(%struct.ceph_fs_client* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EOPNOTSUPP, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %477

102:                                              ; preds = %94
  %103 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %104 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %108 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %106, %110
  br i1 %111, label %134, label %112

112:                                              ; preds = %102
  %113 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %114 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 1
  br i1 %117, label %134, label %118

118:                                              ; preds = %112
  %119 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %120 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %134, label %124

124:                                              ; preds = %118
  %125 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %126 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %130 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %128, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %124, %118, %112, %102
  %135 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @EOPNOTSUPP, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %7, align 4
  br label %477

138:                                              ; preds = %124
  %139 = load i64, i64* %12, align 8
  %140 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %141 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ult i64 %139, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load i32, i32* @EOPNOTSUPP, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %7, align 4
  br label %477

148:                                              ; preds = %138
  %149 = call %struct.ceph_cap_flush* (...) @ceph_alloc_cap_flush()
  store %struct.ceph_cap_flush* %149, %struct.ceph_cap_flush** %18, align 8
  %150 = load %struct.ceph_cap_flush*, %struct.ceph_cap_flush** %18, align 8
  %151 = icmp ne %struct.ceph_cap_flush* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %7, align 4
  br label %477

155:                                              ; preds = %148
  %156 = load %struct.file*, %struct.file** %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* %12, align 8
  %160 = add i64 %158, %159
  %161 = call i32 @file_write_and_wait_range(%struct.file* %156, i64 %157, i64 %160)
  store i32 %161, i32* %26, align 4
  %162 = load i32, i32* %26, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load i32, i32* %26, align 4
  %166 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  br label %473

167:                                              ; preds = %155
  %168 = load %struct.file*, %struct.file** %10, align 8
  %169 = load i64, i64* %11, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* %12, align 8
  %172 = add i64 %170, %171
  %173 = call i32 @file_write_and_wait_range(%struct.file* %168, i64 %169, i64 %172)
  store i32 %173, i32* %26, align 4
  %174 = load i32, i32* %26, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %167
  %177 = load i32, i32* %26, align 4
  %178 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  br label %473

179:                                              ; preds = %167
  %180 = load %struct.file*, %struct.file** %8, align 8
  %181 = load %struct.file*, %struct.file** %10, align 8
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* %12, align 8
  %184 = add i64 %182, %183
  %185 = call i32 @get_rd_wr_caps(%struct.file* %180, i32* %34, %struct.file* %181, i64 %184, i32* %35)
  store i32 %185, i32* %36, align 4
  %186 = load i32, i32* %36, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %179
  %189 = load i32, i32* %36, align 4
  %190 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @EOPNOTSUPP, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %26, align 4
  br label %473

193:                                              ; preds = %179
  %194 = load %struct.inode*, %struct.inode** %14, align 8
  %195 = load %struct.inode*, %struct.inode** %15, align 8
  %196 = load i64, i64* %9, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* %12, align 8
  %199 = call i32 @is_file_size_ok(%struct.inode* %194, %struct.inode* %195, i64 %196, i64 %197, i64 %198)
  store i32 %199, i32* %26, align 4
  %200 = load i32, i32* %26, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %193
  br label %445

203:                                              ; preds = %193
  %204 = load %struct.inode*, %struct.inode** %15, align 8
  %205 = call i64 @i_size_read(%struct.inode* %204)
  store i64 %205, i64* %25, align 8
  %206 = load i64, i64* %11, align 8
  %207 = load i64, i64* %12, align 8
  %208 = add i64 %206, %207
  store i64 %208, i64* %24, align 8
  %209 = load %struct.inode*, %struct.inode** %15, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i64, i64* %11, align 8
  %213 = load i64, i64* @PAGE_SHIFT, align 8
  %214 = lshr i64 %212, %213
  %215 = load i64, i64* %24, align 8
  %216 = load i64, i64* @PAGE_SHIFT, align 8
  %217 = lshr i64 %215, %216
  %218 = call i32 @invalidate_inode_pages2_range(i32 %211, i64 %214, i64 %217)
  store i32 %218, i32* %26, align 4
  %219 = load i32, i32* %26, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %203
  %222 = load i32, i32* %26, align 4
  %223 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %222)
  store i32 0, i32* %26, align 4
  br label %224

224:                                              ; preds = %221, %203
  %225 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %226 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %20, i32 0, i32 1
  store i32 %228, i32* %229, align 8
  %230 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %231 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = call i8* @ceph_try_get_string(i32 %233)
  %235 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %20, i32 0, i32 0
  store i8* %234, i8** %235, align 8
  %236 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %237 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %21, i32 0, i32 1
  store i32 %239, i32* %240, align 8
  %241 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %242 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = call i8* @ceph_try_get_string(i32 %244)
  %246 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %21, i32 0, i32 0
  store i8* %245, i8** %246, align 8
  %247 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %248 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %247, i32 0, i32 3
  %249 = load i64, i64* %9, align 8
  %250 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %251 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @ceph_calc_file_object_mapping(%struct.TYPE_6__* %248, i64 %249, i64 %253, i64* %27, i64* %29, i64* %31)
  %255 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %256 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %255, i32 0, i32 3
  %257 = load i64, i64* %11, align 8
  %258 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %259 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @ceph_calc_file_object_mapping(%struct.TYPE_6__* %256, i64 %257, i64 %261, i64* %28, i64* %30, i64* %32)
  %263 = load i64, i64* %29, align 8
  %264 = load i64, i64* %30, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %224
  %267 = load i32, i32* @EOPNOTSUPP, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %26, align 4
  br label %445

269:                                              ; preds = %224
  %270 = load i64, i64* %29, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %313

272:                                              ; preds = %269
  %273 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %274 = load i32, i32* %34, align 4
  %275 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %276 = load i32, i32* %35, align 4
  %277 = call i32 @put_rd_wr_caps(%struct.ceph_inode_info* %273, i32 %274, %struct.ceph_inode_info* %275, i32 %276)
  %278 = load %struct.file*, %struct.file** %8, align 8
  %279 = load %struct.file*, %struct.file** %10, align 8
  %280 = load i64, i64* %31, align 8
  %281 = load i32, i32* %13, align 4
  %282 = call i32 @do_splice_direct(%struct.file* %278, i64* %9, %struct.file* %279, i64* %11, i64 %280, i32 %281)
  store i32 %282, i32* %26, align 4
  %283 = load i32, i32* %26, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %272
  %286 = load i32, i32* %36, align 4
  %287 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %286)
  br label %473

288:                                              ; preds = %272
  %289 = load i32, i32* %26, align 4
  %290 = sext i32 %289 to i64
  %291 = load i64, i64* %12, align 8
  %292 = sub i64 %291, %290
  store i64 %292, i64* %12, align 8
  %293 = load %struct.file*, %struct.file** %8, align 8
  %294 = load %struct.file*, %struct.file** %10, align 8
  %295 = load i64, i64* %11, align 8
  %296 = load i64, i64* %12, align 8
  %297 = add i64 %295, %296
  %298 = call i32 @get_rd_wr_caps(%struct.file* %293, i32* %34, %struct.file* %294, i64 %297, i32* %35)
  store i32 %298, i32* %36, align 4
  %299 = load i32, i32* %36, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %288
  br label %473

302:                                              ; preds = %288
  %303 = load %struct.inode*, %struct.inode** %14, align 8
  %304 = load %struct.inode*, %struct.inode** %15, align 8
  %305 = load i64, i64* %9, align 8
  %306 = load i64, i64* %11, align 8
  %307 = load i64, i64* %12, align 8
  %308 = call i32 @is_file_size_ok(%struct.inode* %303, %struct.inode* %304, i64 %305, i64 %306, i64 %307)
  store i32 %308, i32* %36, align 4
  %309 = load i32, i32* %36, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %302
  br label %445

312:                                              ; preds = %302
  br label %313

313:                                              ; preds = %312, %269
  %314 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %315 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %33, align 8
  br label %318

318:                                              ; preds = %372, %313
  %319 = load i64, i64* %12, align 8
  %320 = load i64, i64* %33, align 8
  %321 = icmp uge i64 %319, %320
  br i1 %321, label %322, label %387

322:                                              ; preds = %318
  %323 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %324 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %323, i32 0, i32 3
  %325 = load i64, i64* %9, align 8
  %326 = load i64, i64* %33, align 8
  %327 = call i32 @ceph_calc_file_object_mapping(%struct.TYPE_6__* %324, i64 %325, i64 %326, i64* %27, i64* %29, i64* %31)
  %328 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %329 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %328, i32 0, i32 3
  %330 = load i64, i64* %11, align 8
  %331 = load i64, i64* %33, align 8
  %332 = call i32 @ceph_calc_file_object_mapping(%struct.TYPE_6__* %329, i64 %330, i64 %331, i64* %28, i64* %30, i64* %32)
  %333 = call i32 @ceph_oid_init(%struct.ceph_object_id* %22)
  %334 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %335 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load i64, i64* %27, align 8
  %339 = call i32 @ceph_oid_printf(%struct.ceph_object_id* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %337, i64 %338)
  %340 = call i32 @ceph_oid_init(%struct.ceph_object_id* %23)
  %341 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %342 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load i64, i64* %28, align 8
  %346 = call i32 @ceph_oid_printf(%struct.ceph_object_id* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %344, i64 %345)
  %347 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %19, align 8
  %348 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %347, i32 0, i32 0
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 0
  %351 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %352 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @CEPH_OSD_OP_FLAG_FADVISE_SEQUENTIAL, align 4
  %356 = load i32, i32* @CEPH_OSD_OP_FLAG_FADVISE_NOCACHE, align 4
  %357 = or i32 %355, %356
  %358 = load i32, i32* @CEPH_OSD_OP_FLAG_FADVISE_SEQUENTIAL, align 4
  %359 = load i32, i32* @CEPH_OSD_OP_FLAG_FADVISE_DONTNEED, align 4
  %360 = or i32 %358, %359
  %361 = call i32 @ceph_osdc_copy_from(i32* %350, i32 %354, i32 0, %struct.ceph_object_id* %22, %struct.ceph_object_locator* %20, i32 %357, %struct.ceph_object_id* %23, %struct.ceph_object_locator* %21, i32 %360, i32 0)
  store i32 %361, i32* %36, align 4
  %362 = load i32, i32* %36, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %372

364:                                              ; preds = %322
  %365 = load i32, i32* %36, align 4
  %366 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %365)
  %367 = load i32, i32* %26, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %371, label %369

369:                                              ; preds = %364
  %370 = load i32, i32* %36, align 4
  store i32 %370, i32* %26, align 4
  br label %371

371:                                              ; preds = %369, %364
  br label %445

372:                                              ; preds = %322
  %373 = load i64, i64* %33, align 8
  %374 = load i64, i64* %12, align 8
  %375 = sub i64 %374, %373
  store i64 %375, i64* %12, align 8
  %376 = load i64, i64* %33, align 8
  %377 = load i64, i64* %9, align 8
  %378 = add i64 %377, %376
  store i64 %378, i64* %9, align 8
  %379 = load i64, i64* %33, align 8
  %380 = load i64, i64* %11, align 8
  %381 = add i64 %380, %379
  store i64 %381, i64* %11, align 8
  %382 = load i64, i64* %33, align 8
  %383 = load i32, i32* %26, align 4
  %384 = sext i32 %383 to i64
  %385 = add i64 %384, %382
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %26, align 4
  br label %318

387:                                              ; preds = %318
  %388 = load i64, i64* %12, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %387
  store i32 1, i32* %38, align 4
  br label %391

391:                                              ; preds = %390, %387
  %392 = load %struct.file*, %struct.file** %10, align 8
  %393 = call i32 @file_update_time(%struct.file* %392)
  %394 = load %struct.inode*, %struct.inode** %15, align 8
  %395 = call i32 @inode_inc_iversion_raw(%struct.inode* %394)
  %396 = load i64, i64* %24, align 8
  %397 = load i64, i64* %25, align 8
  %398 = icmp ugt i64 %396, %397
  br i1 %398, label %399, label %425

399:                                              ; preds = %391
  store i32 0, i32* %40, align 4
  %400 = load %struct.inode*, %struct.inode** %15, align 8
  %401 = load i64, i64* %24, align 8
  %402 = call i64 @ceph_quota_is_max_bytes_approaching(%struct.inode* %400, i64 %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %399
  %405 = load i32, i32* @CHECK_CAPS_NODELAY, align 4
  %406 = load i32, i32* %40, align 4
  %407 = or i32 %406, %405
  store i32 %407, i32* %40, align 4
  br label %408

408:                                              ; preds = %404, %399
  %409 = load %struct.inode*, %struct.inode** %15, align 8
  %410 = load i64, i64* %24, align 8
  %411 = call i64 @ceph_inode_set_size(%struct.inode* %409, i64 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %408
  %414 = load i32, i32* @CHECK_CAPS_AUTHONLY, align 4
  %415 = load i32, i32* %40, align 4
  %416 = or i32 %415, %414
  store i32 %416, i32* %40, align 4
  br label %417

417:                                              ; preds = %413, %408
  %418 = load i32, i32* %40, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %417
  %421 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %422 = load i32, i32* %40, align 4
  %423 = call i32 @ceph_check_caps(%struct.ceph_inode_info* %421, i32 %422, i32* null)
  br label %424

424:                                              ; preds = %420, %417
  br label %425

425:                                              ; preds = %424, %391
  %426 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %427 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %426, i32 0, i32 0
  %428 = call i32 @spin_lock(i32* %427)
  %429 = load i32, i32* @CEPH_INLINE_NONE, align 4
  %430 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %431 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %430, i32 0, i32 1
  store i32 %429, i32* %431, align 4
  %432 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %433 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %434 = call i32 @__ceph_mark_dirty_caps(%struct.ceph_inode_info* %432, i32 %433, %struct.ceph_cap_flush** %18)
  store i32 %434, i32* %37, align 4
  %435 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %436 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %435, i32 0, i32 0
  %437 = call i32 @spin_unlock(i32* %436)
  %438 = load i32, i32* %37, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %425
  %441 = load %struct.inode*, %struct.inode** %15, align 8
  %442 = load i32, i32* %37, align 4
  %443 = call i32 @__mark_inode_dirty(%struct.inode* %441, i32 %442)
  br label %444

444:                                              ; preds = %440, %425
  br label %445

445:                                              ; preds = %444, %371, %311, %266, %202
  %446 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %447 = load i32, i32* %34, align 4
  %448 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %17, align 8
  %449 = load i32, i32* %35, align 4
  %450 = call i32 @put_rd_wr_caps(%struct.ceph_inode_info* %446, i32 %447, %struct.ceph_inode_info* %448, i32 %449)
  %451 = load i32, i32* %38, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %472

453:                                              ; preds = %445
  %454 = load %struct.file*, %struct.file** %8, align 8
  %455 = load %struct.file*, %struct.file** %10, align 8
  %456 = load i64, i64* %12, align 8
  %457 = load i32, i32* %13, align 4
  %458 = call i32 @do_splice_direct(%struct.file* %454, i64* %9, %struct.file* %455, i64* %11, i64 %456, i32 %457)
  store i32 %458, i32* %36, align 4
  %459 = load i32, i32* %36, align 4
  %460 = icmp slt i32 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %453
  %462 = load i32, i32* %36, align 4
  %463 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %462)
  br label %473

464:                                              ; preds = %453
  %465 = load i32, i32* %36, align 4
  %466 = sext i32 %465 to i64
  %467 = load i64, i64* %12, align 8
  %468 = sub i64 %467, %466
  store i64 %468, i64* %12, align 8
  %469 = load i32, i32* %36, align 4
  %470 = load i32, i32* %26, align 4
  %471 = add nsw i32 %470, %469
  store i32 %471, i32* %26, align 4
  br label %472

472:                                              ; preds = %464, %445
  br label %473

473:                                              ; preds = %472, %461, %301, %285, %188, %176, %164
  %474 = load %struct.ceph_cap_flush*, %struct.ceph_cap_flush** %18, align 8
  %475 = call i32 @ceph_free_cap_flush(%struct.ceph_cap_flush* %474)
  %476 = load i32, i32* %26, align 4
  store i32 %476, i32* %7, align 4
  br label %477

477:                                              ; preds = %473, %152, %145, %134, %99, %91, %73
  %478 = load i32, i32* %7, align 4
  ret i32 %478
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i64 @ceph_fsid_compare(i32*, i32*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i64 @ceph_test_mount_opt(%struct.ceph_fs_client*, i32) #1

declare dso_local %struct.ceph_cap_flush* @ceph_alloc_cap_flush(...) #1

declare dso_local i32 @file_write_and_wait_range(%struct.file*, i64, i64) #1

declare dso_local i32 @get_rd_wr_caps(%struct.file*, i32*, %struct.file*, i64, i32*) #1

declare dso_local i32 @is_file_size_ok(%struct.inode*, %struct.inode*, i64, i64, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @invalidate_inode_pages2_range(i32, i64, i64) #1

declare dso_local i8* @ceph_try_get_string(i32) #1

declare dso_local i32 @ceph_calc_file_object_mapping(%struct.TYPE_6__*, i64, i64, i64*, i64*, i64*) #1

declare dso_local i32 @put_rd_wr_caps(%struct.ceph_inode_info*, i32, %struct.ceph_inode_info*, i32) #1

declare dso_local i32 @do_splice_direct(%struct.file*, i64*, %struct.file*, i64*, i64, i32) #1

declare dso_local i32 @ceph_oid_init(%struct.ceph_object_id*) #1

declare dso_local i32 @ceph_oid_printf(%struct.ceph_object_id*, i8*, i32, i64) #1

declare dso_local i32 @ceph_osdc_copy_from(i32*, i32, i32, %struct.ceph_object_id*, %struct.ceph_object_locator*, i32, %struct.ceph_object_id*, %struct.ceph_object_locator*, i32, i32) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i32 @inode_inc_iversion_raw(%struct.inode*) #1

declare dso_local i64 @ceph_quota_is_max_bytes_approaching(%struct.inode*, i64) #1

declare dso_local i64 @ceph_inode_set_size(%struct.inode*, i64) #1

declare dso_local i32 @ceph_check_caps(%struct.ceph_inode_info*, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_mark_dirty_caps(%struct.ceph_inode_info*, i32, %struct.ceph_cap_flush**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @ceph_free_cap_flush(%struct.ceph_cap_flush*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
