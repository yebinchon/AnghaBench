; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_legousbtower.c_tower_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_legousbtower.c_tower_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device, i64, i32 }
%struct.device = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.lego_usb_tower = type { i64, %struct.TYPE_5__*, i64, %struct.TYPE_4__*, i64, i32*, i32*, i32*, i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.tower_get_version_reply = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@packet_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"interrupt endpoints not found\0A\00", align 1
@read_buffer_size = common dso_local global i32 0, align 4
@write_buffer_size = common dso_local global i32 0, align 4
@interrupt_in_interval = common dso_local global i64 0, align 8
@interrupt_out_interval = common dso_local global i64 0, align 8
@LEGO_USB_TOWER_REQUEST_GET_VERSION = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"get version request failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"LEGO USB Tower firmware version is %d.%d build %d\0A\00", align 1
@tower_class = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"LEGO USB Tower #%d now attached to major %d minor %d\0A\00", align 1
@LEGO_USB_TOWER_MINOR_BASE = common dso_local global i64 0, align 8
@USB_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @tower_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tower_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.lego_usb_tower*, align 8
  %9 = alloca %struct.tower_get_version_reply*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %7, align 8
  store %struct.lego_usb_tower* null, %struct.lego_usb_tower** %8, align 8
  store %struct.tower_get_version_reply* null, %struct.tower_get_version_reply** %9, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 168, i32 %18)
  %20 = bitcast i8* %19 to %struct.lego_usb_tower*
  store %struct.lego_usb_tower* %20, %struct.lego_usb_tower** %8, align 8
  %21 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %22 = icmp ne %struct.lego_usb_tower* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %256

