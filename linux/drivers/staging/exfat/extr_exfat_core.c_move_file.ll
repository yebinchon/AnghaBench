; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_move_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_move_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i32, i32 }
%struct.uni_name_t = type { i32 }
%struct.file_id_t = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.dos_name_t = type { i32 }
%struct.dentry_t = type { i32 }
%struct.fs_info_t = type { i64, i64, %struct.fs_func* }
%struct.fs_func = type { i64 (%struct.dentry_t.0*)*, i64 (%struct.dentry_t.1*)*, i64 (%struct.super_block*, %struct.chain_t.2*, i64, %struct.dentry_t.3*)*, i32 (%struct.dentry_t.4*)*, i64 (%struct.super_block*, %struct.chain_t.5*, i64, i64, %struct.uni_name_t*, %struct.dos_name_t.6*)*, i32 (%struct.super_block*, %struct.chain_t.7*, i64, i32, i64)*, i32 (%struct.dentry_t.8*, i64)*, i32 (%struct.dentry_t.9*, i32)* }
%struct.dentry_t.0 = type opaque
%struct.dentry_t.1 = type opaque
%struct.chain_t.2 = type opaque
%struct.dentry_t.3 = type opaque
%struct.dentry_t.4 = type opaque
%struct.chain_t.5 = type opaque
%struct.dos_name_t.6 = type opaque
%struct.chain_t.7 = type opaque
%struct.dentry_t.8 = type opaque
%struct.dentry_t.9 = type opaque
%struct.TYPE_4__ = type { %struct.fs_info_t }

@FFS_MEDIAERR = common dso_local global i64 0, align 8
@TYPE_DIR = common dso_local global i64 0, align 8
@FFS_INVALIDPATH = common dso_local global i64 0, align 8
@FFS_FULL = common dso_local global i64 0, align 8
@DENTRY_SIZE = common dso_local global i32 0, align 4
@TYPE_FILE = common dso_local global i64 0, align 8
@ATTR_ARCHIVE = common dso_local global i32 0, align 4
@EXFAT = common dso_local global i64 0, align 8
@FFS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @move_file(%struct.inode* %0, %struct.chain_t* %1, i64 %2, %struct.chain_t* %3, %struct.uni_name_t* %4, %struct.file_id_t* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.chain_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.chain_t*, align 8
  %12 = alloca %struct.uni_name_t*, align 8
  %13 = alloca %struct.file_id_t*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.chain_t, align 8
  %21 = alloca %struct.dos_name_t, align 4
  %22 = alloca %struct.dentry_t*, align 8
  %23 = alloca %struct.dentry_t*, align 8
  %24 = alloca %struct.super_block*, align 8
  %25 = alloca %struct.fs_info_t*, align 8
  %26 = alloca %struct.fs_func*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.chain_t* %1, %struct.chain_t** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.chain_t* %3, %struct.chain_t** %11, align 8
  store %struct.uni_name_t* %4, %struct.uni_name_t** %12, align 8
  store %struct.file_id_t* %5, %struct.file_id_t** %13, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.super_block*, %struct.super_block** %28, align 8
  store %struct.super_block* %29, %struct.super_block** %24, align 8
  %30 = load %struct.super_block*, %struct.super_block** %24, align 8
  %31 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.fs_info_t* %32, %struct.fs_info_t** %25, align 8
  %33 = load %struct.fs_info_t*, %struct.fs_info_t** %25, align 8
  %34 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %33, i32 0, i32 2
  %35 = load %struct.fs_func*, %struct.fs_func** %34, align 8
  store %struct.fs_func* %35, %struct.fs_func** %26, align 8
  %36 = load %struct.super_block*, %struct.super_block** %24, align 8
  %37 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = trunc i64 %38 to i32
  %40 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %36, %struct.chain_t* %37, i32 %39, i32* %18)
  store %struct.dentry_t* %40, %struct.dentry_t** %22, align 8
  %41 = load %struct.dentry_t*, %struct.dentry_t** %22, align 8
  %42 = icmp ne %struct.dentry_t* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %6
  %44 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %44, i64* %7, align 8
  br label %317

