; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.wdm_device = type { i32, i32, i32 (%struct.usb_interface.0*, i32)*, i32, i8*, %struct.TYPE_6__*, %struct.usb_interface*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.usb_interface.0 = type opaque
%struct.TYPE_6__ = type { i32, i8*, i8*, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@wdm_rxwork = common dso_local global i32 0, align 4
@service_interrupt_work = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@wdm_int_callback = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CDC_GET_ENCAPSULATED_RESPONSE = common dso_local global i32 0, align 4
@wdm_in_callback = common dso_local global i32 0, align 4
@wdm_device_list_lock = common dso_local global i32 0, align 4
@wdm_device_list = common dso_local global i32 0, align 4
@wdm_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: USB WDM device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_endpoint_descriptor*, i32, i32 (%struct.usb_interface*, i32)*)* @wdm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdm_create(%struct.usb_interface* %0, %struct.usb_endpoint_descriptor* %1, i32 %2, i32 (%struct.usb_interface*, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.usb_interface*, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wdm_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %6, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (%struct.usb_interface*, i32)* %3, i32 (%struct.usb_interface*, i32)** %9, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.wdm_device* @kzalloc(i32 128, i32 %14)
  store %struct.wdm_device* %15, %struct.wdm_device** %11, align 8
  %16 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %17 = icmp ne %struct.wdm_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %262

19:                                               ; preds = %4
  %20 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %21 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %20, i32 0, i32 3
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %24 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %23, i32 0, i32 19
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %27 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %26, i32 0, i32 18
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %30 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %29, i32 0, i32 17
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %33 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %32, i32 0, i32 16
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %37 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %47 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %49 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %50 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %49, i32 0, i32 6
  store %struct.usb_interface* %48, %struct.usb_interface** %50, align 8
  %51 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %52 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %51, i32 0, i32 15
  %53 = load i32, i32* @wdm_rxwork, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %56 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %55, i32 0, i32 14
  %57 = load i32, i32* @service_interrupt_work, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %62 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %19
  br label %264

65:                                               ; preds = %19
  %66 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %67 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %66)
  %68 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %69 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @kmalloc(i32 4, i32 %70)
  %72 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %73 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %72, i32 0, i32 13
  store i8* %71, i8** %73, align 8
  %74 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %75 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %74, i32 0, i32 13
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %65
  br label %264

79:                                               ; preds = %65
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @kmalloc(i32 4, i32 %80)
  %82 = bitcast i8* %81 to %struct.TYPE_6__*
  %83 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %84 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %83, i32 0, i32 5
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %84, align 8
  %85 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %86 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %85, i32 0, i32 5
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = icmp ne %struct.TYPE_6__* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %264

90:                                               ; preds = %79
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i8* @usb_alloc_urb(i32 0, i32 %91)
  %93 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %94 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %93, i32 0, i32 10
  store i8* %92, i8** %94, align 8
  %95 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %96 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %95, i32 0, i32 10
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %90
  br label %264

100:                                              ; preds = %90
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8* @usb_alloc_urb(i32 0, i32 %101)
  %103 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %104 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  %105 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %106 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %105, i32 0, i32 7
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %100
  br label %264

110:                                              ; preds = %100
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i8* @usb_alloc_urb(i32 0, i32 %111)
  %113 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %114 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %113, i32 0, i32 12
  store i8* %112, i8** %114, align 8
  %115 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %116 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %115, i32 0, i32 12
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %110
  br label %264

120:                                              ; preds = %110
  %121 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %122 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i8* @kmalloc(i32 %123, i32 %124)
  %126 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %127 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %126, i32 0, i32 11
  store i8* %125, i8** %127, align 8
  %128 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %129 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %128, i32 0, i32 11
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %120
  br label %264

133:                                              ; preds = %120
  %134 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %135 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = call i8* @kmalloc(i32 %136, i32 %137)
  %139 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %140 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %139, i32 0, i32 9
  store i8* %138, i8** %140, align 8
  %141 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %142 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %141, i32 0, i32 9
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %133
  br label %264

146:                                              ; preds = %133
  %147 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %148 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call i8* @kmalloc(i32 %149, i32 %150)
  %152 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %153 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  %154 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %155 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %154, i32 0, i32 4
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %146
  br label %264

159:                                              ; preds = %146
  %160 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %161 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %160, i32 0, i32 10
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %164 = call i32 @interface_to_usbdev(%struct.usb_interface* %163)
  %165 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %166 = call i32 @interface_to_usbdev(%struct.usb_interface* %165)
  %167 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %168 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @usb_rcvintpipe(i32 %166, i32 %169)
  %171 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %172 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %171, i32 0, i32 9
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %175 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @wdm_int_callback, align 4
  %178 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %179 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %180 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @usb_fill_int_urb(i8* %162, i32 %164, i32 %170, i8* %173, i32 %176, i32 %177, %struct.wdm_device* %178, i32 %181)
  %183 = load i32, i32* @USB_DIR_IN, align 4
  %184 = load i32, i32* @USB_TYPE_CLASS, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %189 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %188, i32 0, i32 5
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  store i32 %187, i32* %191, align 8
  %192 = load i32, i32* @USB_CDC_GET_ENCAPSULATED_RESPONSE, align 4
  %193 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %194 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %193, i32 0, i32 5
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  store i32 %192, i32* %196, align 8
  %197 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %198 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %197, i32 0, i32 5
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  store i64 0, i64* %200, align 8
  %201 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %202 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %201, i32 0, i32 8
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %205 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %204, i32 0, i32 5
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  store i8* %203, i8** %207, align 8
  %208 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %209 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i8* @cpu_to_le16(i32 %210)
  %212 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %213 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %212, i32 0, i32 5
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  store i8* %211, i8** %215, align 8
  %216 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %217 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %216, i32 0, i32 7
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %220 = call i32 @interface_to_usbdev(%struct.usb_interface* %219)
  %221 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %222 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %221, i32 0, i32 6
  %223 = load %struct.usb_interface*, %struct.usb_interface** %222, align 8
  %224 = call i32 @interface_to_usbdev(%struct.usb_interface* %223)
  %225 = call i32 @usb_rcvctrlpipe(i32 %224, i32 0)
  %226 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %227 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %226, i32 0, i32 5
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = bitcast %struct.TYPE_6__* %228 to i8*
  %230 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %231 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %230, i32 0, i32 4
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %234 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @wdm_in_callback, align 4
  %237 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %238 = call i32 @usb_fill_control_urb(i8* %218, i32 %220, i32 %225, i8* %229, i8* %232, i32 %235, i32 %236, %struct.wdm_device* %237)
  %239 = load i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*, i32)** %9, align 8
  %240 = bitcast i32 (%struct.usb_interface*, i32)* %239 to i32 (%struct.usb_interface.0*, i32)*
  %241 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %242 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %241, i32 0, i32 2
  store i32 (%struct.usb_interface.0*, i32)* %240, i32 (%struct.usb_interface.0*, i32)** %242, align 8
  %243 = call i32 @spin_lock(i32* @wdm_device_list_lock)
  %244 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %245 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %244, i32 0, i32 3
  %246 = call i32 @list_add(i32* %245, i32* @wdm_device_list)
  %247 = call i32 @spin_unlock(i32* @wdm_device_list_lock)
  %248 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %249 = call i32 @usb_register_dev(%struct.usb_interface* %248, i32* @wdm_class)
  store i32 %249, i32* %10, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %159
  br label %264

253:                                              ; preds = %159
  %254 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %255 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %254, i32 0, i32 1
  %256 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %257 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @dev_name(i32 %258)
  %260 = call i32 @dev_info(i32* %255, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %253
  br label %262

262:                                              ; preds = %261, %18
  %263 = load i32, i32* %10, align 4
  store i32 %263, i32* %5, align 4
  br label %273

264:                                              ; preds = %252, %158, %145, %132, %119, %109, %99, %89, %78, %64
  %265 = call i32 @spin_lock(i32* @wdm_device_list_lock)
  %266 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %267 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %266, i32 0, i32 3
  %268 = call i32 @list_del(i32* %267)
  %269 = call i32 @spin_unlock(i32* @wdm_device_list_lock)
  %270 = load %struct.wdm_device*, %struct.wdm_device** %11, align 8
  %271 = call i32 @cleanup(%struct.wdm_device* %270)
  %272 = load i32, i32* %10, align 4
  store i32 %272, i32* %5, align 4
  br label %273

273:                                              ; preds = %264, %262
  %274 = load i32, i32* %5, align 4
  ret i32 %274
}

declare dso_local %struct.wdm_device* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i8*, i32, i32, i8*, i32, i32, %struct.wdm_device*, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_fill_control_urb(i8*, i32, i32, i8*, i8*, i32, i32, %struct.wdm_device*) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @cleanup(%struct.wdm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
