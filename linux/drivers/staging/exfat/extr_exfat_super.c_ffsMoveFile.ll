; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsMoveFile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsMoveFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_id_t = type { i32, i64, i32, i32, %struct.chain_t }
%struct.chain_t = type { i64, i32, i32 }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.inode*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.uni_name_t = type { i32 }
%struct.dentry_t = type { i32 }
%struct.fs_info_t = type { i64, i64, i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)*, i32 (%struct.super_block*, %struct.chain_t*, i32, %struct.dentry_t*)*, i32 (%struct.super_block*, %struct.chain_t*, i32, i32, i32)* }
%struct.TYPE_7__ = type { %struct.fs_info_t }
%struct.TYPE_8__ = type { %struct.file_id_t }

@FFS_INVALIDFID = common dso_local global i32 0, align 4
@FFS_ERROR = common dso_local global i32 0, align 4
@EXFAT = common dso_local global i64 0, align 8
@FFS_PERMISSIONERR = common dso_local global i32 0, align 4
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@TYPE_DIR = common dso_local global i64 0, align 8
@FFS_FILEEXIST = common dso_local global i32 0, align 4
@VOL_DIRTY = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i32 0, align 4
@VOL_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file_id_t*, %struct.inode*, %struct.dentry*)* @ffsMoveFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsMoveFile(%struct.inode* %0, %struct.file_id_t* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file_id_t*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.chain_t, align 8
  %13 = alloca %struct.chain_t, align 8
  %14 = alloca %struct.chain_t*, align 8
  %15 = alloca %struct.uni_name_t, align 4
  %16 = alloca %struct.dentry_t*, align 8
  %17 = alloca %struct.super_block*, align 8
  %18 = alloca %struct.fs_info_t*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.inode*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.file_id_t*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.chain_t, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file_id_t* %1, %struct.file_id_t** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  store %struct.chain_t* null, %struct.chain_t** %14, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %17, align 8
  %29 = load %struct.super_block*, %struct.super_block** %17, align 8
  %30 = call %struct.TYPE_7__* @EXFAT_SB(%struct.super_block* %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store %struct.fs_info_t* %31, %struct.fs_info_t** %18, align 8
  %32 = load %struct.dentry*, %struct.dentry** %9, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %19, align 8
  %37 = load %struct.dentry*, %struct.dentry** %9, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  store %struct.inode* %39, %struct.inode** %20, align 8
  store %struct.file_id_t* null, %struct.file_id_t** %22, align 8
  store i32 0, i32* %23, align 4
  %40 = load %struct.file_id_t*, %struct.file_id_t** %7, align 8
  %41 = icmp ne %struct.file_id_t* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* @FFS_INVALIDFID, align 4
  store i32 %43, i32* %5, align 4
  br label %259

44:                                               ; preds = %4
  %45 = load i8*, i8** %19, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i8*, i8** %19, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %44
  %53 = load i32, i32* @FFS_ERROR, align 4
  store i32 %53, i32* %5, align 4
  br label %259

54:                                               ; preds = %47
  %55 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %56 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %55, i32 0, i32 3
  %57 = call i32 @down(i32* %56)
  %58 = load %struct.file_id_t*, %struct.file_id_t** %7, align 8
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = call i32 @update_parent_info(%struct.file_id_t* %58, %struct.inode* %59)
  %61 = load %struct.file_id_t*, %struct.file_id_t** %7, align 8
  %62 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load %struct.file_id_t*, %struct.file_id_t** %7, align 8
  %67 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 1
  store i32 %69, i32* %70, align 8
  %71 = load %struct.file_id_t*, %struct.file_id_t** %7, align 8
  %72 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  %76 = load %struct.file_id_t*, %struct.file_id_t** %7, align 8
  %77 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %11, align 4
  %79 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %80 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @EXFAT, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %54
  %85 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %88 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @FFS_PERMISSIONERR, align 4
  store i32 %95, i32* %10, align 4
  br label %254

96:                                               ; preds = %91, %84
  br label %97

97:                                               ; preds = %96, %54
  %98 = load %struct.super_block*, %struct.super_block** %17, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %98, %struct.chain_t* %12, i32 %99, i32* null)
  store %struct.dentry_t* %100, %struct.dentry_t** %16, align 8
  %101 = load %struct.dentry_t*, %struct.dentry_t** %16, align 8
  %102 = icmp ne %struct.dentry_t* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %104, i32* %10, align 4
  br label %254

105:                                              ; preds = %97
  %106 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %107 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %106, i32 0, i32 5
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32 (%struct.dentry_t*)*, i32 (%struct.dentry_t*)** %109, align 8
  %111 = load %struct.dentry_t*, %struct.dentry_t** %16, align 8
  %112 = call i32 %110(%struct.dentry_t* %111)
  %113 = load i32, i32* @ATTR_READONLY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = load i32, i32* @FFS_PERMISSIONERR, align 4
  store i32 %117, i32* %10, align 4
  br label %254

118:                                              ; preds = %105
  %119 = load %struct.inode*, %struct.inode** %20, align 8
  %120 = icmp ne %struct.inode* %119, null
  br i1 %120, label %121, label %178

121:                                              ; preds = %118
  %122 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %122, i32* %10, align 4
  %123 = load %struct.inode*, %struct.inode** %20, align 8
  %124 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store %struct.file_id_t* %125, %struct.file_id_t** %22, align 8
  %126 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %127 = load %struct.inode*, %struct.inode** %8, align 8
  %128 = call i32 @update_parent_info(%struct.file_id_t* %126, %struct.inode* %127)
  %129 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %130 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %129, i32 0, i32 4
  store %struct.chain_t* %130, %struct.chain_t** %14, align 8
  %131 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %132 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %23, align 4
  %134 = load %struct.super_block*, %struct.super_block** %17, align 8
  %135 = load %struct.chain_t*, %struct.chain_t** %14, align 8
  %136 = load i32, i32* %23, align 4
  %137 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %134, %struct.chain_t* %135, i32 %136, i32* null)
  store %struct.dentry_t* %137, %struct.dentry_t** %16, align 8
  %138 = load %struct.dentry_t*, %struct.dentry_t** %16, align 8
  %139 = icmp ne %struct.dentry_t* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %121
  br label %246

