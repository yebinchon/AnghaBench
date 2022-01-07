; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_handle_vdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_handle_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.device, i32 }
%struct.device = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.fw_rsc_vdev = type { i32, i32, i32, i32, i64* }
%struct.rproc_vdev = type { i32, i32, %struct.TYPE_12__, i32*, %struct.TYPE_13__, i32, %struct.rproc*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"vdev rsc is truncated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"vdev rsc has non zero reserved bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"vdev rsc: id %d, dfeatures 0x%x, cfg len %d, %d vrings\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"too many vrings: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"vdev%dbuffer\00", align 1
@rproc_rvdev_release = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s#%s\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Failed to set DMA mask %llx. Trying to continue... %x\0A\00", align 1
@rproc_vdev_do_start = common dso_local global i32 0, align 4
@rproc_vdev_do_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.fw_rsc_vdev*, i32, i32)* @rproc_handle_vdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_handle_vdev(%struct.rproc* %0, %struct.fw_rsc_vdev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca %struct.fw_rsc_vdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.rproc_vdev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  store %struct.rproc* %0, %struct.rproc** %6, align 8
  store %struct.fw_rsc_vdev* %1, %struct.fw_rsc_vdev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.rproc*, %struct.rproc** %6, align 8
  %16 = getelementptr inbounds %struct.rproc, %struct.rproc* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %18 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 24, %21
  %23 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %24 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add i64 %22, %26
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.device*, %struct.device** %10, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %269

36:                                               ; preds = %4
  %37 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %38 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %37, i32 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %45 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43, %36
  %51 = load %struct.device*, %struct.device** %10, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %269

55:                                               ; preds = %43
  %56 = load %struct.device*, %struct.device** %10, align 8
  %57 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %58 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %61 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %64 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %67 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_dbg(%struct.device* %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %71 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %74 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @ARRAY_SIZE(i32* %75)
  %77 = icmp sgt i32 %72, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %55
  %79 = load %struct.device*, %struct.device** %10, align 8
  %80 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %81 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %269

86:                                               ; preds = %55
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.rproc_vdev* @kzalloc(i32 64, i32 %87)
  store %struct.rproc_vdev* %88, %struct.rproc_vdev** %11, align 8
  %89 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %90 = icmp ne %struct.rproc_vdev* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %269

94:                                               ; preds = %86
  %95 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %96 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %95, i32 0, i32 8
  %97 = call i32 @kref_init(i32* %96)
  %98 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %99 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %102 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 8
  %103 = load %struct.rproc*, %struct.rproc** %6, align 8
  %104 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %105 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %104, i32 0, i32 6
  store %struct.rproc* %103, %struct.rproc** %105, align 8
  %106 = load %struct.rproc*, %struct.rproc** %6, align 8
  %107 = getelementptr inbounds %struct.rproc, %struct.rproc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %111 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %113 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %114 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @snprintf(i8* %112, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load %struct.rproc*, %struct.rproc** %6, align 8
  %118 = getelementptr inbounds %struct.rproc, %struct.rproc* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.device, %struct.device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %122 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store %struct.TYPE_14__* %120, %struct.TYPE_14__** %123, align 8
  %124 = load %struct.rproc*, %struct.rproc** %6, align 8
  %125 = getelementptr inbounds %struct.rproc, %struct.rproc* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.device, %struct.device* %125, i32 0, i32 0
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %131 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @rproc_rvdev_release, align 4
  %134 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %135 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 8
  %137 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %138 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %137, i32 0, i32 2
  %139 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %140 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = call i32 @dev_name(%struct.TYPE_14__* %142)
  %144 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %145 = call i32 @dev_set_name(%struct.TYPE_12__* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %143, i8* %144)
  %146 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %147 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %146, i32 0, i32 2
  %148 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %149 = call i32 @dev_set_drvdata(%struct.TYPE_12__* %147, %struct.rproc_vdev* %148)
  %150 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %151 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %150, i32 0, i32 2
  %152 = call i32 @device_register(%struct.TYPE_12__* %151)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %94
  %156 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %157 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %156, i32 0, i32 2
  %158 = call i32 @put_device(%struct.TYPE_12__* %157)
  %159 = load i32, i32* %13, align 4
  store i32 %159, i32* %5, align 4
  br label %269

160:                                              ; preds = %94
  %161 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %162 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %161, i32 0, i32 2
  %163 = load %struct.rproc*, %struct.rproc** %6, align 8
  %164 = getelementptr inbounds %struct.rproc, %struct.rproc* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.device, %struct.device* %164, i32 0, i32 0
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = call i32 @get_dma_ops(%struct.TYPE_14__* %166)
  %168 = call i32 @set_dma_ops(%struct.TYPE_12__* %162, i32 %167)
  %169 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %170 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %169, i32 0, i32 2
  %171 = load %struct.rproc*, %struct.rproc** %6, align 8
  %172 = getelementptr inbounds %struct.rproc, %struct.rproc* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.device, %struct.device* %172, i32 0, i32 0
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = call i32 @dma_get_mask(%struct.TYPE_14__* %174)
  %176 = call i32 @dma_coerce_mask_and_coherent(%struct.TYPE_12__* %170, i32 %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %160
  %180 = load %struct.device*, %struct.device** %10, align 8
  %181 = load %struct.rproc*, %struct.rproc** %6, align 8
  %182 = getelementptr inbounds %struct.rproc, %struct.rproc* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.device, %struct.device* %182, i32 0, i32 0
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = call i32 @dma_get_mask(%struct.TYPE_14__* %184)
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @dev_warn(%struct.device* %180, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %179, %160
  store i32 0, i32* %12, align 4
  br label %189

189:                                              ; preds = %204, %188
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %192 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %189
  %196 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %197 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @rproc_parse_vring(%struct.rproc_vdev* %196, %struct.fw_rsc_vdev* %197, i32 %198)
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %264

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %12, align 4
  br label %189

207:                                              ; preds = %189
  %208 = load i32, i32* %8, align 4
  %209 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %210 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  store i32 0, i32* %12, align 4
  br label %211

211:                                              ; preds = %225, %207
  %212 = load i32, i32* %12, align 4
  %213 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %7, align 8
  %214 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %211
  %218 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @rproc_alloc_vring(%struct.rproc_vdev* %218, i32 %219)
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %246

224:                                              ; preds = %217
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %12, align 4
  br label %211

228:                                              ; preds = %211
  %229 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %230 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %229, i32 0, i32 5
  %231 = load %struct.rproc*, %struct.rproc** %6, align 8
  %232 = getelementptr inbounds %struct.rproc, %struct.rproc* %231, i32 0, i32 0
  %233 = call i32 @list_add_tail(i32* %230, i32* %232)
  %234 = load i32, i32* @rproc_vdev_do_start, align 4
  %235 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %236 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 1
  store i32 %234, i32* %237, align 4
  %238 = load i32, i32* @rproc_vdev_do_stop, align 4
  %239 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %240 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  store i32 %238, i32* %241, align 8
  %242 = load %struct.rproc*, %struct.rproc** %6, align 8
  %243 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %244 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %243, i32 0, i32 4
  %245 = call i32 @rproc_add_subdev(%struct.rproc* %242, %struct.TYPE_13__* %244)
  store i32 0, i32* %5, align 4
  br label %269

246:                                              ; preds = %223
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %12, align 4
  br label %249

249:                                              ; preds = %260, %246
  %250 = load i32, i32* %12, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %249
  %253 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %254 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = call i32 @rproc_free_vring(i32* %258)
  br label %260

260:                                              ; preds = %252
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %12, align 4
  br label %249

263:                                              ; preds = %249
  br label %264

264:                                              ; preds = %263, %202
  %265 = load %struct.rproc_vdev*, %struct.rproc_vdev** %11, align 8
  %266 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %265, i32 0, i32 2
  %267 = call i32 @device_unregister(%struct.TYPE_12__* %266)
  %268 = load i32, i32* %13, align 4
  store i32 %268, i32* %5, align 4
  br label %269

269:                                              ; preds = %264, %228, %155, %91, %78, %50, %31
  %270 = load i32, i32* %5, align 4
  ret i32 %270
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.rproc_vdev* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_12__*, i8*, i32, i8*) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_12__*, %struct.rproc_vdev*) #1

declare dso_local i32 @device_register(%struct.TYPE_12__*) #1

declare dso_local i32 @put_device(%struct.TYPE_12__*) #1

declare dso_local i32 @set_dma_ops(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @get_dma_ops(%struct.TYPE_14__*) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dma_get_mask(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @rproc_parse_vring(%struct.rproc_vdev*, %struct.fw_rsc_vdev*, i32) #1

declare dso_local i32 @rproc_alloc_vring(%struct.rproc_vdev*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rproc_add_subdev(%struct.rproc*, %struct.TYPE_13__*) #1

declare dso_local i32 @rproc_free_vring(i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
