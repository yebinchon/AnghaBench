; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsReadDir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dir_entry_t = type { i8*, i8*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.chain_t = type { i64, i32, i32 }
%struct.uni_name_t = type { i32* }
%struct.timestamp_t = type { i32, i32, i32, i32, i32, i32 }
%struct.dentry_t = type { i32 }
%struct.fs_info_t = type { i64, i32, i32, i32, i64, i32, i64, %struct.fs_func* }
%struct.fs_func = type { i64 (%struct.dentry_t.0*)*, i32 (%struct.dentry_t.1*)*, i32 (%struct.super_block*, %struct.chain_t.2*, i32, i32*)*, i32 (%struct.dentry_t.3*, %struct.timestamp_t*, i32)*, i32 (%struct.dentry_t.4*)* }
%struct.dentry_t.0 = type opaque
%struct.dentry_t.1 = type opaque
%struct.chain_t.2 = type opaque
%struct.dentry_t.3 = type opaque
%struct.dentry_t.4 = type opaque
%struct.file_id_t = type { i64, i32, i64, i32, i32, i32, i64, i8* }
%struct.TYPE_7__ = type { %struct.fs_info_t }
%struct.TYPE_8__ = type { %struct.file_id_t }
%struct.dos_dentry_t = type { i32 }

@FFS_SUCCESS = common dso_local global i32 0, align 4
@FFS_ERROR = common dso_local global i32 0, align 4
@TYPE_DIR = common dso_local global i64 0, align 8
@FFS_PERMISSIONERR = common dso_local global i32 0, align 4
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@TYPE_UNUSED = common dso_local global i64 0, align 8
@TYPE_FILE = common dso_local global i64 0, align 8
@TM_CREATE = common dso_local global i32 0, align 4
@TM_MODIFY = common dso_local global i32 0, align 4
@EXFAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dir_entry_t*)* @ffsReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsReadDir(%struct.inode* %0, %struct.dir_entry_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dir_entry_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.chain_t, align 8
  %15 = alloca %struct.chain_t, align 8
  %16 = alloca %struct.uni_name_t, align 8
  %17 = alloca %struct.timestamp_t, align 4
  %18 = alloca %struct.dentry_t*, align 8
  %19 = alloca %struct.super_block*, align 8
  %20 = alloca %struct.fs_info_t*, align 8
  %21 = alloca %struct.fs_func*, align 8
  %22 = alloca %struct.file_id_t*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dir_entry_t* %1, %struct.dir_entry_t** %5, align 8
  %23 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  store %struct.super_block* %26, %struct.super_block** %19, align 8
  %27 = load %struct.super_block*, %struct.super_block** %19, align 8
  %28 = call %struct.TYPE_7__* @EXFAT_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store %struct.fs_info_t* %29, %struct.fs_info_t** %20, align 8
  %30 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %31 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %30, i32 0, i32 7
  %32 = load %struct.fs_func*, %struct.fs_func** %31, align 8
  store %struct.fs_func* %32, %struct.fs_func** %21, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store %struct.file_id_t* %35, %struct.file_id_t** %22, align 8
  %36 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %37 = icmp ne %struct.dir_entry_t* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @FFS_ERROR, align 4
  store i32 %39, i32* %3, align 4
  br label %496

40:                                               ; preds = %2
  %41 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %42 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TYPE_DIR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @FFS_PERMISSIONERR, align 4
  store i32 %47, i32* %3, align 4
  br label %496

48:                                               ; preds = %40
  %49 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %50 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %49, i32 0, i32 5
  %51 = call i32 @down(i32* %50)
  %52 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %53 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %58 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 1
  store i32 1, i32* %61, align 8
  br label %79

62:                                               ; preds = %48
  %63 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %64 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  store i64 %65, i64* %66, align 8
  %67 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %68 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %71 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %69, %72
  %74 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %76 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 1
  store i32 %77, i32* %78, align 8
  br label %79

79:                                               ; preds = %62, %56
  %80 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %81 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %80, i32 0, i32 7
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %7, align 4
  %84 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @CLUSTER_32(i32 0)
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %79
  %89 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %90 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = call i64 @CLUSTER_32(i32 -1)
  %97 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  store i64 %96, i64* %97, align 8
  br label %108

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 2
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 1
  store i32 %106, i32* %107, align 8
  br label %108

108:                                              ; preds = %98, %95
  br label %182

109:                                              ; preds = %79
  %110 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %111 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @ilog2(i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %11, align 4
  %117 = ashr i32 %115, %116
  store i32 %117, i32* %8, align 4
  %118 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  store i64 %119, i64* %120, align 8
  %121 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 2
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 1
  store i32 %125, i32* %126, align 8
  %127 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 3
  br i1 %129, label %130, label %140

130:                                              ; preds = %109
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %132
  store i64 %135, i64* %133, align 8
  %136 = load i32, i32* %8, align 4
  %137 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, %136
  store i32 %139, i32* %137, align 4
  br label %181

140:                                              ; preds = %109
  %141 = load i32, i32* %8, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %140
  %144 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %145 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %143
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %151 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = icmp sge i32 %149, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %156 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sub nsw i32 %158, %157
  store i32 %159, i32* %8, align 4
  %160 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %161 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  store i64 %162, i64* %163, align 8
  br label %164

164:                                              ; preds = %154, %148, %143, %140
  br label %165

165:                                              ; preds = %177, %164
  %166 = load i32, i32* %8, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %165
  %169 = load %struct.super_block*, %struct.super_block** %19, align 8
  %170 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %173 = call i32 @FAT_read(%struct.super_block* %169, i64 %171, i64* %172)
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %176, i32* %9, align 4
  br label %491

177:                                              ; preds = %168
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %8, align 4
  br label %165

180:                                              ; preds = %165
  br label %181

181:                                              ; preds = %180, %130
  br label %182

182:                                              ; preds = %181, %108
  br label %183

183:                                              ; preds = %473, %182
  %184 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @CLUSTER_32(i32 -1)
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %474

188:                                              ; preds = %183
  %189 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %190 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %189, i32 0, i32 6
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %474

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @CLUSTER_32(i32 0)
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %10, align 4
  %202 = srem i32 %200, %201
  store i32 %202, i32* %6, align 4
  br label %208

203:                                              ; preds = %194
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %10, align 4
  %206 = sub nsw i32 %205, 1
  %207 = and i32 %204, %206
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %203, %199
  br label %209

209:                                              ; preds = %435, %208
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %10, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %440

213:                                              ; preds = %209
  %214 = load %struct.super_block*, %struct.super_block** %19, align 8
  %215 = load i32, i32* %6, align 4
  %216 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %214, %struct.chain_t* %15, i32 %215, i32* %13)
  store %struct.dentry_t* %216, %struct.dentry_t** %18, align 8
  %217 = load %struct.dentry_t*, %struct.dentry_t** %18, align 8
  %218 = icmp ne %struct.dentry_t* %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %213
  %220 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %220, i32* %9, align 4
  br label %491

221:                                              ; preds = %213
  %222 = load %struct.fs_func*, %struct.fs_func** %21, align 8
  %223 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %222, i32 0, i32 0
  %224 = load i64 (%struct.dentry_t.0*)*, i64 (%struct.dentry_t.0*)** %223, align 8
  %225 = load %struct.dentry_t*, %struct.dentry_t** %18, align 8
  %226 = bitcast %struct.dentry_t* %225 to %struct.dentry_t.0*
  %227 = call i64 %224(%struct.dentry_t.0* %226)
  store i64 %227, i64* %12, align 8
  %228 = load i64, i64* %12, align 8
  %229 = load i64, i64* @TYPE_UNUSED, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %221
  br label %440

232:                                              ; preds = %221
  %233 = load i64, i64* %12, align 8
  %234 = load i64, i64* @TYPE_FILE, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = load i64, i64* %12, align 8
  %238 = load i64, i64* @TYPE_DIR, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  br label %435

241:                                              ; preds = %236, %232
  %242 = load %struct.super_block*, %struct.super_block** %19, align 8
  %243 = load i32, i32* %13, align 4
  %244 = call i32 @buf_lock(%struct.super_block* %242, i32 %243)
  %245 = load %struct.fs_func*, %struct.fs_func** %21, align 8
  %246 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %245, i32 0, i32 4
  %247 = load i32 (%struct.dentry_t.4*)*, i32 (%struct.dentry_t.4*)** %246, align 8
  %248 = load %struct.dentry_t*, %struct.dentry_t** %18, align 8
  %249 = bitcast %struct.dentry_t* %248 to %struct.dentry_t.4*
  %250 = call i32 %247(%struct.dentry_t.4* %249)
  %251 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %252 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %251, i32 0, i32 6
  store i32 %250, i32* %252, align 8
  %253 = load %struct.fs_func*, %struct.fs_func** %21, align 8
  %254 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %253, i32 0, i32 3
  %255 = load i32 (%struct.dentry_t.3*, %struct.timestamp_t*, i32)*, i32 (%struct.dentry_t.3*, %struct.timestamp_t*, i32)** %254, align 8
  %256 = load %struct.dentry_t*, %struct.dentry_t** %18, align 8
  %257 = bitcast %struct.dentry_t* %256 to %struct.dentry_t.3*
  %258 = load i32, i32* @TM_CREATE, align 4
  %259 = call i32 %255(%struct.dentry_t.3* %257, %struct.timestamp_t* %17, i32 %258)
  %260 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %263 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 6
  store i32 %261, i32* %264, align 4
  %265 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %268 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 5
  store i32 %266, i32* %269, align 8
  %270 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %273 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %272, i32 0, i32 5
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 4
  store i32 %271, i32* %274, align 4
  %275 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %278 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 3
  store i32 %276, i32* %279, align 8
  %280 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %283 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %282, i32 0, i32 5
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 2
  store i32 %281, i32* %284, align 4
  %285 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %288 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 1
  store i32 %286, i32* %289, align 8
  %290 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %291 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  store i64 0, i64* %292, align 8
  %293 = load %struct.fs_func*, %struct.fs_func** %21, align 8
  %294 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %293, i32 0, i32 3
  %295 = load i32 (%struct.dentry_t.3*, %struct.timestamp_t*, i32)*, i32 (%struct.dentry_t.3*, %struct.timestamp_t*, i32)** %294, align 8
  %296 = load %struct.dentry_t*, %struct.dentry_t** %18, align 8
  %297 = bitcast %struct.dentry_t* %296 to %struct.dentry_t.3*
  %298 = load i32, i32* @TM_MODIFY, align 4
  %299 = call i32 %295(%struct.dentry_t.3* %297, %struct.timestamp_t* %17, i32 %298)
  %300 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %303 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 6
  store i32 %301, i32* %304, align 4
  %305 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 4
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %308 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 5
  store i32 %306, i32* %309, align 8
  %310 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %313 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %312, i32 0, i32 4
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 4
  store i32 %311, i32* %314, align 4
  %315 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %318 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 3
  store i32 %316, i32* %319, align 8
  %320 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %323 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 2
  store i32 %321, i32* %324, align 4
  %325 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %328 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %327, i32 0, i32 4
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 1
  store i32 %326, i32* %329, align 8
  %330 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %331 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %330, i32 0, i32 4
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  store i64 0, i64* %332, align 8
  %333 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %334 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %333, i32 0, i32 3
  %335 = bitcast i32* %334 to i8*
  %336 = call i32 @memset(i8* %335, i32 0, i32 4)
  %337 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %16, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  store i32 0, i32* %338, align 4
  %339 = load %struct.fs_func*, %struct.fs_func** %21, align 8
  %340 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %339, i32 0, i32 2
  %341 = load i32 (%struct.super_block*, %struct.chain_t.2*, i32, i32*)*, i32 (%struct.super_block*, %struct.chain_t.2*, i32, i32*)** %340, align 8
  %342 = load %struct.super_block*, %struct.super_block** %19, align 8
  %343 = bitcast %struct.chain_t* %14 to %struct.chain_t.2*
  %344 = load i32, i32* %7, align 4
  %345 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %16, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = call i32 %341(%struct.super_block* %342, %struct.chain_t.2* %343, i32 %344, i32* %346)
  %348 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %16, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %349, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %363

352:                                              ; preds = %241
  %353 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %354 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %353, i32 0, i32 4
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @EXFAT, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %363

358:                                              ; preds = %352
  %359 = load %struct.super_block*, %struct.super_block** %19, align 8
  %360 = load %struct.dentry_t*, %struct.dentry_t** %18, align 8
  %361 = bitcast %struct.dentry_t* %360 to %struct.dos_dentry_t*
  %362 = call i32 @get_uni_name_from_dos_entry(%struct.super_block* %359, %struct.dos_dentry_t* %361, %struct.uni_name_t* %16, i32 1)
  br label %363

363:                                              ; preds = %358, %352, %241
  %364 = load %struct.super_block*, %struct.super_block** %19, align 8
  %365 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %366 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %365, i32 0, i32 0
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @nls_uniname_to_cstring(%struct.super_block* %364, i8* %367, %struct.uni_name_t* %16)
  %369 = load %struct.super_block*, %struct.super_block** %19, align 8
  %370 = load i32, i32* %13, align 4
  %371 = call i32 @buf_unlock(%struct.super_block* %369, i32 %370)
  %372 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %373 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %372, i32 0, i32 4
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @EXFAT, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %387

377:                                              ; preds = %363
  %378 = load %struct.super_block*, %struct.super_block** %19, align 8
  %379 = load i32, i32* %6, align 4
  %380 = add nsw i32 %379, 1
  %381 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %378, %struct.chain_t* %15, i32 %380, i32* null)
  store %struct.dentry_t* %381, %struct.dentry_t** %18, align 8
  %382 = load %struct.dentry_t*, %struct.dentry_t** %18, align 8
  %383 = icmp ne %struct.dentry_t* %382, null
  br i1 %383, label %386, label %384

