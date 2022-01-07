; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_test_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_test_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usbtest_param_32 = type { i32, i32, i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.transfer_context = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.usbtest_dev* }
%struct.usb_device = type { i64 }
%struct.urb = type { %struct.transfer_context*, i64 }

@MAX_SGLEN = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"iso period %d %sframes, wMaxPacket %d, transactions: %d\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"micro\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"total %lu msec (%lu packets)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"submit iso[%d], error %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, %struct.usbtest_param_32*, i32, %struct.usb_endpoint_descriptor*, i32)* @test_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_queue(%struct.usbtest_dev* %0, %struct.usbtest_param_32* %1, i32 %2, %struct.usb_endpoint_descriptor* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbtest_dev*, align 8
  %8 = alloca %struct.usbtest_param_32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.transfer_context, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %7, align 8
  store %struct.usbtest_param_32* %1, %struct.usbtest_param_32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.usb_endpoint_descriptor* %3, %struct.usb_endpoint_descriptor** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* @MAX_SGLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca %struct.urb*, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %26 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %5
  %30 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %31 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UINT_MAX, align 4
  %34 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %35 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %33, %36
  %38 = icmp sgt i32 %32, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29, %5
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %333

42:                                               ; preds = %29
  %43 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %44 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAX_SGLEN, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %333

51:                                               ; preds = %42
  %52 = call i32 @memset(%struct.transfer_context* %12, i32 0, i32 40)
  %53 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %54 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %57 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %62 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 8
  store %struct.usbtest_dev* %61, %struct.usbtest_dev** %62, align 8
  %63 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %64 = icmp ne %struct.usb_endpoint_descriptor* %63, null
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 5
  %70 = call i32 @init_completion(i32* %69)
  %71 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 6
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %74 = call %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev* %73)
  store %struct.usb_device* %74, %struct.usb_device** %13, align 8
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %130, %51
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %78 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %133

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %89 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %90 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call %struct.urb* @iso_alloc_urb(%struct.usb_device* %86, i32 %87, %struct.usb_endpoint_descriptor* %88, i32 %91, i32 %92)
  %94 = load i32, i32* %14, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %95
  store %struct.urb* %93, %struct.urb** %96, align 8
  br label %107

97:                                               ; preds = %81
  %98 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %101 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.urb* @complicated_alloc_urb(%struct.usb_device* %98, i32 %99, i32 %102, i32 0)
  %104 = load i32, i32* %14, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %105
  store %struct.urb* %103, %struct.urb** %106, align 8
  br label %107

107:                                              ; preds = %97, %85
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %109
  %111 = load %struct.urb*, %struct.urb** %110, align 8
  %112 = icmp ne %struct.urb* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %16, align 4
  br label %308

116:                                              ; preds = %107
  %117 = load i32, i32* %14, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %118
  %120 = load %struct.urb*, %struct.urb** %119, align 8
  %121 = getelementptr inbounds %struct.urb, %struct.urb* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %15, align 8
  %125 = load i32, i32* %14, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %126
  %128 = load %struct.urb*, %struct.urb** %127, align 8
  %129 = getelementptr inbounds %struct.urb, %struct.urb* %128, i32 0, i32 0
  store %struct.transfer_context* %12, %struct.transfer_context** %129, align 8
  br label %130

130:                                              ; preds = %116
  %131 = load i32, i32* %14, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %75

133:                                              ; preds = %75
  %134 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %135 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %15, align 8
  %139 = mul i64 %138, %137
  store i64 %139, i64* %15, align 8
  %140 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %201

143:                                              ; preds = %133
  %144 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %145 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @USB_SPEED_SUPER, align 8
  %148 = icmp sge i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @ss_isoc_get_packet_num(%struct.usb_device* %150, i32 %151)
  store i32 %152, i32* %20, align 4
  br label %156

153:                                              ; preds = %143
  %154 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %155 = call i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor* %154)
  store i32 %155, i32* %20, align 4
  br label %156

156:                                              ; preds = %153, %149
  %157 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %158 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %162 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, 1
  %165 = shl i32 1, %164
  %166 = sext i32 %165 to i64
  %167 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %168 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @USB_SPEED_HIGH, align 8
  %171 = icmp sge i64 %169, %170
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %174 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %175 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %174)
  %176 = load i32, i32* %20, align 4
  %177 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %160, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %166, i8* %173, i32 %175, i32 %176)
  %178 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %179 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %178, i32 0, i32 0
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i64, i64* %15, align 8
  %183 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %184 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %185, 1
  %187 = shl i32 1, %186
  %188 = sext i32 %187 to i64
  %189 = mul i64 %182, %188
  %190 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %191 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @USB_SPEED_HIGH, align 8
  %194 = icmp sge i64 %192, %193
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 8, i32 1
  %197 = sext i32 %196 to i64
  %198 = udiv i64 %189, %197
  %199 = load i64, i64* %15, align 8
  %200 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %198, i64 %199)
  br label %201

201:                                              ; preds = %156, %133
  %202 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 6
  %203 = call i32 @spin_lock_irq(i32* %202)
  store i32 0, i32* %14, align 4
  br label %204

