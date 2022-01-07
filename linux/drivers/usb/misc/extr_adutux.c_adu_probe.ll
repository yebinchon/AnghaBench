; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_adutux.c_adu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_adutux.c_adu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i64, i32* }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.adu_device = type { i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"interrupt endpoints not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not retrieve serial number\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"serial_number=%s\00", align 1
@adu_class = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"ADU%d %s now attached to /dev/usb/adutux%d\0A\00", align 1
@ADU_MINOR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @adu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adu_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.adu_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  store %struct.adu_device* null, %struct.adu_device** %7, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.adu_device* @kzalloc(i32 96, i32 %16)
  store %struct.adu_device* %17, %struct.adu_device** %7, align 8
  %18 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %19 = icmp ne %struct.adu_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %260

23:                                               ; preds = %2
  %24 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %25 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %24, i32 0, i32 14
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %28 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %27, i32 0, i32 13
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %31 = call i32 @usb_get_dev(%struct.usb_device* %30)
  %32 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %33 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %32, i32 0, i32 12
  store i32 %31, i32* %33, align 8
  %34 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %35 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %34, i32 0, i32 11
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %38 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %37, i32 0, i32 10
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %45 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %44, i32 0, i32 9
  %46 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %47 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %46, i32 0, i32 8
  %48 = call i32 @usb_find_common_endpoints_reverse(i32* %43, i32* null, i32* null, i32* %45, i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %23
  %52 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %53 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %8, align 4
  br label %256

56:                                               ; preds = %23
  %57 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %58 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_endpoint_maxp(i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %62 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @usb_endpoint_maxp(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 4, %65
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kmalloc(i32 %66, i32 %67)
  %69 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %70 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  %71 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %72 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %71, i32 0, i32 7
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %56
  br label %256

76:                                               ; preds = %56
  %77 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %78 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %77, i32 0, i32 7
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @memset(i8* %79, i8 signext 97, i32 %80)
  %82 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %83 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %82, i32 0, i32 7
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %84, i64 %86
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @memset(i8* %87, i8 signext 98, i32 %88)
  %90 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %91 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %90, i32 0, i32 7
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 2, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr i8, i8* %92, i64 %95
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @memset(i8* %96, i8 signext 99, i32 %97)
  %99 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %100 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %99, i32 0, i32 7
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 3, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr i8, i8* %101, i64 %104
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @memset(i8* %105, i8 signext 100, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = mul nsw i32 4, %108
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i8* @kmalloc(i32 %109, i32 %110)
  %112 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %113 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %112, i32 0, i32 6
  store i8* %111, i8** %113, align 8
  %114 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %115 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %114, i32 0, i32 6
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %76
  br label %256

119:                                              ; preds = %76
  %120 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %121 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %120, i32 0, i32 6
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @memset(i8* %122, i8 signext 101, i32 %123)
  %125 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %126 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %125, i32 0, i32 6
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr i8, i8* %127, i64 %129
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @memset(i8* %130, i8 signext 102, i32 %131)
  %133 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %134 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %133, i32 0, i32 6
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = mul nsw i32 2, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr i8, i8* %135, i64 %138
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @memset(i8* %139, i8 signext 103, i32 %140)
  %142 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %143 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %142, i32 0, i32 6
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = mul nsw i32 3, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr i8, i8* %144, i64 %147
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @memset(i8* %148, i8 signext 104, i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call i8* @kmalloc(i32 %151, i32 %152)
  %154 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %155 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %154, i32 0, i32 5
  store i8* %153, i8** %155, align 8
  %156 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %157 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %156, i32 0, i32 5
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %119
  br label %256

161:                                              ; preds = %119
  %162 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %163 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %162, i32 0, i32 5
  %164 = load i8*, i8** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @memset(i8* %164, i8 signext 105, i32 %165)
  %167 = load i32, i32* @GFP_KERNEL, align 4
  %168 = call i8* @usb_alloc_urb(i32 0, i32 %167)
  %169 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %170 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  %171 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %172 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %171, i32 0, i32 4
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %161
  br label %256

176:                                              ; preds = %161
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @GFP_KERNEL, align 4
  %179 = call i8* @kmalloc(i32 %177, i32 %178)
  %180 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %181 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %183 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %182, i32 0, i32 3
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %176
  br label %256

187:                                              ; preds = %176
  %188 = load i32, i32* @GFP_KERNEL, align 4
  %189 = call i8* @usb_alloc_urb(i32 0, i32 %188)
  %190 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %191 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  %192 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %193 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %187
  br label %256

197:                                              ; preds = %187
  %198 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %199 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %200 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %204 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @usb_string(%struct.usb_device* %198, i32 %202, i32 %205, i32 4)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %197
  %209 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %210 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %209, i32 0, i32 0
  %211 = call i32 @dev_err(i32* %210, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %212 = load i32, i32* @EIO, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %8, align 4
  br label %256

214:                                              ; preds = %197
  %215 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %216 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %215, i32 0, i32 0
  %217 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %218 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @dev_dbg(i32* %216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %219)
  %221 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %222 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %223 = call i32 @usb_set_intfdata(%struct.usb_interface* %221, %struct.adu_device* %222)
  %224 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %225 = call i32 @usb_register_dev(%struct.usb_interface* %224, i32* @adu_class)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %214
  %229 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %230 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %229, i32 0, i32 0
  %231 = call i32 @dev_err(i32* %230, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %232 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %233 = call i32 @usb_set_intfdata(%struct.usb_interface* %232, %struct.adu_device* null)
  br label %256

234:                                              ; preds = %214
  %235 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %236 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %239 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %238, i32 0, i32 0
  store i64 %237, i64* %239, align 8
  %240 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %241 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %240, i32 0, i32 0
  %242 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %243 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @le16_to_cpu(i32 %245)
  %247 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %248 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %251 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @ADU_MINOR_BASE, align 8
  %254 = sub nsw i64 %252, %253
  %255 = call i32 @dev_info(i32* %241, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %246, i32 %249, i64 %254)
  store i32 0, i32* %3, align 4
  br label %260

256:                                              ; preds = %228, %208, %196, %186, %175, %160, %118, %75, %51
  %257 = load %struct.adu_device*, %struct.adu_device** %7, align 8
  %258 = call i32 @adu_delete(%struct.adu_device* %257)
  %259 = load i32, i32* %8, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %256, %234, %20
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.adu_device* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_find_common_endpoints_reverse(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_endpoint_maxp(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.adu_device*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @adu_delete(%struct.adu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
