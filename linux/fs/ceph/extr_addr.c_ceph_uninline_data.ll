; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_uninline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_uninline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ceph_inode_info = type { i32, i32, i32, i32, i32 }
%struct.ceph_fs_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_osd_request = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"uninline_data %p %llx.%llx inline_version %llu\0A\00", align 1
@CEPH_INLINE_NONE = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_CACHE = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_LAZYIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_STAT_CAP_INLINE_DATA = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@CEPH_OSD_OP_CREATE = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_WRITE = common dso_local global i32 0, align 4
@CEPH_OSD_OP_WRITE = common dso_local global i32 0, align 4
@CEPH_OSD_OP_CMPXATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"inline_version\00", align 1
@CEPH_OSD_CMPXATTR_OP_GT = common dso_local global i32 0, align 4
@CEPH_OSD_CMPXATTR_MODE_U64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@CEPH_OSD_OP_SETXATTR = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"uninline_data %p %llx.%llx inline_version %llu = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_uninline_data(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ceph_inode_info*, align 8
  %7 = alloca %struct.ceph_fs_client*, align 8
  %8 = alloca %struct.ceph_osd_request*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca [32 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %17 = load %struct.file*, %struct.file** %3, align 8
  %18 = call %struct.inode* @file_inode(%struct.file* %17)
  store %struct.inode* %18, %struct.inode** %5, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %19)
  store %struct.ceph_inode_info* %20, %struct.ceph_inode_info** %6, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %21)
  store %struct.ceph_fs_client* %22, %struct.ceph_fs_client** %7, align 8
  store %struct.page* null, %struct.page** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %24 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %23, i32 0, i32 4
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %27 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %30 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %29, i32 0, i32 4
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @ceph_vinop(%struct.inode* %33)
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i8*, %struct.inode*, i32, i32, ...) @dout(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.inode* %32, i32 %34, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %43, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @CEPH_INLINE_NONE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %2
  br label %245

44:                                               ; preds = %39
  %45 = load %struct.page*, %struct.page** %4, align 8
  %46 = icmp ne %struct.page* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %48, %struct.page** %9, align 8
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = call i64 @PageUptodate(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  br label %83

55:                                               ; preds = %44
  %56 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %57 = call i32 @ceph_caps_issued(%struct.ceph_inode_info* %56)
  %58 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %59 = load i32, i32* @CEPH_CAP_FILE_LAZYIO, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %55
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.page* @find_get_page(i32 %66, i32 0)
  store %struct.page* %67, %struct.page** %9, align 8
  %68 = load %struct.page*, %struct.page** %9, align 8
  %69 = icmp ne %struct.page* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.page*, %struct.page** %9, align 8
  %72 = call i64 @PageUptodate(%struct.page* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  store i32 1, i32* %13, align 4
  %75 = load %struct.page*, %struct.page** %9, align 8
  %76 = call i32 @lock_page(%struct.page* %75)
  br label %80

77:                                               ; preds = %70
  %78 = load %struct.page*, %struct.page** %9, align 8
  %79 = call i32 @put_page(%struct.page* %78)
  store %struct.page* null, %struct.page** %9, align 8
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %63
  br label %82

82:                                               ; preds = %81, %55
  br label %83

83:                                               ; preds = %82, %47
  %84 = load %struct.page*, %struct.page** %9, align 8
  %85 = icmp ne %struct.page* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = call i32 @i_size_read(%struct.inode* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %92, %86
  br label %119

95:                                               ; preds = %83
  %96 = load i32, i32* @GFP_NOFS, align 4
  %97 = call %struct.page* @__page_cache_alloc(i32 %96)
  store %struct.page* %97, %struct.page** %9, align 8
  %98 = load %struct.page*, %struct.page** %9, align 8
  %99 = icmp ne %struct.page* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %12, align 4
  br label %245

103:                                              ; preds = %95
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = load %struct.page*, %struct.page** %9, align 8
  %106 = load i32, i32* @CEPH_STAT_CAP_INLINE_DATA, align 4
  %107 = call i32 @__ceph_do_getattr(%struct.inode* %104, %struct.page* %105, i32 %106, i32 1)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @ENODATA, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %115, %110
  br label %245

117:                                              ; preds = %103
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %117, %94
  %120 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %7, align 8
  %121 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %125 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %124, i32 0, i32 3
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = call i32 @ceph_vino(%struct.inode* %126)
  %128 = load i32, i32* @CEPH_OSD_OP_CREATE, align 4
  %129 = load i32, i32* @CEPH_OSD_FLAG_WRITE, align 4
  %130 = call %struct.ceph_osd_request* @ceph_osdc_new_request(i32* %123, i32* %125, i32 %127, i32 0, i32* %10, i32 0, i32 1, i32 %128, i32 %129, i32* null, i32 0, i32 0, i32 0)
  store %struct.ceph_osd_request* %130, %struct.ceph_osd_request** %8, align 8
  %131 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %132 = call i64 @IS_ERR(%struct.ceph_osd_request* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %119
  %135 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %136 = call i32 @PTR_ERR(%struct.ceph_osd_request* %135)
  store i32 %136, i32* %12, align 4
  br label %245

137:                                              ; preds = %119
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %142 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %7, align 8
  %144 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %148 = call i32 @ceph_osdc_start_request(i32* %146, %struct.ceph_osd_request* %147, i32 0)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %137
  %152 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %7, align 8
  %153 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %157 = call i32 @ceph_osdc_wait_request(i32* %155, %struct.ceph_osd_request* %156)
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %151, %137
  %159 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %160 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %159)
  %161 = load i32, i32* %12, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %245

164:                                              ; preds = %158
  %165 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %7, align 8
  %166 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %170 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %169, i32 0, i32 3
  %171 = load %struct.inode*, %struct.inode** %5, align 8
  %172 = call i32 @ceph_vino(%struct.inode* %171)
  %173 = load i32, i32* @CEPH_OSD_OP_WRITE, align 4
  %174 = load i32, i32* @CEPH_OSD_FLAG_WRITE, align 4
  %175 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %176 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %179 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.ceph_osd_request* @ceph_osdc_new_request(i32* %168, i32* %170, i32 %172, i32 0, i32* %10, i32 1, i32 3, i32 %173, i32 %174, i32* null, i32 %177, i32 %180, i32 0)
  store %struct.ceph_osd_request* %181, %struct.ceph_osd_request** %8, align 8
  %182 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %183 = call i64 @IS_ERR(%struct.ceph_osd_request* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %164
  %186 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %187 = call i32 @PTR_ERR(%struct.ceph_osd_request* %186)
  store i32 %187, i32* %12, align 4
  br label %245

188:                                              ; preds = %164
  %189 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @osd_req_op_extent_osd_data_pages(%struct.ceph_osd_request* %189, i32 1, %struct.page** %9, i32 %190, i32 0, i32 0, i32 0)
  %192 = load i32, i32* %11, align 4
  %193 = call signext i8 @cpu_to_le64(i32 %192)
  store i8 %193, i8* %14, align 1
  %194 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %195 = load i32, i32* @CEPH_OSD_OP_CMPXATTR, align 4
  %196 = load i32, i32* @CEPH_OSD_CMPXATTR_OP_GT, align 4
  %197 = load i32, i32* @CEPH_OSD_CMPXATTR_MODE_U64, align 4
  %198 = call i32 @osd_req_op_xattr_init(%struct.ceph_osd_request* %194, i32 0, i32 %195, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 1, i32 %196, i32 %197)
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %188
  br label %236

202:                                              ; preds = %188
  %203 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %204 = load i32, i32* %11, align 4
  %205 = call i32 @snprintf(i8* %203, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %204)
  store i32 %205, i32* %16, align 4
  %206 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %207 = load i32, i32* @CEPH_OSD_OP_SETXATTR, align 4
  %208 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @osd_req_op_xattr_init(%struct.ceph_osd_request* %206, i32 2, i32 %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %208, i32 %209, i32 0, i32 0)
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %202
  br label %236

214:                                              ; preds = %202
  %215 = load %struct.inode*, %struct.inode** %5, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %219 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 4
  %220 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %7, align 8
  %221 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %220, i32 0, i32 0
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %225 = call i32 @ceph_osdc_start_request(i32* %223, %struct.ceph_osd_request* %224, i32 0)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %214
  %229 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %7, align 8
  %230 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %229, i32 0, i32 0
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %234 = call i32 @ceph_osdc_wait_request(i32* %232, %struct.ceph_osd_request* %233)
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %228, %214
  br label %236

236:                                              ; preds = %235, %213, %201
  %237 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %238 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %237)
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* @ECANCELED, align 4
  %241 = sub nsw i32 0, %240
  %242 = icmp eq i32 %239, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  store i32 0, i32* %12, align 4
  br label %244

244:                                              ; preds = %243, %236
  br label %245

245:                                              ; preds = %244, %185, %163, %134, %116, %100, %43
  %246 = load %struct.page*, %struct.page** %9, align 8
  %247 = icmp ne %struct.page* %246, null
  br i1 %247, label %248, label %264

248:                                              ; preds = %245
  %249 = load %struct.page*, %struct.page** %9, align 8
  %250 = load %struct.page*, %struct.page** %4, align 8
  %251 = icmp ne %struct.page* %249, %250
  br i1 %251, label %252, label %264

252:                                              ; preds = %248
  %253 = load i32, i32* %13, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %252
  %256 = load %struct.page*, %struct.page** %9, align 8
  %257 = call i32 @unlock_page(%struct.page* %256)
  %258 = load %struct.page*, %struct.page** %9, align 8
  %259 = call i32 @put_page(%struct.page* %258)
  br label %263

260:                                              ; preds = %252
  %261 = load %struct.page*, %struct.page** %9, align 8
  %262 = call i32 @__free_pages(%struct.page* %261, i32 0)
  br label %263

263:                                              ; preds = %260, %255
  br label %264

264:                                              ; preds = %263, %248, %245
  %265 = load %struct.inode*, %struct.inode** %5, align 8
  %266 = load %struct.inode*, %struct.inode** %5, align 8
  %267 = call i32 @ceph_vinop(%struct.inode* %266)
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* %12, align 4
  %270 = call i32 (i8*, %struct.inode*, i32, i32, ...) @dout(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), %struct.inode* %265, i32 %267, i32 %268, i32 %269)
  %271 = load i32, i32* %12, align 4
  ret i32 %271
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, i32, i32, ...) #1

declare dso_local i32 @ceph_vinop(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ceph_caps_issued(%struct.ceph_inode_info*) #1

declare dso_local %struct.page* @find_get_page(i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.page* @__page_cache_alloc(i32) #1

declare dso_local i32 @__ceph_do_getattr(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local %struct.ceph_osd_request* @ceph_osdc_new_request(i32*, i32*, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ceph_vino(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_osdc_start_request(i32*, %struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_wait_request(i32*, %struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

declare dso_local i32 @osd_req_op_extent_osd_data_pages(%struct.ceph_osd_request*, i32, %struct.page**, i32, i32, i32, i32) #1

declare dso_local signext i8 @cpu_to_le64(i32) #1

declare dso_local i32 @osd_req_op_xattr_init(%struct.ceph_osd_request*, i32, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
