; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_find_empty_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_find_empty_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i32, i32 }
%struct.dentry_t = type { i32 }
%struct.fs_info_t = type { i64, i64, i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.super_block*, i32, %struct.chain_t*)*, i32 (%struct.dentry_t*, i32)*, i32 (%struct.dentry_t*, i64)* }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.file_id_t = type { i32, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.fs_info_t }
%struct.TYPE_10__ = type { %struct.file_id_t, i32 }

@EXFAT = common dso_local global i64 0, align 8
@FFS_SUCCESS = common dso_local global i64 0, align 8
@DENTRY_SIZE_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_empty_entry(%struct.inode* %0, %struct.chain_t* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.chain_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.chain_t, align 8
  %14 = alloca %struct.dentry_t*, align 8
  %15 = alloca %struct.super_block*, align 8
  %16 = alloca %struct.fs_info_t*, align 8
  %17 = alloca %struct.file_id_t*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.chain_t* %1, %struct.chain_t** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %12, align 8
  store %struct.dentry_t* null, %struct.dentry_t** %14, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %15, align 8
  %21 = load %struct.super_block*, %struct.super_block** %15, align 8
  %22 = call %struct.TYPE_9__* @EXFAT_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store %struct.fs_info_t* %23, %struct.fs_info_t** %16, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = call %struct.TYPE_10__* @EXFAT_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store %struct.file_id_t* %26, %struct.file_id_t** %17, align 8
  %27 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %28 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @CLUSTER_32(i32 0)
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.super_block*, %struct.super_block** %15, align 8
  %34 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @search_deleted_or_unused_entry(%struct.super_block* %33, %struct.chain_t* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %293

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %245, %37
  %39 = load %struct.super_block*, %struct.super_block** %15, align 8
  %40 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @search_deleted_or_unused_entry(%struct.super_block* %39, %struct.chain_t* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %291

44:                                               ; preds = %38
  %45 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %46 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %291

50:                                               ; preds = %44
  %51 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %52 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @EXFAT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %58 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %61 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = call i64 @i_size_read(%struct.inode* %65)
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %64, %56
  br label %68

68:                                               ; preds = %67, %50
  %69 = load %struct.super_block*, %struct.super_block** %15, align 8
  %70 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %71 = call i64 @find_last_cluster(%struct.super_block* %69, %struct.chain_t* %70)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add nsw i64 %72, 1
  %74 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 1
  store i32 0, i32* %75, align 8
  %76 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %77 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %81 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %80, i32 0, i32 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32 (%struct.super_block*, i32, %struct.chain_t*)*, i32 (%struct.super_block*, i32, %struct.chain_t*)** %83, align 8
  %85 = load %struct.super_block*, %struct.super_block** %15, align 8
  %86 = call i32 %84(%struct.super_block* %85, i32 1, %struct.chain_t* %13)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %293

90:                                               ; preds = %68
  %91 = load %struct.super_block*, %struct.super_block** %15, align 8
  %92 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @clear_cluster(%struct.super_block* %91, i64 %93)
  %95 = load i64, i64* @FFS_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 -1, i32* %4, align 4
  br label %293

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %102 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %98
  %106 = load %struct.super_block*, %struct.super_block** %15, align 8
  %107 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %108 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %111 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @exfat_chain_cont_cluster(%struct.super_block* %106, i64 %109, i32 %112)
  %114 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %115 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %114, i32 0, i32 2
  store i32 1, i32* %115, align 4
  %116 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %117 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %105, %98
  %121 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load %struct.super_block*, %struct.super_block** %15, align 8
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @FAT_write(%struct.super_block* %125, i64 %126, i64 %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i32 -1, i32* %4, align 4
  br label %293

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %120
  %134 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %135 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %174

139:                                              ; preds = %133
  %140 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %141 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %144 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i64 %142, i64* %145, align 8
  %146 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %147 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %150 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @DENTRY_SIZE_BITS, align 4
  %153 = sub nsw i32 %151, %152
  %154 = shl i32 %148, %153
  %155 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %156 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %161 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i64 %159, i64* %163, align 8
  %164 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %165 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  store i64 0, i64* %167, align 8
  %168 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %171 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  store i32 %169, i32* %173, align 8
  br label %174

174:                                              ; preds = %139, %133
  %175 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %176 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %178, align 8
  %181 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %182 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %186 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @EXFAT, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %245

190:                                              ; preds = %174
  %191 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %192 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %195 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %193, %196
  br i1 %197, label %198, label %244

198:                                              ; preds = %190
  %199 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %200 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %12, align 8
  %203 = add nsw i64 %202, %201
  store i64 %203, i64* %12, align 8
  %204 = load %struct.super_block*, %struct.super_block** %15, align 8
  %205 = load %struct.file_id_t*, %struct.file_id_t** %17, align 8
  %206 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %205, i32 0, i32 3
  %207 = load %struct.file_id_t*, %struct.file_id_t** %17, align 8
  %208 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, 1
  %211 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %204, i32* %206, i64 %210, i32* %11)
  store %struct.dentry_t* %211, %struct.dentry_t** %14, align 8
  %212 = load %struct.dentry_t*, %struct.dentry_t** %14, align 8
  %213 = icmp ne %struct.dentry_t* %212, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %198
  store i32 -1, i32* %4, align 4
  br label %293

215:                                              ; preds = %198
  %216 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %217 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %216, i32 0, i32 4
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load i32 (%struct.dentry_t*, i64)*, i32 (%struct.dentry_t*, i64)** %219, align 8
  %221 = load %struct.dentry_t*, %struct.dentry_t** %14, align 8
  %222 = load i64, i64* %12, align 8
  %223 = call i32 %220(%struct.dentry_t* %221, i64 %222)
  %224 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %225 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %224, i32 0, i32 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = load i32 (%struct.dentry_t*, i32)*, i32 (%struct.dentry_t*, i32)** %227, align 8
  %229 = load %struct.dentry_t*, %struct.dentry_t** %14, align 8
  %230 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %231 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 %228(%struct.dentry_t* %229, i32 %232)
  %234 = load %struct.super_block*, %struct.super_block** %15, align 8
  %235 = load i32, i32* %11, align 4
  %236 = call i32 @buf_modify(%struct.super_block* %234, i32 %235)
  %237 = load %struct.super_block*, %struct.super_block** %15, align 8
  %238 = load %struct.file_id_t*, %struct.file_id_t** %17, align 8
  %239 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %238, i32 0, i32 3
  %240 = load %struct.file_id_t*, %struct.file_id_t** %17, align 8
  %241 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @update_dir_checksum(%struct.super_block* %237, i32* %239, i64 %242)
  br label %244

244:                                              ; preds = %215, %190
  br label %245

245:                                              ; preds = %244, %174
  %246 = load %struct.inode*, %struct.inode** %5, align 8
  %247 = load %struct.inode*, %struct.inode** %5, align 8
  %248 = call i64 @i_size_read(%struct.inode* %247)
  %249 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %250 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %248, %251
  %253 = call i32 @i_size_write(%struct.inode* %246, i64 %252)
  %254 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %255 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.inode*, %struct.inode** %5, align 8
  %258 = call %struct.TYPE_10__* @EXFAT_I(%struct.inode* %257)
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %261, %256
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %259, align 8
  %264 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %265 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.inode*, %struct.inode** %5, align 8
  %268 = call %struct.TYPE_10__* @EXFAT_I(%struct.inode* %267)
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = add nsw i64 %272, %266
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %270, align 4
  %275 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %276 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.inode*, %struct.inode** %5, align 8
  %279 = call %struct.TYPE_10__* @EXFAT_I(%struct.inode* %278)
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %280, i32 0, i32 0
  store i32 %277, i32* %281, align 8
  %282 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %283 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = sub nsw i32 %284, 9
  %286 = shl i32 1, %285
  %287 = load %struct.inode*, %struct.inode** %5, align 8
  %288 = getelementptr inbounds %struct.inode, %struct.inode* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, %286
  store i32 %290, i32* %288, align 8
  br label %38

291:                                              ; preds = %49, %38
  %292 = load i32, i32* %9, align 4
  store i32 %292, i32* %4, align 4
  br label %293

293:                                              ; preds = %291, %214, %131, %97, %89, %32
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local %struct.TYPE_9__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_10__* @EXFAT_I(%struct.inode*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i32 @search_deleted_or_unused_entry(%struct.super_block*, %struct.chain_t*, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @find_last_cluster(%struct.super_block*, %struct.chain_t*) #1

declare dso_local i64 @clear_cluster(%struct.super_block*, i64) #1

declare dso_local i32 @exfat_chain_cont_cluster(%struct.super_block*, i64, i32) #1

declare dso_local i64 @FAT_write(%struct.super_block*, i64, i64) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, i32*, i64, i32*) #1

declare dso_local i32 @buf_modify(%struct.super_block*, i32) #1

declare dso_local i32 @update_dir_checksum(%struct.super_block*, i32*, i64) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
