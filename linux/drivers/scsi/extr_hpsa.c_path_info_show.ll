; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_path_info_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_path_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ctlr_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_device = type { %struct.hpsa_scsi_dev_t* }
%struct.hpsa_scsi_dev_t = type { i32, i32, i32, i64, i32*, i64, i32*, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@MAX_PATHS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Inactive\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"[%d:%d:%d:%d] %20.20s \00", align 1
@TYPE_RAID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"PORT: %.2s \00", align 1
@TYPE_DISK = common dso_local global i64 0, align 8
@TYPE_ZBC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"BAY: %hhu %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"BOX: %hhu BAY: %hhu %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"BOX: %hhu %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @path_info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_info_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ctlr_info*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca [2 x i8], align 1
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.scsi_device* @to_scsi_device(%struct.device* %19)
  store %struct.scsi_device* %20, %struct.scsi_device** %9, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %22 = call %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device* %21)
  store %struct.ctlr_info* %22, %struct.ctlr_info** %8, align 8
  %23 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %24 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %23, i32 0, i32 0
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 0
  %29 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %28, align 8
  store %struct.hpsa_scsi_dev_t* %29, %struct.hpsa_scsi_dev_t** %10, align 8
  %30 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %31 = icmp ne %struct.hpsa_scsi_dev_t* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %3
  %33 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %34 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %33, i32 0, i32 0
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %270

39:                                               ; preds = %3
  %40 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %41 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %261, %39
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @MAX_PATHS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %264

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  %49 = shl i32 1, %48
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %52 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %66

56:                                               ; preds = %47
  %57 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %58 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %65

64:                                               ; preds = %56
  br label %261

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %55
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %71, %73
  %75 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %76 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %81 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %84 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %87 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %90 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @scsi_device_type(i64 %91)
  %93 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %70, i64 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %82, i32 %85, i32 %88, i32 %92)
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %13, align 4
  %98 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %99 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TYPE_RAID, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %66
  %104 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %105 = call i64 @is_logical_device(%struct.hpsa_scsi_dev_t* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %103, %66
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i64, i64* @PAGE_SIZE, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = load i8*, i8** %17, align 8
  %117 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %111, i64 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %13, align 4
  br label %261

122:                                              ; preds = %103
  %123 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %124 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %14, align 4
  %130 = bitcast [2 x i8]* %18 to i8**
  %131 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %132 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = call i32 @memcpy(i8** %130, i32* %136, i32 2)
  %138 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp slt i32 %140, 48
  br i1 %141, label %142, label %144

142:                                              ; preds = %122
  %143 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  store i8 48, i8* %143, align 1
  br label %144

144:                                              ; preds = %142, %122
  %145 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp slt i32 %147, 48
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 1
  store i8 48, i8* %150, align 1
  br label %151

151:                                              ; preds = %149, %144
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i64, i64* @PAGE_SIZE, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = sub nsw i64 %156, %158
  %160 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  %161 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %155, i64 %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %160)
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %13, align 4
  %166 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %167 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @TYPE_DISK, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %151
  %172 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %173 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TYPE_ZBC, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %222

177:                                              ; preds = %171, %151
  %178 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %179 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %222

182:                                              ; preds = %177
  %183 = load i32, i32* %14, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %14, align 4
  %187 = icmp eq i32 %186, 255
  br i1 %187, label %188, label %204

188:                                              ; preds = %185, %182
  %189 = load i8*, i8** %7, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i64, i64* @PAGE_SIZE, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = sub nsw i64 %193, %195
  %197 = load i32, i32* %15, align 4
  %198 = load i8*, i8** %17, align 8
  %199 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %192, i64 %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %197, i8* %198)
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %201, %199
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %13, align 4
  br label %221

204:                                              ; preds = %185
  %205 = load i8*, i8** %7, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i64, i64* @PAGE_SIZE, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = sub nsw i64 %209, %211
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %15, align 4
  %215 = load i8*, i8** %17, align 8
  %216 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %208, i64 %212, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %213, i32 %214, i8* %215)
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %13, align 4
  br label %221

221:                                              ; preds = %204, %188
  br label %260

222:                                              ; preds = %177, %171
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %244

225:                                              ; preds = %222
  %226 = load i32, i32* %14, align 4
  %227 = icmp ne i32 %226, 255
  br i1 %227, label %228, label %244

228:                                              ; preds = %225
  %229 = load i8*, i8** %7, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i64, i64* @PAGE_SIZE, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = sub nsw i64 %233, %235
  %237 = load i32, i32* %14, align 4
  %238 = load i8*, i8** %17, align 8
  %239 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %232, i64 %236, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %237, i8* %238)
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = add nsw i64 %241, %239
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %13, align 4
  br label %259

244:                                              ; preds = %225, %222
  %245 = load i8*, i8** %7, align 8
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i64, i64* @PAGE_SIZE, align 8
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = sub nsw i64 %249, %251
  %253 = load i8*, i8** %17, align 8
  %254 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %248, i64 %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %253)
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %256, %254
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %13, align 4
  br label %259

259:                                              ; preds = %244, %228
  br label %260

260:                                              ; preds = %259, %221
  br label %261

261:                                              ; preds = %260, %107, %64
  %262 = load i32, i32* %12, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %12, align 4
  br label %43

264:                                              ; preds = %43
  %265 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %266 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %265, i32 0, i32 0
  %267 = load i64, i64* %11, align 8
  %268 = call i32 @spin_unlock_irqrestore(i32* %266, i64 %267)
  %269 = load i32, i32* %13, align 4
  store i32 %269, i32* %4, align 4
  br label %270

270:                                              ; preds = %264, %32
  %271 = load i32, i32* %4, align 4
  ret i32 %271
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @scsi_device_type(i64) #1

declare dso_local i64 @is_logical_device(%struct.hpsa_scsi_dev_t*) #1

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