45:                                               ; preds = %6
  %46 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %47 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %46, i32 0, i32 0
  %48 = load i64 (%struct.dentry_t.0*)*, i64 (%struct.dentry_t.0*)** %47, align 8
  %49 = load %struct.dentry_t*, %struct.dentry_t** %22, align 8
  %50 = bitcast %struct.dentry_t* %49 to %struct.dentry_t.0*
  %51 = call i64 %48(%struct.dentry_t.0* %50)
  %52 = load i64, i64* @TYPE_DIR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %45
  %55 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %56 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %55, i32 0, i32 1
  %57 = load i64 (%struct.dentry_t.1*)*, i64 (%struct.dentry_t.1*)** %56, align 8
  %58 = load %struct.dentry_t*, %struct.dentry_t** %22, align 8
  %59 = bitcast %struct.dentry_t* %58 to %struct.dentry_t.1*
  %60 = call i64 %57(%struct.dentry_t.1* %59)
  %61 = load %struct.chain_t*, %struct.chain_t** %11, align 8
  %62 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i64, i64* @FFS_INVALIDPATH, align 8
  store i64 %66, i64* %7, align 8
  br label %317

67:                                               ; preds = %54, %45
  %68 = load %struct.super_block*, %struct.super_block** %24, align 8
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @buf_lock(%struct.super_block* %68, i32 %69)
  %71 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %72 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %71, i32 0, i32 2
  %73 = load i64 (%struct.super_block*, %struct.chain_t.2*, i64, %struct.dentry_t.3*)*, i64 (%struct.super_block*, %struct.chain_t.2*, i64, %struct.dentry_t.3*)** %72, align 8
  %74 = load %struct.super_block*, %struct.super_block** %24, align 8
  %75 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %76 = bitcast %struct.chain_t* %75 to %struct.chain_t.2*
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.dentry_t*, %struct.dentry_t** %22, align 8
  %79 = bitcast %struct.dentry_t* %78 to %struct.dentry_t.3*
  %80 = call i64 %73(%struct.super_block* %74, %struct.chain_t.2* %76, i64 %77, %struct.dentry_t.3* %79)
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %17, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %67
  %84 = load %struct.super_block*, %struct.super_block** %24, align 8
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @buf_unlock(%struct.super_block* %84, i32 %85)
  %87 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %87, i64* %7, align 8
  br label %317

88:                                               ; preds = %67
  %89 = load i64, i64* %17, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %17, align 8
  %91 = load %struct.super_block*, %struct.super_block** %24, align 8
  %92 = load %struct.chain_t*, %struct.chain_t** %11, align 8
  %93 = load %struct.uni_name_t*, %struct.uni_name_t** %12, align 8
  %94 = call i64 @get_num_entries_and_dos_name(%struct.super_block* %91, %struct.chain_t* %92, %struct.uni_name_t* %93, i64* %16, %struct.dos_name_t* %21)
  store i64 %94, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.super_block*, %struct.super_block** %24, align 8
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @buf_unlock(%struct.super_block* %98, i32 %99)
  %101 = load i64, i64* %14, align 8
  store i64 %101, i64* %7, align 8
  br label %317

102:                                              ; preds = %88
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = load %struct.chain_t*, %struct.chain_t** %11, align 8
  %105 = load i64, i64* %16, align 8
  %106 = call i64 @find_empty_entry(%struct.inode* %103, %struct.chain_t* %104, i64 %105)
  store i64 %106, i64* %15, align 8
  %107 = load i64, i64* %15, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %struct.super_block*, %struct.super_block** %24, align 8
  %111 = load i32, i32* %18, align 4
  %112 = call i32 @buf_unlock(%struct.super_block* %110, i32 %111)
  %113 = load i64, i64* @FFS_FULL, align 8
  store i64 %113, i64* %7, align 8
  br label %317

