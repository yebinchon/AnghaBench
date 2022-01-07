; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_rename_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_rename_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.uni_name_t = type { i32 }
%struct.file_id_t = type { i32, i64 }
%struct.dos_name_t = type { i32 }
%struct.dentry_t = type { i32 }
%struct.fs_info_t = type { i64, %struct.fs_func* }
%struct.fs_func = type { i64 (%struct.super_block*, %struct.chain_t.0*, i64, %struct.dentry_t.1*)*, i64 (%struct.dentry_t.2*)*, i32 (%struct.dentry_t.3*)*, i64 (%struct.super_block*, %struct.chain_t.4*, i64, i64, %struct.uni_name_t*, %struct.dos_name_t.5*)*, i32 (%struct.super_block*, %struct.chain_t.6*, i64, i64, i64)*, i32 (%struct.dentry_t.7*, i32)* }
%struct.chain_t.0 = type opaque
%struct.dentry_t.1 = type opaque
%struct.dentry_t.2 = type opaque
%struct.dentry_t.3 = type opaque
%struct.chain_t.4 = type opaque
%struct.dos_name_t.5 = type opaque
%struct.chain_t.6 = type opaque
%struct.dentry_t.7 = type opaque
%struct.TYPE_2__ = type { %struct.fs_info_t }

@FFS_MEDIAERR = common dso_local global i64 0, align 8
@FFS_FULL = common dso_local global i64 0, align 8
@DENTRY_SIZE = common dso_local global i32 0, align 4
@TYPE_FILE = common dso_local global i64 0, align 8
@ATTR_ARCHIVE = common dso_local global i32 0, align 4
@EXFAT = common dso_local global i64 0, align 8
@FFS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rename_file(%struct.inode* %0, %struct.chain_t* %1, i64 %2, %struct.uni_name_t* %3, %struct.file_id_t* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.chain_t*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.uni_name_t*, align 8
  %11 = alloca %struct.file_id_t*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dos_name_t, align 4
  %19 = alloca %struct.dentry_t*, align 8
  %20 = alloca %struct.dentry_t*, align 8
  %21 = alloca %struct.super_block*, align 8
  %22 = alloca %struct.fs_info_t*, align 8
  %23 = alloca %struct.fs_func*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.chain_t* %1, %struct.chain_t** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.uni_name_t* %3, %struct.uni_name_t** %10, align 8
  store %struct.file_id_t* %4, %struct.file_id_t** %11, align 8
  store i64 -1, i64* %13, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  store %struct.super_block* %26, %struct.super_block** %21, align 8
  %27 = load %struct.super_block*, %struct.super_block** %21, align 8
  %28 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.fs_info_t* %29, %struct.fs_info_t** %22, align 8
  %30 = load %struct.fs_info_t*, %struct.fs_info_t** %22, align 8
  %31 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %30, i32 0, i32 1
  %32 = load %struct.fs_func*, %struct.fs_func** %31, align 8
  store %struct.fs_func* %32, %struct.fs_func** %23, align 8
  %33 = load %struct.super_block*, %struct.super_block** %21, align 8
  %34 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %33, %struct.chain_t* %34, i64 %35, i32* %16)
  store %struct.dentry_t* %36, %struct.dentry_t** %19, align 8
  %37 = load %struct.dentry_t*, %struct.dentry_t** %19, align 8
  %38 = icmp ne %struct.dentry_t* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %5
  %40 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %40, i64* %6, align 8
  br label %283

41:                                               ; preds = %5
  %42 = load %struct.super_block*, %struct.super_block** %21, align 8
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @buf_lock(%struct.super_block* %42, i32 %43)
  %45 = load %struct.fs_func*, %struct.fs_func** %23, align 8
  %46 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %45, i32 0, i32 0
  %47 = load i64 (%struct.super_block*, %struct.chain_t.0*, i64, %struct.dentry_t.1*)*, i64 (%struct.super_block*, %struct.chain_t.0*, i64, %struct.dentry_t.1*)** %46, align 8
  %48 = load %struct.super_block*, %struct.super_block** %21, align 8
  %49 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %50 = bitcast %struct.chain_t* %49 to %struct.chain_t.0*
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.dentry_t*, %struct.dentry_t** %19, align 8
  %53 = bitcast %struct.dentry_t* %52 to %struct.dentry_t.1*
  %54 = call i64 %47(%struct.super_block* %48, %struct.chain_t.0* %50, i64 %51, %struct.dentry_t.1* %53)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %41
  %58 = load %struct.super_block*, %struct.super_block** %21, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @buf_unlock(%struct.super_block* %58, i32 %59)
  %61 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %61, i64* %6, align 8
  br label %283