24:                                               ; preds = %2
  %25 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %26 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %25, i32 0, i32 23
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %29 = call i32 @usb_get_dev(%struct.usb_device* %28)
  %30 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %31 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %30, i32 0, i32 22
  store i32 %29, i32* %31, align 8
  %32 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %33 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %32, i32 0, i32 21
  store i64 0, i64* %33, align 8
  %34 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %35 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %34, i32 0, i32 20
  store i64 0, i64* %35, align 8
  %36 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %37 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %36, i32 0, i32 9
  store i32* null, i32** %37, align 8
  %38 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %39 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %38, i32 0, i32 19
  store i64 0, i64* %39, align 8
  %40 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %41 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %40, i32 0, i32 18
  store i64 0, i64* %41, align 8
  %42 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %43 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %42, i32 0, i32 17
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load i32, i32* @packet_timeout, align 4
  %46 = call i32 @msecs_to_jiffies(i32 %45)
  %47 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %48 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %47, i32 0, i32 16
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @jiffies, align 4
  %50 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %51 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %50, i32 0, i32 15
  store i32 %49, i32* %51, align 8
  %52 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %53 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %52, i32 0, i32 14
  %54 = call i32 @init_waitqueue_head(i32* %53)
  %55 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %56 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %55, i32 0, i32 13
  %57 = call i32 @init_waitqueue_head(i32* %56)
  %58 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %59 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %58, i32 0, i32 8
  store i32* null, i32** %59, align 8
  %60 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %61 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %60, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %61, align 8
  %62 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %63 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %62, i32 0, i32 7
  store i32* null, i32** %63, align 8
  %64 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %65 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %64, i32 0, i32 12
  store i64 0, i64* %65, align 8
  %66 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %67 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %66, i32 0, i32 11
  store i64 0, i64* %67, align 8
  %68 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %69 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %68, i32 0, i32 6
  store i32* null, i32** %69, align 8
  %70 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %71 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %70, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %71, align 8
  %72 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %73 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %72, i32 0, i32 5
  store i32* null, i32** %73, align 8
  %74 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %75 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %74, i32 0, i32 10
  store i64 0, i64* %75, align 8
  %76 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %77 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %80 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %79, i32 0, i32 3
  %81 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %82 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %81, i32 0, i32 1
  %83 = call i32 @usb_find_common_endpoints_reverse(i32 %78, i32* null, i32* null, %struct.TYPE_4__** %80, %struct.TYPE_5__** %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %24
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %10, align 4
  br label %260

90:                                               ; preds = %24
  %91 = load i32, i32* @read_buffer_size, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @kmalloc(i32 %91, i32 %92)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %96 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %95, i32 0, i32 9
  store i32* %94, i32** %96, align 8
  %97 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %98 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %97, i32 0, i32 9
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  br label %260

102:                                              ; preds = %90
  %103 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %104 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = call i32 @usb_endpoint_maxp(%struct.TYPE_4__* %105)
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i8* @kmalloc(i32 %106, i32 %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %111 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %110, i32 0, i32 8
  store i32* %109, i32** %111, align 8
  %112 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %113 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %112, i32 0, i32 8
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %102
  br label %260

117:                                              ; preds = %102
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i8* @usb_alloc_urb(i32 0, i32 %118)
  %120 = bitcast i8* %119 to i32*
  %121 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %122 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %121, i32 0, i32 7
  store i32* %120, i32** %122, align 8
  %123 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %124 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %123, i32 0, i32 7
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %117
  br label %260

128:                                              ; preds = %117
  %129 = load i32, i32* @write_buffer_size, align 4
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @kmalloc(i32 %129, i32 %130)
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %134 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %133, i32 0, i32 6
  store i32* %132, i32** %134, align 8
  %135 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %136 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %128
  br label %260

140:                                              ; preds = %128
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call i8* @usb_alloc_urb(i32 0, i32 %141)
  %143 = bitcast i8* %142 to i32*
  %144 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %145 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %144, i32 0, i32 5
  store i32* %143, i32** %145, align 8
  %146 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %147 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %140
  br label %260

151:                                              ; preds = %140
  %152 = load i64, i64* @interrupt_in_interval, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i64, i64* @interrupt_in_interval, align 8
  br label %162

156:                                              ; preds = %151
  %157 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %158 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %157, i32 0, i32 3
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  br label %162

162:                                              ; preds = %156, %154
  %163 = phi i64 [ %155, %154 ], [ %161, %156 ]
  %164 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %165 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %164, i32 0, i32 4
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* @interrupt_out_interval, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i64, i64* @interrupt_out_interval, align 8
  br label %176

170:                                              ; preds = %162
  %171 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %172 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %171, i32 0, i32 1
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  br label %176

176:                                              ; preds = %170, %168
  %177 = phi i64 [ %169, %168 ], [ %175, %170 ]
  %178 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %179 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  %180 = load i32, i32* @GFP_KERNEL, align 4
  %181 = call i8* @kmalloc(i32 16, i32 %180)
  %182 = bitcast i8* %181 to %struct.tower_get_version_reply*
  store %struct.tower_get_version_reply* %182, %struct.tower_get_version_reply** %9, align 8
  %183 = load %struct.tower_get_version_reply*, %struct.tower_get_version_reply** %9, align 8
  %184 = icmp ne %struct.tower_get_version_reply* %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %176
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %10, align 4
  br label %260

188:                                              ; preds = %176
  %189 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %190 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %191 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %190, i32 0)
  %192 = load i32, i32* @LEGO_USB_TOWER_REQUEST_GET_VERSION, align 4
  %193 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %194 = load i32, i32* @USB_DIR_IN, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.tower_get_version_reply*, %struct.tower_get_version_reply** %9, align 8
  %199 = call i32 @usb_control_msg(%struct.usb_device* %189, i32 %191, i32 %192, i32 %197, i32 0, i32 0, %struct.tower_get_version_reply* %198, i32 16, i32 1000)
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = icmp ne i64 %201, 16
  br i1 %202, label %203, label %214

203:                                              ; preds = %188
  %204 = load i32, i32* %11, align 4
  %205 = icmp sge i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* @EIO, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %11, align 4
  br label %209

209:                                              ; preds = %206, %203
  %210 = load %struct.device*, %struct.device** %6, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %210, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* %11, align 4
  store i32 %213, i32* %10, align 4
  br label %260

214:                                              ; preds = %188
  %215 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %216 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %215, i32 0, i32 0
  %217 = load %struct.tower_get_version_reply*, %struct.tower_get_version_reply** %9, align 8
  %218 = getelementptr inbounds %struct.tower_get_version_reply, %struct.tower_get_version_reply* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.tower_get_version_reply*, %struct.tower_get_version_reply** %9, align 8
  %221 = getelementptr inbounds %struct.tower_get_version_reply, %struct.tower_get_version_reply* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.tower_get_version_reply*, %struct.tower_get_version_reply** %9, align 8
  %224 = getelementptr inbounds %struct.tower_get_version_reply, %struct.tower_get_version_reply* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i64 @le16_to_cpu(i32 %225)
  %227 = call i32 @dev_info(%struct.device* %216, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %219, i32 %222, i64 %226)
  %228 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %229 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %230 = call i32 @usb_set_intfdata(%struct.usb_interface* %228, %struct.lego_usb_tower* %229)
  %231 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %232 = call i32 @usb_register_dev(%struct.usb_interface* %231, i32* @tower_class)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %214
  %236 = load %struct.device*, %struct.device** %6, align 8
  %237 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %236, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %260

238:                                              ; preds = %214
  %239 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %240 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %243 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %242, i32 0, i32 0
  store i64 %241, i64* %243, align 8
  %244 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %245 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %244, i32 0, i32 0
  %246 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %247 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @LEGO_USB_TOWER_MINOR_BASE, align 8
  %250 = sub nsw i64 %248, %249
  %251 = load i32, i32* @USB_MAJOR, align 4
  %252 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %253 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @dev_info(%struct.device* %245, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %250, i32 %251, i64 %254)
  br label %256

256:                                              ; preds = %238, %23
  %257 = load %struct.tower_get_version_reply*, %struct.tower_get_version_reply** %9, align 8
  %258 = call i32 @kfree(%struct.tower_get_version_reply* %257)
  %259 = load i32, i32* %10, align 4
  store i32 %259, i32* %3, align 4
  br label %266

260:                                              ; preds = %235, %209, %185, %150, %139, %127, %116, %101, %86
  %261 = load %struct.tower_get_version_reply*, %struct.tower_get_version_reply** %9, align 8
  %262 = call i32 @kfree(%struct.tower_get_version_reply* %261)
  %263 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %8, align 8
  %264 = call i32 @tower_delete(%struct.lego_usb_tower* %263)
  %265 = load i32, i32* %10, align 4
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %260, %256
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_find_common_endpoints_reverse(i32, i32*, i32*, %struct.TYPE_4__**, %struct.TYPE_5__**) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.TYPE_4__*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.tower_get_version_reply*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i32, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.lego_usb_tower*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @kfree(%struct.tower_get_version_reply*) #1

declare dso_local i32 @tower_delete(%struct.lego_usb_tower*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
