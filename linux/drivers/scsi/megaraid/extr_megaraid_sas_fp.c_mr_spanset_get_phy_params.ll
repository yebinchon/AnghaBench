; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_spanset_get_phy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_spanset_get_phy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, %struct.fusion_context* }
%struct.fusion_context = type { i32 }
%struct.IO_REQUEST_INFO = type { i32, i32, i32, i32, i8*, i32, i32, i8*, i32 }
%struct.RAID_CONTEXT = type { i32, i32 }
%struct.MR_DRV_RAID_MAP_ALL = type { i32 }
%struct.MR_LD_RAID = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.RAID_CONTEXT_G35 = type { i32 }

@MR_DEVHANDLE_INVALID = common dso_local global i32 0, align 4
@MR_PD_INVALID = common dso_local global i32 0, align 4
@VENTURA_SERIES = common dso_local global i64 0, align 8
@THUNDERBOLT_SERIES = common dso_local global i64 0, align 8
@INVADER_SERIES = common dso_local global i64 0, align 8
@REGION_TYPE_UNUSED = common dso_local global i64 0, align 8
@REGION_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@RAID_CTX_SPANARM_SPAN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, i32, i32, i64, %struct.IO_REQUEST_INFO*, %struct.RAID_CONTEXT*, %struct.MR_DRV_RAID_MAP_ALL*)* @mr_spanset_get_phy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mr_spanset_get_phy_params(%struct.megasas_instance* %0, i32 %1, i32 %2, i64 %3, %struct.IO_REQUEST_INFO* %4, %struct.RAID_CONTEXT* %5, %struct.MR_DRV_RAID_MAP_ALL* %6) #0 {
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.fusion_context*, align 8
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
  %36 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %35, i32 0, i32 8
  store i32* %36, i32** %24, align 8
  %37 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %38 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %37, i32 0, i32 7
  store i8** %38, i8*** %25, align 8
  %39 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %40 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %39, i32 0, i32 0
  store i32* %40, i32** %26, align 8
  %41 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %42 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %41, i32 0, i32 1
  %43 = load %struct.fusion_context*, %struct.fusion_context** %42, align 8
  store %struct.fusion_context* %43, %struct.fusion_context** %31, align 8
  %44 = load i32, i32* @MR_DEVHANDLE_INVALID, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load i8**, i8*** %25, align 8
  store i8* %45, i8** %46, align 8
  %47 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %48 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %22, align 4
  %50 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %51 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %21, align 4
  %53 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %54 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 6
  br i1 %56, label %57, label %99

57:                                               ; preds = %7
  %58 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %62 = call i32 @get_arm_from_strip(%struct.megasas_instance* %58, i32 %59, i32 %60, %struct.MR_DRV_RAID_MAP_ALL* %61)
  store i32 %62, i32* %27, align 4
  %63 = load i32, i32* %27, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %271

66:                                               ; preds = %57
  %67 = load i32, i32* %22, align 4
  %68 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %21, align 4
  %71 = call i32 @SPAN_ROW_SIZE(%struct.MR_DRV_RAID_MAP_ALL* %68, i32 %69, i32 %70)
  %72 = call i32 @mega_mod64(i32 %67, i32 %71)
  store i32 %72, i32* %28, align 4
  %73 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %21, align 4
  %76 = call i32 @SPAN_ROW_SIZE(%struct.MR_DRV_RAID_MAP_ALL* %73, i32 %74, i32 %75)
  %77 = sub i32 %76, 1
  %78 = load i32, i32* %28, align 4
  %79 = sub i32 %77, %78
  store i32 %79, i32* %29, align 4
  %80 = load i32, i32* %29, align 4
  %81 = add i32 %80, 1
  %82 = load i32, i32* %27, align 4
  %83 = add i32 %81, %82
  store i32 %83, i32* %30, align 4
  %84 = load i32, i32* %30, align 4
  %85 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %21, align 4
  %88 = call i32 @SPAN_ROW_SIZE(%struct.MR_DRV_RAID_MAP_ALL* %85, i32 %86, i32 %87)
  %89 = icmp uge i32 %84, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %66
  %91 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %21, align 4
  %94 = call i32 @SPAN_ROW_SIZE(%struct.MR_DRV_RAID_MAP_ALL* %91, i32 %92, i32 %93)
  %95 = load i32, i32* %30, align 4
  %96 = sub i32 %95, %94
  store i32 %96, i32* %30, align 4
  br label %97

97:                                               ; preds = %90, %66
  %98 = load i32, i32* %30, align 4
  store i32 %98, i32* %20, align 4
  br label %106

99:                                               ; preds = %7
  %100 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %105 = call i32 @get_arm(%struct.megasas_instance* %100, i32 %101, i32 %102, i32 %103, %struct.MR_DRV_RAID_MAP_ALL* %104)
  store i32 %105, i32* %20, align 4
  br label %106

106:                                              ; preds = %99, %97
  %107 = load i32, i32* %20, align 4
  %108 = icmp eq i32 %107, 255
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  br label %271

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %114 = call i32 @MR_LdSpanArrayGet(i32 %111, i32 %112, %struct.MR_DRV_RAID_MAP_ALL* %113)
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %118 = call i32 @MR_ArPdGet(i32 %115, i32 %116, %struct.MR_DRV_RAID_MAP_ALL* %117)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* @MR_PD_INVALID, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %163