62:                                               ; preds = %41
  %63 = load i64, i64* %14, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %14, align 8
  %65 = load %struct.super_block*, %struct.super_block** %21, align 8
  %66 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %67 = load %struct.uni_name_t*, %struct.uni_name_t** %10, align 8
  %68 = call i64 @get_num_entries_and_dos_name(%struct.super_block* %65, %struct.chain_t* %66, %struct.uni_name_t* %67, i64* %15, %struct.dos_name_t* %18)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.super_block*, %struct.super_block** %21, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @buf_unlock(%struct.super_block* %72, i32 %73)
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %6, align 8
  br label %283

76:                                               ; preds = %62
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %15, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %218

80:                                               ; preds = %76
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %83 = load i64, i64* %15, align 8
  %84 = call i64 @find_empty_entry(%struct.inode* %81, %struct.chain_t* %82, i64 %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.super_block*, %struct.super_block** %21, align 8
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @buf_unlock(%struct.super_block* %88, i32 %89)
  %91 = load i64, i64* @FFS_FULL, align 8
  store i64 %91, i64* %6, align 8
  br label %283

92:                                               ; preds = %80
  %93 = load %struct.super_block*, %struct.super_block** %21, align 8
  %94 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %93, %struct.chain_t* %94, i64 %95, i32* %17)
  store %struct.dentry_t* %96, %struct.dentry_t** %20, align 8
  %97 = load %struct.dentry_t*, %struct.dentry_t** %20, align 8
  %98 = icmp ne %struct.dentry_t* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = load %struct.super_block*, %struct.super_block** %21, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @buf_unlock(%struct.super_block* %100, i32 %101)
  %103 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %103, i64* %6, align 8
  br label %283

104:                                              ; preds = %92
  %105 = load %struct.dentry_t*, %struct.dentry_t** %20, align 8
  %106 = bitcast %struct.dentry_t* %105 to i8*
  %107 = load %struct.dentry_t*, %struct.dentry_t** %19, align 8
  %108 = bitcast %struct.dentry_t* %107 to i8*
  %109 = load i32, i32* @DENTRY_SIZE, align 4
  %110 = call i32 @memcpy(i8* %106, i8* %108, i32 %109)
  %111 = load %struct.fs_func*, %struct.fs_func** %23, align 8
  %112 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %111, i32 0, i32 1
  %113 = load i64 (%struct.dentry_t.2*)*, i64 (%struct.dentry_t.2*)** %112, align 8
  %114 = load %struct.dentry_t*, %struct.dentry_t** %20, align 8
  %115 = bitcast %struct.dentry_t* %114 to %struct.dentry_t.2*
  %116 = call i64 %113(%struct.dentry_t.2* %115)
  %117 = load i64, i64* @TYPE_FILE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %104
  %120 = load %struct.fs_func*, %struct.fs_func** %23, align 8
  %121 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %120, i32 0, i32 5
  %122 = load i32 (%struct.dentry_t.7*, i32)*, i32 (%struct.dentry_t.7*, i32)** %121, align 8
  %123 = load %struct.dentry_t*, %struct.dentry_t** %20, align 8
  %124 = bitcast %struct.dentry_t* %123 to %struct.dentry_t.7*
  %125 = load %struct.fs_func*, %struct.fs_func** %23, align 8
  %126 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %125, i32 0, i32 2
  %127 = load i32 (%struct.dentry_t.3*)*, i32 (%struct.dentry_t.3*)** %126, align 8
  %128 = load %struct.dentry_t*, %struct.dentry_t** %20, align 8
  %129 = bitcast %struct.dentry_t* %128 to %struct.dentry_t.3*
  %130 = call i32 %127(%struct.dentry_t.3* %129)
  %131 = load i32, i32* @ATTR_ARCHIVE, align 4
  %132 = or i32 %130, %131
  %133 = call i32 %122(%struct.dentry_t.7* %124, i32 %132)
  %134 = load i32, i32* @ATTR_ARCHIVE, align 4
  %135 = load %struct.file_id_t*, %struct.file_id_t** %11, align 8
  %136 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %119, %104
  %140 = load %struct.super_block*, %struct.super_block** %21, align 8
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @buf_modify(%struct.super_block* %140, i32 %141)
  %143 = load %struct.super_block*, %struct.super_block** %21, align 8
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @buf_unlock(%struct.super_block* %143, i32 %144)
  %146 = load %struct.fs_info_t*, %struct.fs_info_t** %22, align 8
  %147 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @EXFAT, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %188