114:                                              ; preds = %102
  %115 = load %struct.super_block*, %struct.super_block** %24, align 8
  %116 = load %struct.chain_t*, %struct.chain_t** %11, align 8
  %117 = load i64, i64* %15, align 8
  %118 = trunc i64 %117 to i32
  %119 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %115, %struct.chain_t* %116, i32 %118, i32* %19)
  store %struct.dentry_t* %119, %struct.dentry_t** %23, align 8
  %120 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %121 = icmp ne %struct.dentry_t* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %114
  %123 = load %struct.super_block*, %struct.super_block** %24, align 8
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @buf_unlock(%struct.super_block* %123, i32 %124)
  %126 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %126, i64* %7, align 8
  br label %317

127:                                              ; preds = %114
  %128 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %129 = bitcast %struct.dentry_t* %128 to i8*
  %130 = load %struct.dentry_t*, %struct.dentry_t** %22, align 8
  %131 = bitcast %struct.dentry_t* %130 to i8*
  %132 = load i32, i32* @DENTRY_SIZE, align 4
  %133 = call i32 @memcpy(i8* %129, i8* %131, i32 %132)
  %134 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %135 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %134, i32 0, i32 0
  %136 = load i64 (%struct.dentry_t.0*)*, i64 (%struct.dentry_t.0*)** %135, align 8
  %137 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %138 = bitcast %struct.dentry_t* %137 to %struct.dentry_t.0*
  %139 = call i64 %136(%struct.dentry_t.0* %138)
  %140 = load i64, i64* @TYPE_FILE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %162

142:                                              ; preds = %127
  %143 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %144 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %143, i32 0, i32 7
  %145 = load i32 (%struct.dentry_t.9*, i32)*, i32 (%struct.dentry_t.9*, i32)** %144, align 8
  %146 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %147 = bitcast %struct.dentry_t* %146 to %struct.dentry_t.9*
  %148 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %149 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %148, i32 0, i32 3
  %150 = load i32 (%struct.dentry_t.4*)*, i32 (%struct.dentry_t.4*)** %149, align 8
  %151 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %152 = bitcast %struct.dentry_t* %151 to %struct.dentry_t.4*
  %153 = call i32 %150(%struct.dentry_t.4* %152)
  %154 = load i32, i32* @ATTR_ARCHIVE, align 4
  %155 = or i32 %153, %154
  %156 = call i32 %145(%struct.dentry_t.9* %147, i32 %155)
  %157 = load i32, i32* @ATTR_ARCHIVE, align 4
  %158 = load %struct.file_id_t*, %struct.file_id_t** %13, align 8
  %159 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %142, %127
  %163 = load %struct.super_block*, %struct.super_block** %24, align 8
  %164 = load i32, i32* %19, align 4
  %165 = call i32 @buf_modify(%struct.super_block* %163, i32 %164)
  %166 = load %struct.super_block*, %struct.super_block** %24, align 8
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @buf_unlock(%struct.super_block* %166, i32 %167)
  %169 = load %struct.fs_info_t*, %struct.fs_info_t** %25, align 8
  %170 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @EXFAT, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %213

174:                                              ; preds = %162
  %175 = load %struct.super_block*, %struct.super_block** %24, align 8
  %176 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %177 = load i64, i64* %10, align 8
  %178 = add nsw i64 %177, 1
  %179 = trunc i64 %178 to i32
  %180 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %175, %struct.chain_t* %176, i32 %179, i32* %18)
  store %struct.dentry_t* %180, %struct.dentry_t** %22, align 8
  %181 = load %struct.super_block*, %struct.super_block** %24, align 8
  %182 = load i32, i32* %18, align 4
  %183 = call i32 @buf_lock(%struct.super_block* %181, i32 %182)
  %184 = load %struct.super_block*, %struct.super_block** %24, align 8
  %185 = load %struct.chain_t*, %struct.chain_t** %11, align 8
  %186 = load i64, i64* %15, align 8
  %187 = add nsw i64 %186, 1
  %188 = trunc i64 %187 to i32
  %189 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %184, %struct.chain_t* %185, i32 %188, i32* %19)
  store %struct.dentry_t* %189, %struct.dentry_t** %23, align 8
  %190 = load %struct.dentry_t*, %struct.dentry_t** %22, align 8
  %191 = icmp ne %struct.dentry_t* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %174
  %193 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %194 = icmp ne %struct.dentry_t* %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %192, %174
  %196 = load %struct.super_block*, %struct.super_block** %24, align 8
  %197 = load i32, i32* %18, align 4
  %198 = call i32 @buf_unlock(%struct.super_block* %196, i32 %197)
  %199 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %199, i64* %7, align 8
  br label %317