204:                                              ; preds = %246, %201
  %205 = load i32, i32* %14, align 4
  %206 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %207 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ult i32 %205, %208
  br i1 %209, label %210, label %249

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* %14, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %215
  %217 = load %struct.urb*, %struct.urb** %216, align 8
  %218 = load i32, i32* @GFP_ATOMIC, align 4
  %219 = call i32 @usb_submit_urb(%struct.urb* %217, i32 %218)
  store i32 %219, i32* %16, align 4
  %220 = load i32, i32* %16, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %245

222:                                              ; preds = %210
  %223 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %16, align 4
  %226 = call i32 @ERROR(%struct.usbtest_dev* %223, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %224, i32 %225)
  %227 = load i32, i32* %14, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %222
  %230 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 6
  %231 = call i32 @spin_unlock_irq(i32* %230)
  br label %308

232:                                              ; preds = %222
  %233 = load i32, i32* %14, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %234
  %236 = load %struct.urb*, %struct.urb** %235, align 8
  %237 = call i32 @simple_free_urb(%struct.urb* %236)
  %238 = load i32, i32* %14, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %239
  store %struct.urb* null, %struct.urb** %240, align 8
  %241 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %241, align 4
  %244 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 2
  store i32 1, i32* %244, align 8
  br label %249

245:                                              ; preds = %210
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %14, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %14, align 4
  br label %204

249:                                              ; preds = %232, %204
  %250 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 6
  %251 = call i32 @spin_unlock_irq(i32* %250)
  %252 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 5
  %253 = call i32 @wait_for_completion(i32* %252)
  store i32 0, i32* %14, align 4
  br label %254

254:                                              ; preds = %273, %249
  %255 = load i32, i32* %14, align 4
  %256 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %257 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp ult i32 %255, %258
  br i1 %259, label %260, label %276

260:                                              ; preds = %254
  %261 = load i32, i32* %14, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %262
  %264 = load %struct.urb*, %struct.urb** %263, align 8
  %265 = icmp ne %struct.urb* %264, null
  br i1 %265, label %266, label %272

266:                                              ; preds = %260
  %267 = load i32, i32* %14, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %268
  %270 = load %struct.urb*, %struct.urb** %269, align 8
  %271 = call i32 @simple_free_urb(%struct.urb* %270)
  br label %272

272:                                              ; preds = %266, %260
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %14, align 4
  %275 = add i32 %274, 1
  store i32 %275, i32* %14, align 4
  br label %254

276:                                              ; preds = %254
  %277 = load i32, i32* %16, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %276
  br label %306

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %280
  %285 = load i32, i32* @EACCES, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %16, align 4
  br label %305

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.transfer_context, %struct.transfer_context* %12, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = sdiv i32 %295, 10
  br label %298

297:                                              ; preds = %287
  br label %298

298:                                              ; preds = %297, %293
  %299 = phi i32 [ %296, %293 ], [ 0, %297 ]
  %300 = icmp sgt i32 %289, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load i32, i32* @EIO, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %16, align 4
  br label %304

304:                                              ; preds = %301, %298
  br label %305

305:                                              ; preds = %304, %284
  br label %306

306:                                              ; preds = %305, %279
  %307 = load i32, i32* %16, align 4
  store i32 %307, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %333

308:                                              ; preds = %229, %113
  store i32 0, i32* %14, align 4
  br label %309

309:                                              ; preds = %328, %308
  %310 = load i32, i32* %14, align 4
  %311 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %8, align 8
  %312 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = icmp ult i32 %310, %313
  br i1 %314, label %315, label %331

315:                                              ; preds = %309
  %316 = load i32, i32* %14, align 4
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %317
  %319 = load %struct.urb*, %struct.urb** %318, align 8
  %320 = icmp ne %struct.urb* %319, null
  br i1 %320, label %321, label %327

321:                                              ; preds = %315
  %322 = load i32, i32* %14, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.urb*, %struct.urb** %24, i64 %323
  %325 = load %struct.urb*, %struct.urb** %324, align 8
  %326 = call i32 @simple_free_urb(%struct.urb* %325)
  br label %327

327:                                              ; preds = %321, %315
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %14, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %14, align 4
  br label %309

331:                                              ; preds = %309
  %332 = load i32, i32* %16, align 4
  store i32 %332, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %333

333:                                              ; preds = %331, %306, %48, %39
  %334 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %334)
  %335 = load i32, i32* %6, align 4
  ret i32 %335
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.transfer_context*, i32, i32) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev*) #2

declare dso_local %struct.urb* @iso_alloc_urb(%struct.usb_device*, i32, %struct.usb_endpoint_descriptor*, i32, i32) #2

declare dso_local %struct.urb* @complicated_alloc_urb(%struct.usb_device*, i32, i32, i32) #2

declare dso_local i32 @ss_isoc_get_packet_num(%struct.usb_device*, i32) #2

declare dso_local i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor*) #2

declare dso_local i32 @dev_info(i32*, i8*, i64, ...) #2

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #2

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*, i32, i32) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @simple_free_urb(%struct.urb*) #2

declare dso_local i32 @wait_for_completion(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