384:                                              ; preds = %377
  %385 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %385, i32* %9, align 4
  br label %491

386:                                              ; preds = %377
  br label %397

387:                                              ; preds = %363
  %388 = load %struct.super_block*, %struct.super_block** %19, align 8
  %389 = load %struct.dentry_t*, %struct.dentry_t** %18, align 8
  %390 = bitcast %struct.dentry_t* %389 to %struct.dos_dentry_t*
  %391 = call i32 @get_uni_name_from_dos_entry(%struct.super_block* %388, %struct.dos_dentry_t* %390, %struct.uni_name_t* %16, i32 0)
  %392 = load %struct.super_block*, %struct.super_block** %19, align 8
  %393 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %394 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %393, i32 0, i32 1
  %395 = load i8*, i8** %394, align 8
  %396 = call i32 @nls_uniname_to_cstring(%struct.super_block* %392, i8* %395, %struct.uni_name_t* %16)
  br label %397

397:                                              ; preds = %387, %386
  %398 = load %struct.fs_func*, %struct.fs_func** %21, align 8
  %399 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %398, i32 0, i32 1
  %400 = load i32 (%struct.dentry_t.1*)*, i32 (%struct.dentry_t.1*)** %399, align 8
  %401 = load %struct.dentry_t*, %struct.dentry_t** %18, align 8
  %402 = bitcast %struct.dentry_t* %401 to %struct.dentry_t.1*
  %403 = call i32 %400(%struct.dentry_t.1* %402)
  %404 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %405 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %404, i32 0, i32 2
  store i32 %403, i32* %405, align 8
  %406 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = call i64 @CLUSTER_32(i32 0)
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %397
  br label %421

