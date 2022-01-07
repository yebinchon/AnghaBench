; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { %struct.cdns3_device*, i32, %struct.TYPE_3__* }
%struct.cdns3_device = type { i32, i32, i32, i32, i8*, i32, %struct.TYPE_4__, i8*, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cdns,on-chip-buff-size\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"invalid maximum_speed parameter %d\0A\00", align 1
@cdns3_gadget_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"usb-ss-gadget\00", align 1
@cdns3_pending_setup_status_handler = common dso_local global i32 0, align 4
@cdns3_free_aligned_request_buf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to create endpoints\0A\00", align 1
@GFP_DMA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Device Controller version: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"USB Capabilities:: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"On-Chip memory configuration: %08x\0A\00", align 1
@CDNS3_EP_ZLP_BUF_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Failed to register USB device controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3*)* @cdns3_gadget_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_gadget_start(%struct.cdns3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3*, align 8
  %4 = alloca %struct.cdns3_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cdns3* %0, %struct.cdns3** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 104, i32 %8)
  %10 = bitcast i8* %9 to %struct.cdns3_device*
  store %struct.cdns3_device* %10, %struct.cdns3_device** %4, align 8
  %11 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %12 = icmp ne %struct.cdns3_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %233

16:                                               ; preds = %1
  %17 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %18 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %19 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %18, i32 0, i32 0
  store %struct.cdns3_device* %17, %struct.cdns3_device** %19, align 8
  %20 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %21 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %24 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %26 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %29 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %31 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %34 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %33, i32 0, i32 8
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %34, align 8
  %35 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %36 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %39 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %38, i32 0, i32 0
  %40 = call i32 @device_property_read_u16(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %39)
  %41 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %42 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %16
  %46 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %47 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %46, i32 0, i32 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i8* @readl(i32* %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @USB_CAP2_ACTUAL_MEM_SIZE(i32 %52)
  %54 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %55 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %45, %16
  %57 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %58 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %63 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %62, i32 0, i32 0
  store i32 256, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %66 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @usb_get_maximum_speed(i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  switch i32 %69, label %71 [
    i32 131, label %70
    i32 130, label %70
    i32 129, label %70
    i32 128, label %77
  ]

70:                                               ; preds = %64, %64, %64
  br label %78

71:                                               ; preds = %64
  %72 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %73 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %64, %71
  store i32 129, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %70
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %81 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %84 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 128, i32* %85, align 4
  %86 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %87 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  store i32* @cdns3_gadget_ops, i32** %88, align 8
  %89 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %90 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %91, align 8
  %92 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %93 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 1, i32* %94, align 8
  %95 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %96 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  store i32 1, i32* %97, align 4
  %98 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %99 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %98, i32 0, i32 12
  %100 = call i32 @spin_lock_init(i32* %99)
  %101 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %102 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %101, i32 0, i32 11
  %103 = load i32, i32* @cdns3_pending_setup_status_handler, align 4
  %104 = call i32 @INIT_WORK(i32* %102, i32 %103)
  %105 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %106 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %105, i32 0, i32 10
  %107 = load i32, i32* @cdns3_free_aligned_request_buf, align 4
  %108 = call i32 @INIT_WORK(i32* %106, i32 %107)
  %109 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %110 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = call i32 @INIT_LIST_HEAD(i32* %111)
  %113 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %114 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %113, i32 0, i32 9
  %115 = call i32 @INIT_LIST_HEAD(i32* %114)
  %116 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %117 = call i32 @cdns3_init_eps(%struct.cdns3_device* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %78
  %121 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %122 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %229

125:                                              ; preds = %78
  %126 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %127 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %130 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %129, i32 0, i32 1
  %131 = load i32, i32* @GFP_DMA, align 4
  %132 = call i32 @dma_alloc_coherent(i32 %128, i32 8, i32* %130, i32 %131)
  %133 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %134 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %136 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %125
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %226

142:                                              ; preds = %125
  %143 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %144 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %143, i32 0, i32 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = call i8* @readl(i32* %146)
  %148 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %149 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %148, i32 0, i32 7
  store i8* %147, i8** %149, align 8
  %150 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %151 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %154 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %153, i32 0, i32 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = call i8* @readl(i32* %156)
  %158 = call i32 @dev_dbg(i32 %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %157)
  %159 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %160 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %163 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %162, i32 0, i32 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = call i8* @readl(i32* %165)
  %167 = call i32 @dev_dbg(i32 %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %166)
  %168 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %169 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %172 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %171, i32 0, i32 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = call i8* @readl(i32* %174)
  %176 = call i32 @dev_dbg(i32 %170, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %175)
  %177 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %178 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %177, i32 0, i32 7
  %179 = load i8*, i8** %178, align 8
  %180 = call i8* @GET_DEV_BASE_VERSION(i8* %179)
  %181 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %182 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %181, i32 0, i32 7
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* @CDNS3_EP_ZLP_BUF_SIZE, align 4
  %184 = load i32, i32* @GFP_KERNEL, align 4
  %185 = call i8* @kzalloc(i32 %183, i32 %184)
  %186 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %187 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %186, i32 0, i32 4
  store i8* %185, i8** %187, align 8
  %188 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %189 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %188, i32 0, i32 4
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %142
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %6, align 4
  br label %215

195:                                              ; preds = %142
  %196 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %197 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %200 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %199, i32 0, i32 6
  %201 = call i32 @usb_add_gadget_udc(i32 %198, %struct.TYPE_4__* %200)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %195
  %205 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %206 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (i32, i8*, ...) @dev_err(i32 %207, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %210

209:                                              ; preds = %195
  store i32 0, i32* %2, align 4
  br label %233

210:                                              ; preds = %204
  %211 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %212 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %211, i32 0, i32 4
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @kfree(i8* %213)
  br label %215

215:                                              ; preds = %210, %192
  %216 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %217 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %220 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %223 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @dma_free_coherent(i32 %218, i32 8, i32 %221, i32 %224)
  br label %226

226:                                              ; preds = %215, %139
  %227 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %228 = call i32 @cdns3_free_all_eps(%struct.cdns3_device* %227)
  br label %229

229:                                              ; preds = %226, %120
  %230 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %231 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %230, i32 0, i32 0
  store %struct.cdns3_device* null, %struct.cdns3_device** %231, align 8
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %229, %209, %13
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @device_property_read_u16(i32, i8*, i32*) #1

declare dso_local i8* @readl(i32*) #1

declare dso_local i32 @USB_CAP2_ACTUAL_MEM_SIZE(i32) #1

declare dso_local i32 @usb_get_maximum_speed(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cdns3_init_eps(%struct.cdns3_device*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i8* @GET_DEV_BASE_VERSION(i8*) #1

declare dso_local i32 @usb_add_gadget_udc(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @cdns3_free_all_eps(%struct.cdns3_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