151:                                              ; preds = %139
  %152 = load %struct.super_block*, %struct.super_block** %21, align 8
  %153 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %154 = load i64, i64* %9, align 8
  %155 = add nsw i64 %154, 1
  %156 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %152, %struct.chain_t* %153, i64 %155, i32* %16)
  store %struct.dentry_t* %156, %struct.dentry_t** %19, align 8
  %157 = load %struct.super_block*, %struct.super_block** %21, align 8
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @buf_lock(%struct.super_block* %157, i32 %158)
  %160 = load %struct.super_block*, %struct.super_block** %21, align 8
  %161 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %162 = load i64, i64* %13, align 8
  %163 = add nsw i64 %162, 1
  %164 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %160, %struct.chain_t* %161, i64 %163, i32* %17)
  store %struct.dentry_t* %164, %struct.dentry_t** %20, align 8
  %165 = load %struct.dentry_t*, %struct.dentry_t** %19, align 8
  %166 = icmp ne %struct.dentry_t* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %151
  %168 = load %struct.dentry_t*, %struct.dentry_t** %20, align 8
  %169 = icmp ne %struct.dentry_t* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %167, %151
  %171 = load %struct.super_block*, %struct.super_block** %21, align 8
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @buf_unlock(%struct.super_block* %171, i32 %172)
  %174 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %174, i64* %6, align 8
  br label %283

175:                                              ; preds = %167
  %176 = load %struct.dentry_t*, %struct.dentry_t** %20, align 8
  %177 = bitcast %struct.dentry_t* %176 to i8*
  %178 = load %struct.dentry_t*, %struct.dentry_t** %19, align 8
  %179 = bitcast %struct.dentry_t* %178 to i8*
  %180 = load i32, i32* @DENTRY_SIZE, align 4
  %181 = call i32 @memcpy(i8* %177, i8* %179, i32 %180)
  %182 = load %struct.super_block*, %struct.super_block** %21, align 8
  %183 = load i32, i32* %17, align 4
  %184 = call i32 @buf_modify(%struct.super_block* %182, i32 %183)
  %185 = load %struct.super_block*, %struct.super_block** %21, align 8
  %186 = load i32, i32* %16, align 4
  %187 = call i32 @buf_unlock(%struct.super_block* %185, i32 %186)
  br label %188

188:                                              ; preds = %175, %139
  %189 = load %struct.fs_func*, %struct.fs_func** %23, align 8
  %190 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %189, i32 0, i32 3
  %191 = load i64 (%struct.super_block*, %struct.chain_t.4*, i64, i64, %struct.uni_name_t*, %struct.dos_name_t.5*)*, i64 (%struct.super_block*, %struct.chain_t.4*, i64, i64, %struct.uni_name_t*, %struct.dos_name_t.5*)** %190, align 8
  %192 = load %struct.super_block*, %struct.super_block** %21, align 8
  %193 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %194 = bitcast %struct.chain_t* %193 to %struct.chain_t.4*
  %195 = load i64, i64* %13, align 8
  %196 = load i64, i64* %15, align 8
  %197 = load %struct.uni_name_t*, %struct.uni_name_t** %10, align 8
  %198 = bitcast %struct.dos_name_t* %18 to %struct.dos_name_t.5*
  %199 = call i64 %191(%struct.super_block* %192, %struct.chain_t.4* %194, i64 %195, i64 %196, %struct.uni_name_t* %197, %struct.dos_name_t.5* %198)
  store i64 %199, i64* %12, align 8
  %200 = load i64, i64* %12, align 8
  %201 = load i64, i64* @FFS_SUCCESS, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %188
  %204 = load i64, i64* %12, align 8
  store i64 %204, i64* %6, align 8
  br label %283

205:                                              ; preds = %188
  %206 = load %struct.fs_func*, %struct.fs_func** %23, align 8
  %207 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %206, i32 0, i32 4
  %208 = load i32 (%struct.super_block*, %struct.chain_t.6*, i64, i64, i64)*, i32 (%struct.super_block*, %struct.chain_t.6*, i64, i64, i64)** %207, align 8
  %209 = load %struct.super_block*, %struct.super_block** %21, align 8
  %210 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %211 = bitcast %struct.chain_t* %210 to %struct.chain_t.6*
  %212 = load i64, i64* %9, align 8
  %213 = load i64, i64* %14, align 8
  %214 = call i32 %208(%struct.super_block* %209, %struct.chain_t.6* %211, i64 %212, i64 0, i64 %213)
  %215 = load i64, i64* %13, align 8
  %216 = load %struct.file_id_t*, %struct.file_id_t** %11, align 8
  %217 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %216, i32 0, i32 1
  store i64 %215, i64* %217, align 8
  br label %281

218:                                              ; preds = %76
  %219 = load %struct.fs_func*, %struct.fs_func** %23, align 8
  %220 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %219, i32 0, i32 1
  %221 = load i64 (%struct.dentry_t.2*)*, i64 (%struct.dentry_t.2*)** %220, align 8
  %222 = load %struct.dentry_t*, %struct.dentry_t** %19, align 8
  %223 = bitcast %struct.dentry_t* %222 to %struct.dentry_t.2*
  %224 = call i64 %221(%struct.dentry_t.2* %223)
  %225 = load i64, i64* @TYPE_FILE, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %247