411:                                              ; preds = %397
  %412 = load i32, i32* %7, align 4
  %413 = load i32, i32* %11, align 4
  %414 = ashr i32 %412, %413
  %415 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %416 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %415, i32 0, i32 5
  store i32 %414, i32* %416, align 8
  %417 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %420 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %419, i32 0, i32 6
  store i64 %418, i64* %420, align 8
  br label %421

421:                                              ; preds = %411, %410
  %422 = load i32, i32* %7, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = inttoptr i64 %424 to i8*
  %426 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %427 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %426, i32 0, i32 7
  store i8* %425, i8** %427, align 8
  %428 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %429 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %428, i32 0, i32 6
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %434

432:                                              ; preds = %421
  %433 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %433, i32* %9, align 4
  br label %434

434:                                              ; preds = %432, %421
  br label %491

435:                                              ; preds = %240
  %436 = load i32, i32* %6, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %6, align 4
  %438 = load i32, i32* %7, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %7, align 4
  br label %209

440:                                              ; preds = %231, %209
  %441 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = call i64 @CLUSTER_32(i32 0)
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %445, label %446

445:                                              ; preds = %440
  br label %474

446:                                              ; preds = %440
  %447 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 1
  %448 = load i32, i32* %447, align 8
  %449 = icmp eq i32 %448, 3
  br i1 %449, label %450, label %463

