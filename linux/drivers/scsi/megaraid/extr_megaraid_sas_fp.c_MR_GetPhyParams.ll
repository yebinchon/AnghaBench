; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_MR_GetPhyParams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_MR_GetPhyParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, %struct.fusion_context* }
%struct.fusion_context = type { i32 }
%struct.IO_REQUEST_INFO = type { i32, i32, i32, i32, i8*, i32, i8* }
%struct.RAID_CONTEXT = type { i32, i32 }
%struct.MR_DRV_RAID_MAP_ALL = type { i32 }
%struct.MR_LD_RAID = type { i64, i32, i64, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.RAID_CONTEXT_G35 = type { i32 }

@MR_DEVHANDLE_INVALID = common dso_local global i32 0, align 4
@SPAN_INVALID = common dso_local global i32 0, align 4
@MR_PD_INVALID = common dso_local global i32 0, align 4
@VENTURA_SERIES = common dso_local global i64 0, align 8
@THUNDERBOLT_SERIES = common dso_local global i64 0, align 8
@INVADER_SERIES = common dso_local global i64 0, align 8
@REGION_TYPE_UNUSED = common dso_local global i64 0, align 8
@REGION_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@RAID_CTX_SPANARM_SPAN_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MR_GetPhyParams(%struct.megasas_instance* %0, i32 %1, i32 %2, i64 %3, %struct.IO_REQUEST_INFO* %4, %struct.RAID_CONTEXT* %5, %struct.MR_DRV_RAID_MAP_ALL* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.megasas_instance*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.IO_REQUEST_INFO*, align 8
  %14 = alloca %struct.RAID_CONTEXT*, align 8
  %15 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  %16 = alloca %struct.MR_LD_RAID*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.fusion_context*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store %struct.IO_REQUEST_INFO* %4, %struct.IO_REQUEST_INFO** %13, align 8
  store %struct.RAID_CONTEXT* %5, %struct.RAID_CONTEXT** %14, align 8
  store %struct.MR_DRV_RAID_MAP_ALL* %6, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %34 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i32 %32, %struct.MR_DRV_RAID_MAP_ALL* %33)
  store %struct.MR_LD_RAID* %34, %struct.MR_LD_RAID** %16, align 8
  store i32 1, i32* %23, align 4
  %35 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %36 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %35, i32 0, i32 0
  store i32* %36, i32** %24, align 8
  %37 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %38 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %37, i32 0, i32 6
  store i8** %38, i8*** %25, align 8
  %39 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %40 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %39, i32 0, i32 1
  store i32* %40, i32** %26, align 8
  %41 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %42 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %41, i32 0, i32 1
  %43 = load %struct.fusion_context*, %struct.fusion_context** %42, align 8
  store %struct.fusion_context* %43, %struct.fusion_context** %27, align 8
  %44 = load i32, i32* @MR_DEVHANDLE_INVALID, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load i8**, i8*** %25, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %49 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @mega_div64_32(i32 %47, i64 %50)
  store i32 %51, i32* %22, align 4
  %52 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %53 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 6
  br i1 %55, label %56, label %101

56:                                               ; preds = %7
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %59 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @mega_mod64(i32 %57, i64 %60)
  store i32 %61, i32* %28, align 4
  %62 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %63 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %301

67:                                               ; preds = %56
  %68 = load i32, i32* %22, align 4
  %69 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %70 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @mega_mod64(i32 %68, i64 %71)
  store i32 %72, i32* %29, align 4
  %73 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %74 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, 1
  %77 = load i32, i32* %29, align 4
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %76, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %30, align 4
  %81 = load i32, i32* %30, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %28, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %31, align 4
  %85 = load i32, i32* %31, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %88 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %86, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %67
  %92 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %93 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %31, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %31, align 4
  br label %99

99:                                               ; preds = %91, %67
  %100 = load i32, i32* %31, align 4
  store i32 %100, i32* %20, align 4
  br label %116

101:                                              ; preds = %7
  %102 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %103 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %8, align 4
  br label %301

107:                                              ; preds = %101
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %111 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @mega_mod64(i32 %109, i64 %112)
  %114 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %115 = call i32 @MR_LdDataArmGet(i32 %108, i32 %113, %struct.MR_DRV_RAID_MAP_ALL* %114)
  store i32 %115, i32* %20, align 4
  br label %116

116:                                              ; preds = %107, %99
  %117 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %118 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  store i32 0, i32* %21, align 4
  %122 = load i32, i32* %22, align 4
  %123 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %124 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %122, %125
  %127 = load i32*, i32** %24, align 8
  store i32 %126, i32* %127, align 4
  br label %140

128:                                              ; preds = %116
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %22, align 4
  %131 = load i32*, i32** %24, align 8
  %132 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %133 = call i64 @MR_GetSpanBlock(i32 %129, i32 %130, i32* %131, %struct.MR_DRV_RAID_MAP_ALL* %132)
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* @SPAN_INVALID, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  store i32 0, i32* %8, align 4
  br label %301

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %121
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %21, align 4
  %143 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %144 = call i32 @MR_LdSpanArrayGet(i32 %141, i32 %142, %struct.MR_DRV_RAID_MAP_ALL* %143)
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %20, align 4
  %147 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %148 = call i32 @MR_ArPdGet(i32 %145, i32 %146, %struct.MR_DRV_RAID_MAP_ALL* %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* @MR_PD_INVALID, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %193

152:                                              ; preds = %140
  %153 = load i32, i32* %17, align 4
  %154 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %155 = call i8* @MR_PdDevHandleGet(i32 %153, %struct.MR_DRV_RAID_MAP_ALL* %154)
  %156 = load i8**, i8*** %25, align 8
  store i8* %155, i8** %156, align 8
  %157 = load i32, i32* %17, align 4
  %158 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %159 = call i32 @MR_PdInterfaceTypeGet(i32 %157, %struct.MR_DRV_RAID_MAP_ALL* %158)
  %160 = load i32*, i32** %26, align 8
  store i32 %159, i32* %160, align 4
  %161 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %162 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @VENTURA_SERIES, align 8
  %165 = icmp sge i64 %163, %164
  br i1 %165, label %166, label %192

166:                                              ; preds = %152
  %167 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %168 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %192

171:                                              ; preds = %166
  %172 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %173 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %192, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %20, align 4
  %179 = add nsw i32 %178, 1
  %180 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %181 = call i32 @MR_ArPdGet(i32 %177, i32 %179, %struct.MR_DRV_RAID_MAP_ALL* %180)
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* @MR_PD_INVALID, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %176
  %186 = load i32, i32* %19, align 4
  %187 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %188 = call i8* @MR_PdDevHandleGet(i32 %186, %struct.MR_DRV_RAID_MAP_ALL* %187)
  %189 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %190 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %189, i32 0, i32 4
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %185, %176
  br label %192

192:                                              ; preds = %191, %171, %166, %152
  br label %247

193:                                              ; preds = %140
  %194 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %195 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp sge i32 %196, 5
  br i1 %197, label %198, label %220

198:                                              ; preds = %193
  %199 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %200 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @THUNDERBOLT_SERIES, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %216, label %204

204:                                              ; preds = %198
  %205 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %206 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @INVADER_SERIES, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %220

210:                                              ; preds = %204
  %211 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %212 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @REGION_TYPE_UNUSED, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %210, %198
  %217 = load i32, i32* @REGION_TYPE_EXCLUSIVE, align 4
  %218 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %219 = getelementptr inbounds %struct.RAID_CONTEXT, %struct.RAID_CONTEXT* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  br label %246

220:                                              ; preds = %210, %204, %193
  %221 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %222 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %245

225:                                              ; preds = %220
  %226 = load i32, i32* %20, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %20, align 4
  %228 = load i32, i32* %18, align 4
  %229 = load i32, i32* %20, align 4
  %230 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %231 = call i32 @MR_ArPdGet(i32 %228, i32 %229, %struct.MR_DRV_RAID_MAP_ALL* %230)
  store i32 %231, i32* %17, align 4
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* @MR_PD_INVALID, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %244

235:                                              ; preds = %225
  %236 = load i32, i32* %17, align 4
  %237 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %238 = call i8* @MR_PdDevHandleGet(i32 %236, %struct.MR_DRV_RAID_MAP_ALL* %237)
  %239 = load i8**, i8*** %25, align 8
  store i8* %238, i8** %239, align 8
  %240 = load i32, i32* %17, align 4
  %241 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %242 = call i32 @MR_PdInterfaceTypeGet(i32 %240, %struct.MR_DRV_RAID_MAP_ALL* %241)
  %243 = load i32*, i32** %26, align 8
  store i32 %242, i32* %243, align 4
  br label %244

244:                                              ; preds = %235, %225
  br label %245

245:                                              ; preds = %244, %220
  br label %246

246:                                              ; preds = %245, %216
  br label %247

247:                                              ; preds = %246, %192
  %248 = load i64, i64* %12, align 8
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %21, align 4
  %251 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %252 = call %struct.TYPE_2__* @MR_LdSpanPtrGet(i32 %249, i32 %250, %struct.MR_DRV_RAID_MAP_ALL* %251)
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @le64_to_cpu(i32 %254)
  %256 = add nsw i64 %248, %255
  %257 = load i32*, i32** %24, align 8
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %256
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %257, align 4
  %262 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %263 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @VENTURA_SERIES, align 8
  %266 = icmp sge i64 %264, %265
  br i1 %266, label %267, label %283

267:                                              ; preds = %247
  %268 = load i32, i32* %21, align 4
  %269 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %270 = shl i32 %268, %269
  %271 = load i32, i32* %20, align 4
  %272 = or i32 %270, %271
  %273 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %274 = bitcast %struct.RAID_CONTEXT* %273 to %struct.RAID_CONTEXT_G35*
  %275 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 4
  %276 = load i32, i32* %21, align 4
  %277 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %278 = shl i32 %276, %277
  %279 = load i32, i32* %20, align 4
  %280 = or i32 %278, %279
  %281 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %282 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %281, i32 0, i32 2
  store i32 %280, i32* %282, align 8
  br label %296

283:                                              ; preds = %247
  %284 = load i32, i32* %21, align 4
  %285 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %286 = shl i32 %284, %285
  %287 = load i32, i32* %20, align 4
  %288 = or i32 %286, %287
  %289 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %290 = getelementptr inbounds %struct.RAID_CONTEXT, %struct.RAID_CONTEXT* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 4
  %291 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %292 = getelementptr inbounds %struct.RAID_CONTEXT, %struct.RAID_CONTEXT* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %295 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  br label %296

296:                                              ; preds = %283, %267
  %297 = load i32, i32* %17, align 4
  %298 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %299 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %298, i32 0, i32 3
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* %23, align 4
  store i32 %300, i32* %8, align 4
  br label %301

301:                                              ; preds = %296, %138, %106, %66
  %302 = load i32, i32* %8, align 4
  ret i32 %302
}

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mega_div64_32(i32, i64) #1

declare dso_local i32 @mega_mod64(i32, i64) #1

declare dso_local i32 @MR_LdDataArmGet(i32, i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i64 @MR_GetSpanBlock(i32, i32, i32*, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @MR_LdSpanArrayGet(i32, i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @MR_ArPdGet(i32, i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i8* @MR_PdDevHandleGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @MR_PdInterfaceTypeGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @MR_LdSpanPtrGet(i32, i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