141:                                              ; preds = %121
  %142 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %143 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %142, i32 0, i32 5
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %145, align 8
  %147 = load %struct.dentry_t*, %struct.dentry_t** %16, align 8
  %148 = call i64 %146(%struct.dentry_t* %147)
  store i64 %148, i64* %24, align 8
  %149 = load i64, i64* %24, align 8
  %150 = load i64, i64* @TYPE_DIR, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %177

152:                                              ; preds = %141
  %153 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %154 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %25, i32 0, i32 0
  store i64 %155, i64* %156, align 8
  %157 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %158 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %159, 1
  %161 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %162 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = ashr i32 %160, %163
  %165 = add nsw i32 %164, 1
  %166 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %25, i32 0, i32 1
  store i32 %165, i32* %166, align 8
  %167 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %168 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %25, i32 0, i32 2
  store i32 %169, i32* %170, align 4
  %171 = load %struct.super_block*, %struct.super_block** %17, align 8
  %172 = call i32 @is_dir_empty(%struct.super_block* %171, %struct.chain_t* %25)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %152
  %175 = load i32, i32* @FFS_FILEEXIST, align 4
  store i32 %175, i32* %10, align 4
  br label %246

176:                                              ; preds = %152
  br label %177

177:                                              ; preds = %176, %141
  br label %178

178:                                              ; preds = %177, %118
  %179 = load %struct.inode*, %struct.inode** %8, align 8
  %180 = load i8*, i8** %19, align 8
  %181 = call i32 @resolve_path(%struct.inode* %179, i8* %180, %struct.chain_t* %13, %struct.uni_name_t* %15)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %254

185:                                              ; preds = %178
  %186 = load %struct.super_block*, %struct.super_block** %17, align 8
  %187 = load i32, i32* @VOL_DIRTY, align 4
  %188 = call i32 @fs_set_vol_flags(%struct.super_block* %186, i32 %187)
  %189 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %190, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %185
  %195 = load %struct.inode*, %struct.inode** %8, align 8
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.file_id_t*, %struct.file_id_t** %7, align 8
  %198 = call i32 @rename_file(%struct.inode* %195, %struct.chain_t* %12, i32 %196, %struct.uni_name_t* %15, %struct.file_id_t* %197)
  store i32 %198, i32* %10, align 4
  br label %204