450:                                              ; preds = %446
  %451 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 2
  %452 = load i32, i32* %451, align 4
  %453 = add nsw i32 %452, -1
  store i32 %453, i32* %451, align 4
  %454 = icmp sgt i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %450
  %456 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = add nsw i64 %457, 1
  store i64 %458, i64* %456, align 8
  br label %462

459:                                              ; preds = %450
  %460 = call i64 @CLUSTER_32(i32 -1)
  %461 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  store i64 %460, i64* %461, align 8
  br label %462

462:                                              ; preds = %459, %455
  br label %473

463:                                              ; preds = %446
  %464 = load %struct.super_block*, %struct.super_block** %19, align 8
  %465 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %468 = call i32 @FAT_read(%struct.super_block* %464, i64 %466, i64* %467)
  %469 = icmp eq i32 %468, -1
  br i1 %469, label %470, label %472

470:                                              ; preds = %463
  %471 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %471, i32* %9, align 4
  br label %491

472:                                              ; preds = %463
  br label %473

473:                                              ; preds = %472, %462
  br label %183

474:                                              ; preds = %445, %193, %183
  %475 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %476 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %475, i32 0, i32 0
  %477 = load i8*, i8** %476, align 8
  store i8 0, i8* %477, align 1
  %478 = load i32, i32* %7, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %7, align 4
  %480 = sext i32 %479 to i64
  %481 = inttoptr i64 %480 to i8*
  %482 = load %struct.file_id_t*, %struct.file_id_t** %22, align 8
  %483 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %482, i32 0, i32 7
  store i8* %481, i8** %483, align 8
  %484 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %485 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %484, i32 0, i32 6
  %486 = load i64, i64* %485, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %490

488:                                              ; preds = %474
  %489 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %489, i32* %9, align 4
  br label %490

490:                                              ; preds = %488, %474
  br label %491

491:                                              ; preds = %490, %470, %434, %384, %219, %175
  %492 = load %struct.fs_info_t*, %struct.fs_info_t** %20, align 8
  %493 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %492, i32 0, i32 5
  %494 = call i32 @up(i32* %493)
  %495 = load i32, i32* %9, align 4
  store i32 %495, i32* %3, align 4
  br label %496

496:                                              ; preds = %491, %46, %38
  %497 = load i32, i32* %3, align 4
  ret i32 %497
}

declare dso_local %struct.TYPE_7__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_8__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @FAT_read(%struct.super_block*, i64, i64*) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i32 @buf_lock(%struct.super_block*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @get_uni_name_from_dos_entry(%struct.super_block*, %struct.dos_dentry_t*, %struct.uni_name_t*, i32) #1

declare dso_local i32 @nls_uniname_to_cstring(%struct.super_block*, i8*, %struct.uni_name_t*) #1

declare dso_local i32 @buf_unlock(%struct.super_block*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