200:                                              ; preds = %192
  %201 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %202 = bitcast %struct.dentry_t* %201 to i8*
  %203 = load %struct.dentry_t*, %struct.dentry_t** %22, align 8
  %204 = bitcast %struct.dentry_t* %203 to i8*
  %205 = load i32, i32* @DENTRY_SIZE, align 4
  %206 = call i32 @memcpy(i8* %202, i8* %204, i32 %205)
  %207 = load %struct.super_block*, %struct.super_block** %24, align 8
  %208 = load i32, i32* %19, align 4
  %209 = call i32 @buf_modify(%struct.super_block* %207, i32 %208)
  %210 = load %struct.super_block*, %struct.super_block** %24, align 8
  %211 = load i32, i32* %18, align 4
  %212 = call i32 @buf_unlock(%struct.super_block* %210, i32 %211)
  br label %268

213:                                              ; preds = %162
  %214 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %215 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %214, i32 0, i32 0
  %216 = load i64 (%struct.dentry_t.0*)*, i64 (%struct.dentry_t.0*)** %215, align 8
  %217 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %218 = bitcast %struct.dentry_t* %217 to %struct.dentry_t.0*
  %219 = call i64 %216(%struct.dentry_t.0* %218)
  %220 = load i64, i64* @TYPE_DIR, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %267

222:                                              ; preds = %213
  %223 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %224 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %223, i32 0, i32 1
  %225 = load i64 (%struct.dentry_t.1*)*, i64 (%struct.dentry_t.1*)** %224, align 8
  %226 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %227 = bitcast %struct.dentry_t* %226 to %struct.dentry_t.1*
  %228 = call i64 %225(%struct.dentry_t.1* %227)
  %229 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %20, i32 0, i32 0
  store i64 %228, i64* %229, align 8
  %230 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %20, i32 0, i32 1
  store i32 1, i32* %230, align 8
  %231 = load %struct.super_block*, %struct.super_block** %24, align 8
  %232 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %231, %struct.chain_t* %20, i32 1, i32* %19)
  store %struct.dentry_t* %232, %struct.dentry_t** %23, align 8
  %233 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %234 = icmp ne %struct.dentry_t* %233, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %222
  %236 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %236, i64* %7, align 8
  br label %317

237:                                              ; preds = %222
  %238 = load %struct.chain_t*, %struct.chain_t** %11, align 8
  %239 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.fs_info_t*, %struct.fs_info_t** %25, align 8
  %242 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %240, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %237
  %246 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %247 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %246, i32 0, i32 6
  %248 = load i32 (%struct.dentry_t.8*, i64)*, i32 (%struct.dentry_t.8*, i64)** %247, align 8
  %249 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %250 = bitcast %struct.dentry_t* %249 to %struct.dentry_t.8*
  %251 = call i64 @CLUSTER_32(i32 0)
  %252 = call i32 %248(%struct.dentry_t.8* %250, i64 %251)
  br label %263

253:                                              ; preds = %237
  %254 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %255 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %254, i32 0, i32 6
  %256 = load i32 (%struct.dentry_t.8*, i64)*, i32 (%struct.dentry_t.8*, i64)** %255, align 8
  %257 = load %struct.dentry_t*, %struct.dentry_t** %23, align 8
  %258 = bitcast %struct.dentry_t* %257 to %struct.dentry_t.8*
  %259 = load %struct.chain_t*, %struct.chain_t** %11, align 8
  %260 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = call i32 %256(%struct.dentry_t.8* %258, i64 %261)
  br label %263

263:                                              ; preds = %253, %245
  %264 = load %struct.super_block*, %struct.super_block** %24, align 8
  %265 = load i32, i32* %19, align 4
  %266 = call i32 @buf_modify(%struct.super_block* %264, i32 %265)
  br label %267