122:                                              ; preds = %110
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %125 = call i8* @MR_PdDevHandleGet(i32 %123, %struct.MR_DRV_RAID_MAP_ALL* %124)
  %126 = load i8**, i8*** %25, align 8
  store i8* %125, i8** %126, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %129 = call i32 @MR_PdInterfaceTypeGet(i32 %127, %struct.MR_DRV_RAID_MAP_ALL* %128)
  %130 = load i32*, i32** %26, align 8
  store i32 %129, i32* %130, align 4
  %131 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %132 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @VENTURA_SERIES, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %162

136:                                              ; preds = %122
  %137 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %138 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %162

141:                                              ; preds = %136
  %142 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %143 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %162, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %20, align 4
  %149 = add nsw i32 %148, 1
  %150 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %151 = call i32 @MR_ArPdGet(i32 %147, i32 %149, %struct.MR_DRV_RAID_MAP_ALL* %150)
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* @MR_PD_INVALID, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %146
  %156 = load i32, i32* %19, align 4
  %157 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %158 = call i8* @MR_PdDevHandleGet(i32 %156, %struct.MR_DRV_RAID_MAP_ALL* %157)
  %159 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %160 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %159, i32 0, i32 4
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %155, %146
  br label %162

162:                                              ; preds = %161, %141, %136, %122
  br label %217

163:                                              ; preds = %110
  %164 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %165 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sge i32 %166, 5
  br i1 %167, label %168, label %190

168:                                              ; preds = %163
  %169 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %170 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @THUNDERBOLT_SERIES, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %186, label %174

174:                                              ; preds = %168
  %175 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %176 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @INVADER_SERIES, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %182 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @REGION_TYPE_UNUSED, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %180, %168
  %187 = load i32, i32* @REGION_TYPE_EXCLUSIVE, align 4
  %188 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %189 = getelementptr inbounds %struct.RAID_CONTEXT, %struct.RAID_CONTEXT* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  br label %216

190:                                              ; preds = %180, %174, %163
  %191 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %192 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %215

195:                                              ; preds = %190
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %20, align 4
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %20, align 4
  %200 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %201 = call i32 @MR_ArPdGet(i32 %198, i32 %199, %struct.MR_DRV_RAID_MAP_ALL* %200)
  store i32 %201, i32* %17, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* @MR_PD_INVALID, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %195
  %206 = load i32, i32* %17, align 4
  %207 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %208 = call i8* @MR_PdDevHandleGet(i32 %206, %struct.MR_DRV_RAID_MAP_ALL* %207)
  %209 = load i8**, i8*** %25, align 8
  store i8* %208, i8** %209, align 8
  %210 = load i32, i32* %17, align 4
  %211 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %212 = call i32 @MR_PdInterfaceTypeGet(i32 %210, %struct.MR_DRV_RAID_MAP_ALL* %211)
  %213 = load i32*, i32** %26, align 8
  store i32 %212, i32* %213, align 4
  br label %214

214:                                              ; preds = %205, %195
  br label %215

215:                                              ; preds = %214, %190
  br label %216

216:                                              ; preds = %215, %186
  br label %217

217:                                              ; preds = %216, %162
  %218 = load i64, i64* %12, align 8
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %21, align 4
  %221 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %15, align 8
  %222 = call %struct.TYPE_2__* @MR_LdSpanPtrGet(i32 %219, i32 %220, %struct.MR_DRV_RAID_MAP_ALL* %221)
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @le64_to_cpu(i32 %224)
  %226 = add nsw i64 %218, %225
  %227 = load i32*, i32** %24, align 8
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %229, %226
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %227, align 4
  %232 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %233 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @VENTURA_SERIES, align 8
  %236 = icmp sge i64 %234, %235
  br i1 %236, label %237, label %253

237:                                              ; preds = %217
  %238 = load i32, i32* %21, align 4
  %239 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %240 = shl i32 %238, %239
  %241 = load i32, i32* %20, align 4
  %242 = or i32 %240, %241
  %243 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %244 = bitcast %struct.RAID_CONTEXT* %243 to %struct.RAID_CONTEXT_G35*
  %245 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %244, i32 0, i32 0
  store i32 %242, i32* %245, align 4
  %246 = load i32, i32* %21, align 4
  %247 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %248 = shl i32 %246, %247
  %249 = load i32, i32* %20, align 4
  %250 = or i32 %248, %249
  %251 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %252 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  br label %266

253:                                              ; preds = %217
  %254 = load i32, i32* %21, align 4
  %255 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %256 = shl i32 %254, %255
  %257 = load i32, i32* %20, align 4
  %258 = or i32 %256, %257
  %259 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %260 = getelementptr inbounds %struct.RAID_CONTEXT, %struct.RAID_CONTEXT* %259, i32 0, i32 0
  store i32 %258, i32* %260, align 4
  %261 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %262 = getelementptr inbounds %struct.RAID_CONTEXT, %struct.RAID_CONTEXT* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %265 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 8
  br label %266

266:                                              ; preds = %253, %237
  %267 = load i32, i32* %17, align 4
  %268 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %269 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %268, i32 0, i32 3
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* %23, align 4
  store i32 %270, i32* %8, align 4
  br label %271

271:                                              ; preds = %266, %109, %65
  %272 = load i32, i32* %8, align 4
  ret i32 %272
}

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @get_arm_from_strip(%struct.megasas_instance*, i32, i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @mega_mod64(i32, i32) #1

declare dso_local i32 @SPAN_ROW_SIZE(%struct.MR_DRV_RAID_MAP_ALL*, i32, i32) #1

declare dso_local i32 @get_arm(%struct.megasas_instance*, i32, i32, i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

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
