; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sdebug_dev_info = type { i64, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SDEBUG_MAX_INQ_ARR_SZ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@sdebug_ptype = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i32 0, align 4
@TYPE_WLUN = common dso_local global i8 0, align 1
@sdebug_no_lun_0 = common dso_local global i64 0, align 8
@SDEBUG_LUN_0_VAL = common dso_local global i64 0, align 8
@SDEB_IN_CDB = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@sdebug_vpd_use_hostno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@sdebug_dif = common dso_local global i64 0, align 8
@T10_PI_TYPE3_PROTECTION = common dso_local global i64 0, align 8
@have_dif_prot = common dso_local global i64 0, align 8
@sdebug_removable = common dso_local global i64 0, align 8
@sdebug_scsi_level = common dso_local global i8 0, align 1
@SDEBUG_LONG_INQ_SZ = common dso_local global i32 0, align 4
@sdebug_inq_vendor_id = common dso_local global i8* null, align 8
@sdebug_inq_product_id = common dso_local global i8* null, align 8
@sdebug_inq_product_rev = common dso_local global i8* null, align 8
@sdebug_version_date = common dso_local global i8* null, align 8
@TYPE_TAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_inquiry(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [6 x i8], align 1
  %19 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  %25 = call i32 @get_unaligned_be16(i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @SDEBUG_MAX_INQ_ARR_SZ, align 4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call i8* @kzalloc(i32 %26, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @DID_REQUEUE, align 4
  %33 = shl i32 %32, 16
  store i32 %33, i32* %3, align 4
  br label %587

34:                                               ; preds = %2
  %35 = load i32, i32* @sdebug_ptype, align 4
  %36 = load i32, i32* @TYPE_DISK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @scsi_is_wlun(i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i8, i8* @TYPE_WLUN, align 1
  store i8 %48, i8* %6, align 1
  br label %64

49:                                               ; preds = %34
  %50 = load i64, i64* @sdebug_no_lun_0, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %54 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SDEBUG_LUN_0_VAL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i8 127, i8* %6, align 1
  br label %63

59:                                               ; preds = %52, %49
  %60 = load i32, i32* @sdebug_ptype, align 4
  %61 = and i32 %60, 31
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %6, align 1
  br label %63

63:                                               ; preds = %59, %58
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i8, i8* %6, align 1
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 %65, i8* %67, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 2, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = load i32, i32* @SDEB_IN_CDB, align 4
  %77 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %75, i32 %76, i32 1, i32 1)
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @kfree(i8* %78)
  %80 = load i32, i32* @check_condition_result, align 4
  store i32 %80, i32* %3, align 4
  br label %587

81:                                               ; preds = %64
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 1, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %489

88:                                               ; preds = %81
  %89 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %90 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %89, i32 0, i32 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = add nsw i32 %96, 1
  %98 = and i32 %97, 127
  %99 = shl i32 %98, 8
  %100 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %101 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, 127
  %104 = add nsw i32 %99, %103
  store i32 %104, i32* %15, align 4
  %105 = load i64, i64* @sdebug_vpd_use_hostno, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %88
  store i32 0, i32* %19, align 4
  br label %108

108:                                              ; preds = %107, %88
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %126

112:                                              ; preds = %108
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, 1
  %115 = mul nsw i32 %114, 2000
  %116 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %117 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 1000
  %120 = add nsw i32 %115, %119
  %121 = sext i32 %120 to i64
  %122 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %123 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  br label %126

126:                                              ; preds = %112, %111
  %127 = phi i64 [ -1, %111 ], [ %125, %112 ]
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  %131 = mul nsw i32 %130, 2000
  %132 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %133 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %134, 1000
  %136 = add nsw i32 %131, %135
  %137 = sub nsw i32 %136, 3
  store i32 %137, i32* %16, align 4
  %138 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @scnprintf(i8* %138, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %139)
  store i32 %140, i32* %17, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 2
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 0, %144
  br i1 %145, label %146, label %221

146:                                              ; preds = %126
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 2
  %149 = load i8, i8* %148, align 1
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  store i8 %149, i8* %151, align 1
  store i32 4, i32* %10, align 4
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 0, i8* %156, align 1
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  store i8 -128, i8* %161, align 1
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  store i8 -125, i8* %166, align 1
  %167 = load i8*, i8** %7, align 8
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  store i8 -124, i8* %171, align 1
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  store i8 -123, i8* %176, align 1
  %177 = load i8*, i8** %7, align 8
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  store i8 -122, i8* %181, align 1
  %182 = load i8*, i8** %7, align 8
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  store i8 -121, i8* %186, align 1
  %187 = load i8*, i8** %7, align 8
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  store i8 -120, i8* %191, align 1
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %215

194:                                              ; preds = %146
  %195 = load i8*, i8** %7, align 8
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %10, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  store i8 -119, i8* %199, align 1
  %200 = load i8*, i8** %7, align 8
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  store i8 -80, i8* %204, align 1
  %205 = load i8*, i8** %7, align 8
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  store i8 -79, i8* %209, align 1
  %210 = load i8*, i8** %7, align 8
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  store i8 -78, i8* %214, align 1
  br label %215

215:                                              ; preds = %194, %146
  %216 = load i32, i32* %10, align 4
  %217 = sub nsw i32 %216, 4
  %218 = trunc i32 %217 to i8
  %219 = load i8*, i8** %7, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 3
  store i8 %218, i8* %220, align 1
  br label %473

221:                                              ; preds = %126
  %222 = load i8*, i8** %8, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 2
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp eq i32 128, %225
  br i1 %226, label %227, label %242

227:                                              ; preds = %221
  %228 = load i8*, i8** %8, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 2
  %230 = load i8, i8* %229, align 1
  %231 = load i8*, i8** %7, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 1
  store i8 %230, i8* %232, align 1
  %233 = load i32, i32* %17, align 4
  %234 = trunc i32 %233 to i8
  %235 = load i8*, i8** %7, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 3
  store i8 %234, i8* %236, align 1
  %237 = load i8*, i8** %7, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 4
  %239 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %240 = load i32, i32* %17, align 4
  %241 = call i32 @memcpy(i8* %238, i8* %239, i32 %240)
  br label %472

242:                                              ; preds = %221
  %243 = load i8*, i8** %8, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 2
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp eq i32 131, %246
  br i1 %247, label %248, label %266

248:                                              ; preds = %242
  %249 = load i8*, i8** %8, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 2
  %251 = load i8, i8* %250, align 1
  %252 = load i8*, i8** %7, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 1
  store i8 %251, i8* %253, align 1
  %254 = load i8*, i8** %7, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 4
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* %16, align 4
  %258 = load i32, i32* %14, align 4
  %259 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %260 = load i32, i32* %17, align 4
  %261 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %262 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %261, i32 0, i32 3
  %263 = call zeroext i8 @inquiry_vpd_83(i8* %255, i32 %256, i32 %257, i32 %258, i8* %259, i32 %260, i32* %262)
  %264 = load i8*, i8** %7, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 3
  store i8 %263, i8* %265, align 1
  br label %471

266:                                              ; preds = %242
  %267 = load i8*, i8** %8, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 2
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = icmp eq i32 132, %270
  br i1 %271, label %272, label %283

272:                                              ; preds = %266
  %273 = load i8*, i8** %8, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 2
  %275 = load i8, i8* %274, align 1
  %276 = load i8*, i8** %7, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 1
  store i8 %275, i8* %277, align 1
  %278 = load i8*, i8** %7, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 4
  %280 = call zeroext i8 @inquiry_vpd_84(i8* %279)
  %281 = load i8*, i8** %7, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 3
  store i8 %280, i8* %282, align 1
  br label %470

283:                                              ; preds = %266
  %284 = load i8*, i8** %8, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 2
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 133, %287
  br i1 %288, label %289, label %300

289:                                              ; preds = %283
  %290 = load i8*, i8** %8, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 2
  %292 = load i8, i8* %291, align 1
  %293 = load i8*, i8** %7, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 1
  store i8 %292, i8* %294, align 1
  %295 = load i8*, i8** %7, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 4
  %297 = call zeroext i8 @inquiry_vpd_85(i8* %296)
  %298 = load i8*, i8** %7, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 3
  store i8 %297, i8* %299, align 1
  br label %469

300:                                              ; preds = %283
  %301 = load i8*, i8** %8, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 2
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp eq i32 134, %304
  br i1 %305, label %306, label %333

306:                                              ; preds = %300
  %307 = load i8*, i8** %8, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 2
  %309 = load i8, i8* %308, align 1
  %310 = load i8*, i8** %7, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 1
  store i8 %309, i8* %311, align 1
  %312 = load i8*, i8** %7, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 3
  store i8 60, i8* %313, align 1
  %314 = load i64, i64* @sdebug_dif, align 8
  %315 = load i64, i64* @T10_PI_TYPE3_PROTECTION, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %306
  %318 = load i8*, i8** %7, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 4
  store i8 4, i8* %319, align 1
  br label %330

320:                                              ; preds = %306
  %321 = load i64, i64* @have_dif_prot, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load i8*, i8** %7, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 4
  store i8 5, i8* %325, align 1
  br label %329

326:                                              ; preds = %320
  %327 = load i8*, i8** %7, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 4
  store i8 0, i8* %328, align 1
  br label %329

329:                                              ; preds = %326, %323
  br label %330

330:                                              ; preds = %329, %317
  %331 = load i8*, i8** %7, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 5
  store i8 7, i8* %332, align 1
  br label %468

333:                                              ; preds = %300
  %334 = load i8*, i8** %8, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 2
  %336 = load i8, i8* %335, align 1
  %337 = zext i8 %336 to i32
  %338 = icmp eq i32 135, %337
  br i1 %338, label %339, label %355

339:                                              ; preds = %333
  %340 = load i8*, i8** %8, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 2
  %342 = load i8, i8* %341, align 1
  %343 = load i8*, i8** %7, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 1
  store i8 %342, i8* %344, align 1
  %345 = load i8*, i8** %7, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 3
  store i8 8, i8* %346, align 1
  %347 = load i8*, i8** %7, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 4
  store i8 2, i8* %348, align 1
  %349 = load i8*, i8** %7, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 6
  store i8 -128, i8* %350, align 1
  %351 = load i8*, i8** %7, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 8
  store i8 24, i8* %352, align 1
  %353 = load i8*, i8** %7, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 10
  store i8 -126, i8* %354, align 1
  br label %467

355:                                              ; preds = %333
  %356 = load i8*, i8** %8, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 2
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = icmp eq i32 136, %359
  br i1 %360, label %361, label %373

361:                                              ; preds = %355
  %362 = load i8*, i8** %8, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 2
  %364 = load i8, i8* %363, align 1
  %365 = load i8*, i8** %7, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 1
  store i8 %364, i8* %366, align 1
  %367 = load i8*, i8** %7, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 4
  %369 = load i32, i32* %16, align 4
  %370 = call zeroext i8 @inquiry_vpd_88(i8* %368, i32 %369)
  %371 = load i8*, i8** %7, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 3
  store i8 %370, i8* %372, align 1
  br label %466

373:                                              ; preds = %355
  %374 = load i32, i32* %13, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %395

376:                                              ; preds = %373
  %377 = load i8*, i8** %8, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 2
  %379 = load i8, i8* %378, align 1
  %380 = zext i8 %379 to i32
  %381 = icmp eq i32 137, %380
  br i1 %381, label %382, label %395

382:                                              ; preds = %376
  %383 = load i8*, i8** %8, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 2
  %385 = load i8, i8* %384, align 1
  %386 = load i8*, i8** %7, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 1
  store i8 %385, i8* %387, align 1
  %388 = load i8*, i8** %7, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 4
  %390 = call i32 @inquiry_vpd_89(i8* %389)
  store i32 %390, i32* %10, align 4
  %391 = load i32, i32* %10, align 4
  %392 = load i8*, i8** %7, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 2
  %394 = call i32 @put_unaligned_be16(i32 %391, i8* %393)
  br label %465

395:                                              ; preds = %376, %373
  %396 = load i32, i32* %13, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %415

398:                                              ; preds = %395
  %399 = load i8*, i8** %8, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 2
  %401 = load i8, i8* %400, align 1
  %402 = zext i8 %401 to i32
  %403 = icmp eq i32 176, %402
  br i1 %403, label %404, label %415

404:                                              ; preds = %398
  %405 = load i8*, i8** %8, align 8
  %406 = getelementptr inbounds i8, i8* %405, i64 2
  %407 = load i8, i8* %406, align 1
  %408 = load i8*, i8** %7, align 8
  %409 = getelementptr inbounds i8, i8* %408, i64 1
  store i8 %407, i8* %409, align 1
  %410 = load i8*, i8** %7, align 8
  %411 = getelementptr inbounds i8, i8* %410, i64 4
  %412 = call zeroext i8 @inquiry_vpd_b0(i8* %411)
  %413 = load i8*, i8** %7, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 3
  store i8 %412, i8* %414, align 1
  br label %464

415:                                              ; preds = %398, %395
  %416 = load i32, i32* %13, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %435

418:                                              ; preds = %415
  %419 = load i8*, i8** %8, align 8
  %420 = getelementptr inbounds i8, i8* %419, i64 2
  %421 = load i8, i8* %420, align 1
  %422 = zext i8 %421 to i32
  %423 = icmp eq i32 177, %422
  br i1 %423, label %424, label %435

424:                                              ; preds = %418
  %425 = load i8*, i8** %8, align 8
  %426 = getelementptr inbounds i8, i8* %425, i64 2
  %427 = load i8, i8* %426, align 1
  %428 = load i8*, i8** %7, align 8
  %429 = getelementptr inbounds i8, i8* %428, i64 1
  store i8 %427, i8* %429, align 1
  %430 = load i8*, i8** %7, align 8
  %431 = getelementptr inbounds i8, i8* %430, i64 4
  %432 = call zeroext i8 @inquiry_vpd_b1(i8* %431)
  %433 = load i8*, i8** %7, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 3
  store i8 %432, i8* %434, align 1
  br label %463

435:                                              ; preds = %418, %415
  %436 = load i32, i32* %13, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %455

438:                                              ; preds = %435
  %439 = load i8*, i8** %8, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 2
  %441 = load i8, i8* %440, align 1
  %442 = zext i8 %441 to i32
  %443 = icmp eq i32 178, %442
  br i1 %443, label %444, label %455

444:                                              ; preds = %438
  %445 = load i8*, i8** %8, align 8
  %446 = getelementptr inbounds i8, i8* %445, i64 2
  %447 = load i8, i8* %446, align 1
  %448 = load i8*, i8** %7, align 8
  %449 = getelementptr inbounds i8, i8* %448, i64 1
  store i8 %447, i8* %449, align 1
  %450 = load i8*, i8** %7, align 8
  %451 = getelementptr inbounds i8, i8* %450, i64 4
  %452 = call zeroext i8 @inquiry_vpd_b2(i8* %451)
  %453 = load i8*, i8** %7, align 8
  %454 = getelementptr inbounds i8, i8* %453, i64 3
  store i8 %452, i8* %454, align 1
  br label %462

455:                                              ; preds = %438, %435
  %456 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %457 = load i32, i32* @SDEB_IN_CDB, align 4
  %458 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %456, i32 %457, i32 2, i32 -1)
  %459 = load i8*, i8** %7, align 8
  %460 = call i32 @kfree(i8* %459)
  %461 = load i32, i32* @check_condition_result, align 4
  store i32 %461, i32* %3, align 4
  br label %587

462:                                              ; preds = %444
  br label %463

463:                                              ; preds = %462, %424
  br label %464

464:                                              ; preds = %463, %404
  br label %465

465:                                              ; preds = %464, %382
  br label %466

466:                                              ; preds = %465, %361
  br label %467

467:                                              ; preds = %466, %339
  br label %468

468:                                              ; preds = %467, %330
  br label %469

469:                                              ; preds = %468, %289
  br label %470

470:                                              ; preds = %469, %272
  br label %471

471:                                              ; preds = %470, %248
  br label %472

472:                                              ; preds = %471, %227
  br label %473

473:                                              ; preds = %472, %215
  %474 = load i8*, i8** %7, align 8
  %475 = getelementptr inbounds i8, i8* %474, i64 2
  %476 = call i32 @get_unaligned_be16(i8* %475)
  %477 = add nsw i32 %476, 4
  %478 = load i32, i32* %9, align 4
  %479 = call i32 @min(i32 %477, i32 %478)
  store i32 %479, i32* %17, align 4
  %480 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %481 = load i8*, i8** %7, align 8
  %482 = load i32, i32* %17, align 4
  %483 = load i32, i32* @SDEBUG_MAX_INQ_ARR_SZ, align 4
  %484 = call i32 @min(i32 %482, i32 %483)
  %485 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %480, i8* %481, i32 %484)
  store i32 %485, i32* %11, align 4
  %486 = load i8*, i8** %7, align 8
  %487 = call i32 @kfree(i8* %486)
  %488 = load i32, i32* %11, align 4
  store i32 %488, i32* %3, align 4
  br label %587

489:                                              ; preds = %81
  br label %490

490:                                              ; preds = %489
  %491 = load i64, i64* @sdebug_removable, align 8
  %492 = icmp ne i64 %491, 0
  %493 = zext i1 %492 to i64
  %494 = select i1 %492, i32 128, i32 0
  %495 = trunc i32 %494 to i8
  %496 = load i8*, i8** %7, align 8
  %497 = getelementptr inbounds i8, i8* %496, i64 1
  store i8 %495, i8* %497, align 1
  %498 = load i8, i8* @sdebug_scsi_level, align 1
  %499 = load i8*, i8** %7, align 8
  %500 = getelementptr inbounds i8, i8* %499, i64 2
  store i8 %498, i8* %500, align 1
  %501 = load i8*, i8** %7, align 8
  %502 = getelementptr inbounds i8, i8* %501, i64 3
  store i8 2, i8* %502, align 1
  %503 = load i32, i32* @SDEBUG_LONG_INQ_SZ, align 4
  %504 = sub nsw i32 %503, 5
  %505 = trunc i32 %504 to i8
  %506 = load i8*, i8** %7, align 8
  %507 = getelementptr inbounds i8, i8* %506, i64 4
  store i8 %505, i8* %507, align 1
  %508 = load i64, i64* @have_dif_prot, align 8
  %509 = trunc i64 %508 to i32
  %510 = trunc i32 %509 to i8
  %511 = load i8*, i8** %7, align 8
  %512 = getelementptr inbounds i8, i8* %511, i64 5
  store i8 %510, i8* %512, align 1
  %513 = load i64, i64* @sdebug_vpd_use_hostno, align 8
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %515, label %522

515:                                              ; preds = %490
  %516 = load i8*, i8** %7, align 8
  %517 = getelementptr inbounds i8, i8* %516, i64 5
  %518 = load i8, i8* %517, align 1
  %519 = zext i8 %518 to i32
  %520 = or i32 %519, 16
  %521 = trunc i32 %520 to i8
  store i8 %521, i8* %517, align 1
  br label %522

522:                                              ; preds = %515, %490
  %523 = load i8*, i8** %7, align 8
  %524 = getelementptr inbounds i8, i8* %523, i64 6
  store i8 16, i8* %524, align 1
  %525 = load i8*, i8** %7, align 8
  %526 = getelementptr inbounds i8, i8* %525, i64 7
  store i8 10, i8* %526, align 1
  %527 = load i8*, i8** %7, align 8
  %528 = getelementptr inbounds i8, i8* %527, i64 8
  %529 = load i8*, i8** @sdebug_inq_vendor_id, align 8
  %530 = call i32 @memcpy(i8* %528, i8* %529, i32 8)
  %531 = load i8*, i8** %7, align 8
  %532 = getelementptr inbounds i8, i8* %531, i64 16
  %533 = load i8*, i8** @sdebug_inq_product_id, align 8
  %534 = call i32 @memcpy(i8* %532, i8* %533, i32 16)
  %535 = load i8*, i8** %7, align 8
  %536 = getelementptr inbounds i8, i8* %535, i64 32
  %537 = load i8*, i8** @sdebug_inq_product_rev, align 8
  %538 = call i32 @memcpy(i8* %536, i8* %537, i32 4)
  %539 = load i8*, i8** %7, align 8
  %540 = getelementptr inbounds i8, i8* %539, i64 36
  %541 = load i8*, i8** @sdebug_version_date, align 8
  %542 = call i32 @memcpy(i8* %540, i8* %541, i32 8)
  %543 = load i8*, i8** %7, align 8
  %544 = getelementptr inbounds i8, i8* %543, i64 58
  %545 = call i32 @put_unaligned_be16(i32 192, i8* %544)
  %546 = load i8*, i8** %7, align 8
  %547 = getelementptr inbounds i8, i8* %546, i64 60
  %548 = call i32 @put_unaligned_be16(i32 1472, i8* %547)
  store i32 62, i32* %10, align 4
  %549 = load i32, i32* %13, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %559

551:                                              ; preds = %522
  %552 = load i8*, i8** %7, align 8
  %553 = load i32, i32* %10, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i8, i8* %552, i64 %554
  %556 = call i32 @put_unaligned_be16(i32 1536, i8* %555)
  %557 = load i32, i32* %10, align 4
  %558 = add nsw i32 %557, 2
  store i32 %558, i32* %10, align 4
  br label %572

559:                                              ; preds = %522
  %560 = load i32, i32* @sdebug_ptype, align 4
  %561 = load i32, i32* @TYPE_TAPE, align 4
  %562 = icmp eq i32 %560, %561
  br i1 %562, label %563, label %571

563:                                              ; preds = %559
  %564 = load i8*, i8** %7, align 8
  %565 = load i32, i32* %10, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i8, i8* %564, i64 %566
  %568 = call i32 @put_unaligned_be16(i32 1317, i8* %567)
  %569 = load i32, i32* %10, align 4
  %570 = add nsw i32 %569, 2
  store i32 %570, i32* %10, align 4
  br label %571

571:                                              ; preds = %563, %559
  br label %572

572:                                              ; preds = %571, %551
  %573 = load i8*, i8** %7, align 8
  %574 = load i32, i32* %10, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i8, i8* %573, i64 %575
  %577 = call i32 @put_unaligned_be16(i32 8448, i8* %576)
  %578 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %579 = load i8*, i8** %7, align 8
  %580 = load i32, i32* %9, align 4
  %581 = load i32, i32* @SDEBUG_LONG_INQ_SZ, align 4
  %582 = call i32 @min(i32 %580, i32 %581)
  %583 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %578, i8* %579, i32 %582)
  store i32 %583, i32* %11, align 4
  %584 = load i8*, i8** %7, align 8
  %585 = call i32 @kfree(i8* %584)
  %586 = load i32, i32* %11, align 4
  store i32 %586, i32* %3, align 4
  br label %587

587:                                              ; preds = %572, %473, %455, %74, %31
  %588 = load i32, i32* %3, align 4
  ret i32 %588
}

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @scsi_is_wlun(i32) #1

declare dso_local i32 @mk_sense_invalid_fld(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local zeroext i8 @inquiry_vpd_83(i8*, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local zeroext i8 @inquiry_vpd_84(i8*) #1

declare dso_local zeroext i8 @inquiry_vpd_85(i8*) #1

declare dso_local zeroext i8 @inquiry_vpd_88(i8*, i32) #1

declare dso_local i32 @inquiry_vpd_89(i8*) #1

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

declare dso_local zeroext i8 @inquiry_vpd_b0(i8*) #1

declare dso_local zeroext i8 @inquiry_vpd_b1(i8*) #1

declare dso_local zeroext i8 @inquiry_vpd_b2(i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
