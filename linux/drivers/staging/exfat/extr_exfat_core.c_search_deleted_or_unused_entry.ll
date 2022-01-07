; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_search_deleted_or_unused_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_search_deleted_or_unused_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i64, i32 }
%struct.dentry_t = type { i32 }
%struct.fs_info_t = type { i32, i32, i64, %struct.TYPE_7__, %struct.TYPE_5__*, i64 }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64 (%struct.dentry_t*)* }
%struct.TYPE_8__ = type { %struct.fs_info_t }

@TYPE_UNUSED = common dso_local global i64 0, align 8
@TYPE_DELETED = common dso_local global i64 0, align 8
@EXFAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_deleted_or_unused_entry(%struct.super_block* %0, %struct.chain_t* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.chain_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.chain_t, align 8
  %14 = alloca %struct.dentry_t*, align 8
  %15 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.chain_t* %1, %struct.chain_t** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = call %struct.TYPE_8__* @EXFAT_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.fs_info_t* %18, %struct.fs_info_t** %15, align 8
  %19 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %20 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @CLUSTER_32(i32 0)
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %26 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %30 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %34 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %38 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %32
  %42 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %43 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %249

48:                                               ; preds = %41
  %49 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %50 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %56 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  %61 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %62 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %68 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %9, align 4
  br label %87

71:                                               ; preds = %32
  %72 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %73 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 -1, i32* %74, align 8
  %75 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %76 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %80 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %84 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %71, %48
  br label %88

88:                                               ; preds = %247, %87
  %89 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @CLUSTER_32(i32 -1)
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %248

93:                                               ; preds = %88
  %94 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %95 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %248

99:                                               ; preds = %93
  %100 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %101 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @CLUSTER_32(i32 0)
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %11, align 4
  %108 = srem i32 %106, %107
  store i32 %108, i32* %8, align 4
  br label %114

109:                                              ; preds = %99
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %111, 1
  %113 = and i32 %110, %112
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %109, %105
  br label %115

115:                                              ; preds = %209, %114
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %214

119:                                              ; preds = %115
  %120 = load %struct.super_block*, %struct.super_block** %5, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %120, %struct.chain_t* %13, i32 %121, i32* null)
  store %struct.dentry_t* %122, %struct.dentry_t** %14, align 8
  %123 = load %struct.dentry_t*, %struct.dentry_t** %14, align 8
  %124 = icmp ne %struct.dentry_t* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  store i32 -1, i32* %4, align 4
  br label %249

126:                                              ; preds = %119
  %127 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %128 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %127, i32 0, i32 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %130, align 8
  %132 = load %struct.dentry_t*, %struct.dentry_t** %14, align 8
  %133 = call i64 %131(%struct.dentry_t* %132)
  store i64 %133, i64* %12, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* @TYPE_UNUSED, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %175

137:                                              ; preds = %126
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  %140 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %141 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %174

145:                                              ; preds = %137
  %146 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %147 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %150 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  store i64 %148, i64* %151, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %154 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 8
  %156 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %159 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i64 %157, i64* %161, align 8
  %162 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %165 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i64 %163, i64* %167, align 8
  %168 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %171 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  store i32 %169, i32* %173, align 8
  br label %174

174:                                              ; preds = %145, %137
  br label %184

175:                                              ; preds = %126
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* @TYPE_DELETED, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  br label %183

182:                                              ; preds = %175
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %182, %179
  br label %184

184:                                              ; preds = %183, %174
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp sge i32 %185, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %184
  %189 = call i64 @CLUSTER_32(i32 -1)
  %190 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %191 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  store i64 %189, i64* %192, align 8
  %193 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %194 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  store i32 -1, i32* %195, align 8
  %196 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %197 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @EXFAT, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %188
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %7, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sub nsw i32 %202, %204
  store i32 %205, i32* %4, align 4
  br label %249

206:                                              ; preds = %188
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %4, align 4
  br label %249

208:                                              ; preds = %184
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %9, align 4
  br label %115

214:                                              ; preds = %115
  %215 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %216 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @CLUSTER_32(i32 0)
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %248

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 3
  br i1 %224, label %225, label %238

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, -1
  store i64 %228, i64* %226, align 8
  %229 = icmp sgt i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %231, align 8
  br label %237

234:                                              ; preds = %225
  %235 = call i64 @CLUSTER_32(i32 -1)
  %236 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  store i64 %235, i64* %236, align 8
  br label %237

237:                                              ; preds = %234, %230
  br label %247

238:                                              ; preds = %221
  %239 = load %struct.super_block*, %struct.super_block** %5, align 8
  %240 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  %243 = call i64 @FAT_read(%struct.super_block* %239, i64 %241, i64* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  store i32 -1, i32* %4, align 4
  br label %249

246:                                              ; preds = %238
  br label %247

247:                                              ; preds = %246, %237
  br label %88

248:                                              ; preds = %220, %98, %88
  store i32 -1, i32* %4, align 4
  br label %249

249:                                              ; preds = %248, %245, %206, %201, %125, %47
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local %struct.TYPE_8__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i64 @FAT_read(%struct.super_block*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