227:                                              ; preds = %218
  %228 = load %struct.fs_func*, %struct.fs_func** %23, align 8
  %229 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %228, i32 0, i32 5
  %230 = load i32 (%struct.dentry_t.7*, i32)*, i32 (%struct.dentry_t.7*, i32)** %229, align 8
  %231 = load %struct.dentry_t*, %struct.dentry_t** %19, align 8
  %232 = bitcast %struct.dentry_t* %231 to %struct.dentry_t.7*
  %233 = load %struct.fs_func*, %struct.fs_func** %23, align 8
  %234 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %233, i32 0, i32 2
  %235 = load i32 (%struct.dentry_t.3*)*, i32 (%struct.dentry_t.3*)** %234, align 8
  %236 = load %struct.dentry_t*, %struct.dentry_t** %19, align 8
  %237 = bitcast %struct.dentry_t* %236 to %struct.dentry_t.3*
  %238 = call i32 %235(%struct.dentry_t.3* %237)
  %239 = load i32, i32* @ATTR_ARCHIVE, align 4
  %240 = or i32 %238, %239
  %241 = call i32 %230(%struct.dentry_t.7* %232, i32 %240)
  %242 = load i32, i32* @ATTR_ARCHIVE, align 4
  %243 = load %struct.file_id_t*, %struct.file_id_t** %11, align 8
  %244 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %227, %218
  %248 = load %struct.super_block*, %struct.super_block** %21, align 8
  %249 = load i32, i32* %16, align 4
  %250 = call i32 @buf_modify(%struct.super_block* %248, i32 %249)
  %251 = load %struct.super_block*, %struct.super_block** %21, align 8
  %252 = load i32, i32* %16, align 4
  %253 = call i32 @buf_unlock(%struct.super_block* %251, i32 %252)
  %254 = load %struct.fs_func*, %struct.fs_func** %23, align 8
  %255 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %254, i32 0, i32 3
  %256 = load i64 (%struct.super_block*, %struct.chain_t.4*, i64, i64, %struct.uni_name_t*, %struct.dos_name_t.5*)*, i64 (%struct.super_block*, %struct.chain_t.4*, i64, i64, %struct.uni_name_t*, %struct.dos_name_t.5*)** %255, align 8
  %257 = load %struct.super_block*, %struct.super_block** %21, align 8
  %258 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %259 = bitcast %struct.chain_t* %258 to %struct.chain_t.4*
  %260 = load i64, i64* %9, align 8
  %261 = load i64, i64* %15, align 8
  %262 = load %struct.uni_name_t*, %struct.uni_name_t** %10, align 8
  %263 = bitcast %struct.dos_name_t* %18 to %struct.dos_name_t.5*
  %264 = call i64 %256(%struct.super_block* %257, %struct.chain_t.4* %259, i64 %260, i64 %261, %struct.uni_name_t* %262, %struct.dos_name_t.5* %263)
  store i64 %264, i64* %12, align 8
  %265 = load i64, i64* %12, align 8
  %266 = load i64, i64* @FFS_SUCCESS, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %247
  %269 = load i64, i64* %12, align 8
  store i64 %269, i64* %6, align 8
  br label %283

270:                                              ; preds = %247
  %271 = load %struct.fs_func*, %struct.fs_func** %23, align 8
  %272 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %271, i32 0, i32 4
  %273 = load i32 (%struct.super_block*, %struct.chain_t.6*, i64, i64, i64)*, i32 (%struct.super_block*, %struct.chain_t.6*, i64, i64, i64)** %272, align 8
  %274 = load %struct.super_block*, %struct.super_block** %21, align 8
  %275 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %276 = bitcast %struct.chain_t* %275 to %struct.chain_t.6*
  %277 = load i64, i64* %9, align 8
  %278 = load i64, i64* %15, align 8
  %279 = load i64, i64* %14, align 8
  %280 = call i32 %273(%struct.super_block* %274, %struct.chain_t.6* %276, i64 %277, i64 %278, i64 %279)
  br label %281

281:                                              ; preds = %270, %205
  %282 = load i64, i64* @FFS_SUCCESS, align 8
  store i64 %282, i64* %6, align 8
  br label %283

283:                                              ; preds = %281, %268, %203, %170, %99, %87, %71, %57, %39
  %284 = load i64, i64* %6, align 8
  ret i64 %284
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i64, i32*) #1

declare dso_local i32 @buf_lock(%struct.super_block*, i32) #1

declare dso_local i32 @buf_unlock(%struct.super_block*, i32) #1

declare dso_local i64 @get_num_entries_and_dos_name(%struct.super_block*, %struct.chain_t*, %struct.uni_name_t*, i64*, %struct.dos_name_t*) #1

declare dso_local i64 @find_empty_entry(%struct.inode*, %struct.chain_t*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @buf_modify(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
