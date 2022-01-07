; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_find_dir_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_find_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i64, i32 }
%struct.uni_name_t = type { i32*, i64, i64 }
%struct.dos_name_t = type { i32 }
%struct.dentry_t = type { i32 }
%struct.file_dentry_t = type { i32 }
%struct.strm_dentry_t = type { i64, i32 }
%struct.name_dentry_t = type { i32 }
%struct.fs_info_t = type { i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__*, i64 }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64 (%struct.dentry_t*)* }
%struct.TYPE_8__ = type { %struct.fs_info_t }

@UNI_CUR_DIR_NAME = common dso_local global i64 0, align 8
@UNI_PAR_DIR_NAME = common dso_local global i64 0, align 8
@TYPE_UNUSED = common dso_local global i64 0, align 8
@TYPE_DELETED = common dso_local global i64 0, align 8
@TYPE_FILE = common dso_local global i64 0, align 8
@TYPE_DIR = common dso_local global i64 0, align 8
@TYPE_ALL = common dso_local global i64 0, align 8
@TYPE_STREAM = common dso_local global i64 0, align 8
@TYPE_EXTEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exfat_find_dir_entry(%struct.super_block* %0, %struct.chain_t* %1, %struct.uni_name_t* %2, i32 %3, %struct.dos_name_t* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.chain_t*, align 8
  %10 = alloca %struct.uni_name_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dos_name_t*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca [16 x i32], align 16
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.chain_t, align 8
  %28 = alloca %struct.dentry_t*, align 8
  %29 = alloca %struct.file_dentry_t*, align 8
  %30 = alloca %struct.strm_dentry_t*, align 8
  %31 = alloca %struct.name_dentry_t*, align 8
  %32 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.chain_t* %1, %struct.chain_t** %9, align 8
  store %struct.uni_name_t* %2, %struct.uni_name_t** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.dos_name_t* %4, %struct.dos_name_t** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32* null, i32** %25, align 8
  %33 = load %struct.super_block*, %struct.super_block** %8, align 8
  %34 = call %struct.TYPE_8__* @EXFAT_SB(%struct.super_block* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store %struct.fs_info_t* %35, %struct.fs_info_t** %32, align 8
  %36 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %37 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %40 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %6
  %44 = load %struct.super_block*, %struct.super_block** %8, align 8
  %45 = load %struct.uni_name_t*, %struct.uni_name_t** %10, align 8
  %46 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @UNI_CUR_DIR_NAME, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = call i64 @nls_uniname_cmp(%struct.super_block* %44, i32* %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.super_block*, %struct.super_block** %8, align 8
  %54 = load %struct.uni_name_t*, %struct.uni_name_t** %10, align 8
  %55 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @UNI_PAR_DIR_NAME, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = call i64 @nls_uniname_cmp(%struct.super_block* %53, i32* %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52, %43
  store i32 -1, i32* %7, align 4
  br label %365

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %6
  %64 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %65 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @CLUSTER_32(i32 0)
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %71 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %21, align 4
  br label %77

73:                                               ; preds = %63
  %74 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %75 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %21, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %79 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  %82 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %83 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 1
  store i64 %84, i64* %85, align 8
  %86 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %87 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 2
  store i32 %88, i32* %89, align 8
  %90 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %91 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %94 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %97 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i32 -1, i32* %98, align 8
  br label %99

99:                                               ; preds = %363, %77
  %100 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @CLUSTER_32(i32 -1)
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %364

104:                                              ; preds = %99
  %105 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %106 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %364

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %320, %110
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %21, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %327

115:                                              ; preds = %111
  %116 = load %struct.super_block*, %struct.super_block** %8, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %116, %struct.chain_t* %27, i32 %117, i32* null)
  store %struct.dentry_t* %118, %struct.dentry_t** %28, align 8
  %119 = load %struct.dentry_t*, %struct.dentry_t** %28, align 8
  %120 = icmp ne %struct.dentry_t* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  store i32 -2, i32* %7, align 4
  br label %365

122:                                              ; preds = %115
  %123 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %124 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %123, i32 0, i32 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %126, align 8
  %128 = load %struct.dentry_t*, %struct.dentry_t** %28, align 8
  %129 = call i64 %127(%struct.dentry_t* %128)
  store i64 %129, i64* %23, align 8
  store i32 1, i32* %18, align 4
  %130 = load i64, i64* %23, align 8
  %131 = load i64, i64* @TYPE_UNUSED, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %122
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* @TYPE_DELETED, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %190

137:                                              ; preds = %133, %122
  store i32 0, i32* %20, align 4
  %138 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %139 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %184

143:                                              ; preds = %137
  %144 = load i32, i32* %22, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* %22, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %167

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %152 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i64 %150, i64* %154, align 8
  %155 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %158 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  store i64 %156, i64* %160, align 8
  %161 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %164 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  store i32 %162, i32* %166, align 8
  br label %167

167:                                              ; preds = %148, %143
  %168 = load i32, i32* %22, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i64, i64* %23, align 8
  %173 = load i64, i64* @TYPE_UNUSED, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %171, %167
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %22, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sub nsw i32 %176, %178
  %180 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %181 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 8
  br label %183

183:                                              ; preds = %175, %171
  br label %184

184:                                              ; preds = %183, %137
  %185 = load i64, i64* %23, align 8
  %186 = load i64, i64* @TYPE_UNUSED, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 -2, i32* %7, align 4
  br label %365

189:                                              ; preds = %184
  br label %320

190:                                              ; preds = %133
  store i32 0, i32* %22, align 4
  %191 = load i64, i64* %23, align 8
  %192 = load i64, i64* @TYPE_FILE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %23, align 8
  %196 = load i64, i64* @TYPE_DIR, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %218

198:                                              ; preds = %194, %190
  %199 = load %struct.dentry_t*, %struct.dentry_t** %28, align 8
  %200 = bitcast %struct.dentry_t* %199 to %struct.file_dentry_t*
  store %struct.file_dentry_t* %200, %struct.file_dentry_t** %29, align 8
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* @TYPE_ALL, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %208, label %204

204:                                              ; preds = %198
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* %23, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %204, %198
  %209 = load %struct.file_dentry_t*, %struct.file_dentry_t** %29, align 8
  %210 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %16, align 4
  store i32 1, i32* %20, align 4
  br label %217

212:                                              ; preds = %204
  store i32 0, i32* %20, align 4
  %213 = load %struct.file_dentry_t*, %struct.file_dentry_t** %29, align 8
  %214 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %18, align 4
  br label %217

217:                                              ; preds = %212, %208
  br label %319

218:                                              ; preds = %194
  %219 = load i64, i64* %23, align 8
  %220 = load i64, i64* @TYPE_STREAM, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %249

222:                                              ; preds = %218
  %223 = load i32, i32* %20, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %248

225:                                              ; preds = %222
  %226 = load %struct.dentry_t*, %struct.dentry_t** %28, align 8
  %227 = bitcast %struct.dentry_t* %226 to %struct.strm_dentry_t*
  store %struct.strm_dentry_t* %227, %struct.strm_dentry_t** %30, align 8
  %228 = load %struct.uni_name_t*, %struct.uni_name_t** %10, align 8
  %229 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %30, align 8
  %232 = getelementptr inbounds %struct.strm_dentry_t, %struct.strm_dentry_t* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = call i64 @GET16_A(i32 %233)
  %235 = icmp eq i64 %230, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %225
  %237 = load %struct.uni_name_t*, %struct.uni_name_t** %10, align 8
  %238 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %30, align 8
  %241 = getelementptr inbounds %struct.strm_dentry_t, %struct.strm_dentry_t* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp eq i64 %239, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  store i32 1, i32* %19, align 4
  br label %247

245:                                              ; preds = %236, %225
  store i32 0, i32* %20, align 4
  %246 = load i32, i32* %16, align 4
  store i32 %246, i32* %18, align 4
  br label %247

247:                                              ; preds = %245, %244
  br label %248

248:                                              ; preds = %247, %222
  br label %318

249:                                              ; preds = %218
  %250 = load i64, i64* %23, align 8
  %251 = load i64, i64* @TYPE_EXTEND, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %316

253:                                              ; preds = %249
  %254 = load i32, i32* %20, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %315

256:                                              ; preds = %253
  %257 = load %struct.dentry_t*, %struct.dentry_t** %28, align 8
  %258 = bitcast %struct.dentry_t* %257 to %struct.name_dentry_t*
  store %struct.name_dentry_t* %258, %struct.name_dentry_t** %31, align 8
  %259 = load i32, i32* %19, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %19, align 4
  %261 = icmp eq i32 %260, 2
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load %struct.uni_name_t*, %struct.uni_name_t** %10, align 8
  %264 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  store i32* %265, i32** %25, align 8
  br label %269

266:                                              ; preds = %256
  %267 = load i32*, i32** %25, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 15
  store i32* %268, i32** %25, align 8
  br label %269

269:                                              ; preds = %266, %262
  %270 = load %struct.name_dentry_t*, %struct.name_dentry_t** %31, align 8
  %271 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %272 = load i32, i32* %19, align 4
  %273 = call i32 @extract_uni_name_from_name_entry(%struct.name_dentry_t* %270, i32* %271, i32 %272)
  store i32 %273, i32* %17, align 4
  %274 = load i32*, i32** %25, align 8
  %275 = load i32, i32* %17, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %26, align 4
  %279 = load i32*, i32** %25, align 8
  %280 = load i32, i32* %17, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 0, i32* %282, align 4
  %283 = load %struct.super_block*, %struct.super_block** %8, align 8
  %284 = load i32*, i32** %25, align 8
  %285 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %286 = call i64 @nls_uniname_cmp(%struct.super_block* %283, i32* %284, i32* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %269
  store i32 0, i32* %20, align 4
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* %19, align 4
  %291 = sub nsw i32 %289, %290
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %18, align 4
  br label %309

293:                                              ; preds = %269
  %294 = load i32, i32* %19, align 4
  %295 = load i32, i32* %16, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %308

297:                                              ; preds = %293
  %298 = call i64 @CLUSTER_32(i32 -1)
  %299 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %300 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  store i64 %298, i64* %301, align 8
  %302 = load %struct.fs_info_t*, %struct.fs_info_t** %32, align 8
  %303 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  store i32 -1, i32* %304, align 8
  %305 = load i32, i32* %15, align 4
  %306 = load i32, i32* %16, align 4
  %307 = sub nsw i32 %305, %306
  store i32 %307, i32* %7, align 4
  br label %365

308:                                              ; preds = %293
  br label %309

309:                                              ; preds = %308, %288
  %310 = load i32, i32* %26, align 4
  %311 = load i32*, i32** %25, align 8
  %312 = load i32, i32* %17, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  store i32 %310, i32* %314, align 4
  br label %315

315:                                              ; preds = %309, %253
  br label %317

316:                                              ; preds = %249
  store i32 0, i32* %20, align 4
  br label %317

317:                                              ; preds = %316, %315
  br label %318

318:                                              ; preds = %317, %248
  br label %319

319:                                              ; preds = %318, %217
  br label %320

320:                                              ; preds = %319, %189
  %321 = load i32, i32* %18, align 4
  %322 = load i32, i32* %14, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %14, align 4
  %324 = load i32, i32* %18, align 4
  %325 = load i32, i32* %15, align 4
  %326 = add nsw i32 %325, %324
  store i32 %326, i32* %15, align 4
  br label %111

327:                                              ; preds = %111
  %328 = load i32, i32* %21, align 4
  %329 = load i32, i32* %14, align 4
  %330 = sub nsw i32 %329, %328
  store i32 %330, i32* %14, align 4
  %331 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %332 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = call i64 @CLUSTER_32(i32 0)
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %327
  br label %364

337:                                              ; preds = %327
  %338 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = icmp eq i32 %339, 3
  br i1 %340, label %341, label %354

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %343, -1
  store i64 %344, i64* %342, align 8
  %345 = icmp sgt i64 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = add nsw i64 %348, 1
  store i64 %349, i64* %347, align 8
  br label %353

350:                                              ; preds = %341
  %351 = call i64 @CLUSTER_32(i32 -1)
  %352 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 0
  store i64 %351, i64* %352, align 8
  br label %353

353:                                              ; preds = %350, %346
  br label %363

354:                                              ; preds = %337
  %355 = load %struct.super_block*, %struct.super_block** %8, align 8
  %356 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %27, i32 0, i32 0
  %359 = call i64 @FAT_read(%struct.super_block* %355, i64 %357, i64* %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %354
  store i32 -2, i32* %7, align 4
  br label %365

362:                                              ; preds = %354
  br label %363

363:                                              ; preds = %362, %353
  br label %99

364:                                              ; preds = %336, %109, %99
  store i32 -2, i32* %7, align 4
  br label %365

365:                                              ; preds = %364, %361, %297, %188, %121, %61
  %366 = load i32, i32* %7, align 4
  ret i32 %366
}

declare dso_local %struct.TYPE_8__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @nls_uniname_cmp(%struct.super_block*, i32*, i32*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i64 @GET16_A(i32) #1

declare dso_local i32 @extract_uni_name_from_name_entry(%struct.name_dentry_t*, i32*, i32) #1

declare dso_local i64 @FAT_read(%struct.super_block*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