267:                                              ; preds = %263, %213
  br label %268

268:                                              ; preds = %267, %200
  %269 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %270 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %269, i32 0, i32 4
  %271 = load i64 (%struct.super_block*, %struct.chain_t.5*, i64, i64, %struct.uni_name_t*, %struct.dos_name_t.6*)*, i64 (%struct.super_block*, %struct.chain_t.5*, i64, i64, %struct.uni_name_t*, %struct.dos_name_t.6*)** %270, align 8
  %272 = load %struct.super_block*, %struct.super_block** %24, align 8
  %273 = load %struct.chain_t*, %struct.chain_t** %11, align 8
  %274 = bitcast %struct.chain_t* %273 to %struct.chain_t.5*
  %275 = load i64, i64* %15, align 8
  %276 = load i64, i64* %16, align 8
  %277 = load %struct.uni_name_t*, %struct.uni_name_t** %12, align 8
  %278 = bitcast %struct.dos_name_t* %21 to %struct.dos_name_t.6*
  %279 = call i64 %271(%struct.super_block* %272, %struct.chain_t.5* %274, i64 %275, i64 %276, %struct.uni_name_t* %277, %struct.dos_name_t.6* %278)
  store i64 %279, i64* %14, align 8
  %280 = load i64, i64* %14, align 8
  %281 = load i64, i64* @FFS_SUCCESS, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %268
  %284 = load i64, i64* %14, align 8
  store i64 %284, i64* %7, align 8
  br label %317

285:                                              ; preds = %268
  %286 = load %struct.fs_func*, %struct.fs_func** %26, align 8
  %287 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %286, i32 0, i32 5
  %288 = load i32 (%struct.super_block*, %struct.chain_t.7*, i64, i32, i64)*, i32 (%struct.super_block*, %struct.chain_t.7*, i64, i32, i64)** %287, align 8
  %289 = load %struct.super_block*, %struct.super_block** %24, align 8
  %290 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %291 = bitcast %struct.chain_t* %290 to %struct.chain_t.7*
  %292 = load i64, i64* %10, align 8
  %293 = load i64, i64* %17, align 8
  %294 = call i32 %288(%struct.super_block* %289, %struct.chain_t.7* %291, i64 %292, i32 0, i64 %293)
  %295 = load %struct.chain_t*, %struct.chain_t** %11, align 8
  %296 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.file_id_t*, %struct.file_id_t** %13, align 8
  %299 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  store i64 %297, i64* %300, align 8
  %301 = load %struct.chain_t*, %struct.chain_t** %11, align 8
  %302 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.file_id_t*, %struct.file_id_t** %13, align 8
  %305 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 2
  store i32 %303, i32* %306, align 4
  %307 = load %struct.chain_t*, %struct.chain_t** %11, align 8
  %308 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.file_id_t*, %struct.file_id_t** %13, align 8
  %311 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 1
  store i32 %309, i32* %312, align 8
  %313 = load i64, i64* %15, align 8
  %314 = load %struct.file_id_t*, %struct.file_id_t** %13, align 8
  %315 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %314, i32 0, i32 1
  store i64 %313, i64* %315, align 8
  %316 = load i64, i64* @FFS_SUCCESS, align 8
  store i64 %316, i64* %7, align 8
  br label %317

317:                                              ; preds = %285, %283, %235, %195, %122, %109, %97, %83, %65, %43
  %318 = load i64, i64* %7, align 8
  ret i64 %318
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i32 @buf_lock(%struct.super_block*, i32) #1

declare dso_local i32 @buf_unlock(%struct.super_block*, i32) #1

declare dso_local i64 @get_num_entries_and_dos_name(%struct.super_block*, %struct.chain_t*, %struct.uni_name_t*, i64*, %struct.dos_name_t*) #1

declare dso_local i64 @find_empty_entry(%struct.inode*, %struct.chain_t*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @buf_modify(%struct.super_block*, i32) #1

declare dso_local i64 @CLUSTER_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