199:                                              ; preds = %185
  %200 = load %struct.inode*, %struct.inode** %8, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load %struct.file_id_t*, %struct.file_id_t** %7, align 8
  %203 = call i32 @move_file(%struct.inode* %200, %struct.chain_t* %12, i32 %201, %struct.chain_t* %13, %struct.uni_name_t* %15, %struct.file_id_t* %202)
  store i32 %203, i32* %10, align 4
  br label %204

204:                                              ; preds = %199, %194
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @FFS_SUCCESS, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %245

208:                                              ; preds = %204
  %209 = load %struct.inode*, %struct.inode** %20, align 8
  %210 = icmp ne %struct.inode* %209, null
  br i1 %210, label %211, label %245

211:                                              ; preds = %208
  %212 = load %struct.super_block*, %struct.super_block** %17, align 8
  %213 = load %struct.chain_t*, %struct.chain_t** %14, align 8
  %214 = load i32, i32* %23, align 4
  %215 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %212, %struct.chain_t* %213, i32 %214, i32* null)
  store %struct.dentry_t* %215, %struct.dentry_t** %16, align 8
  %216 = load %struct.dentry_t*, %struct.dentry_t** %16, align 8
  %217 = icmp ne %struct.dentry_t* %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %211
  br label %246

219:                                              ; preds = %211
  %220 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %221 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %220, i32 0, i32 5
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 2
  %224 = load i32 (%struct.super_block*, %struct.chain_t*, i32, %struct.dentry_t*)*, i32 (%struct.super_block*, %struct.chain_t*, i32, %struct.dentry_t*)** %223, align 8
  %225 = load %struct.super_block*, %struct.super_block** %17, align 8
  %226 = load %struct.chain_t*, %struct.chain_t** %14, align 8
  %227 = load i32, i32* %23, align 4
  %228 = load %struct.dentry_t*, %struct.dentry_t** %16, align 8
  %229 = call i32 %224(%struct.super_block* %225, %struct.chain_t* %226, i32 %227, %struct.dentry_t* %228)
  store i32 %229, i32* %21, align 4
  %230 = load i32, i32* %21, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %219
  br label %246

233:                                              ; preds = %219
  %234 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %235 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %234, i32 0, i32 5
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 3
  %238 = load i32 (%struct.super_block*, %struct.chain_t*, i32, i32, i32)*, i32 (%struct.super_block*, %struct.chain_t*, i32, i32, i32)** %237, align 8
  %239 = load %struct.super_block*, %struct.super_block** %17, align 8
  %240 = load %struct.chain_t*, %struct.chain_t** %14, align 8
  %241 = load i32, i32* %23, align 4
  %242 = load i32, i32* %21, align 4
  %243 = add nsw i32 %242, 1
  %244 = call i32 %238(%struct.super_block* %239, %struct.chain_t* %240, i32 %241, i32 0, i32 %243)
  br label %245

245:                                              ; preds = %233, %208, %204
  br label %246

246:                                              ; preds = %245, %232, %218, %174, %140
  %247 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %248 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %247, i32 0, i32 4
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %252, i32* %10, align 4
  br label %253

253:                                              ; preds = %251, %246
  br label %254

254:                                              ; preds = %253, %184, %116, %103, %94
  %255 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %256 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %255, i32 0, i32 3
  %257 = call i32 @up(i32* %256)
  %258 = load i32, i32* %10, align 4
  store i32 %258, i32* %5, align 4
  br label %259

259:                                              ; preds = %254, %52, %42
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local %struct.TYPE_7__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @update_parent_info(%struct.file_id_t*, %struct.inode*) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @is_dir_empty(%struct.super_block*, %struct.chain_t*) #1

declare dso_local i32 @resolve_path(%struct.inode*, i8*, %struct.chain_t*, %struct.uni_name_t*) #1

declare dso_local i32 @fs_set_vol_flags(%struct.super_block*, i32) #1

declare dso_local i32 @rename_file(%struct.inode*, %struct.chain_t*, i32, %struct.uni_name_t*, %struct.file_id_t*) #1

declare dso_local i32 @move_file(%struct.inode*, %struct.chain_t*, i32, %struct.chain_t*, %struct.uni_name_t*, %struct.file_id_t*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
