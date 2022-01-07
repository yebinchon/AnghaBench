; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ldusb.c_ld_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ldusb.c_ld_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i64, i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, i32, i32 }
%struct.ld_usb = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_6__*, i64, i8*, i32, i8*, i8*, i8*, i32, i32, i32, %struct.usb_interface*, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_VENDOR_ID_LD = common dso_local global i32 0, align 4
@USB_DEVICE_ID_LD_CASSY = common dso_local global i32 0, align 4
@USB_DEVICE_ID_LD_COM3LAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Interrupt in endpoint not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Interrupt out endpoint not found (using control endpoint instead)\0A\00", align 1
@ring_buffer_size = common dso_local global i32 0, align 4
@write_buffer_size = common dso_local global i32 0, align 4
@min_interrupt_in_interval = common dso_local global i64 0, align 8
@min_interrupt_out_interval = common dso_local global i64 0, align 8
@ld_usb_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"LD USB Device #%d now attached to major %d minor %d\0A\00", align 1
@USB_LD_MINOR_BASE = common dso_local global i64 0, align 8
@USB_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ld_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ld_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.ld_usb*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  store %struct.ld_usb* null, %struct.ld_usb** %7, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ld_usb* @kzalloc(i32 112, i32 %16)
  store %struct.ld_usb* %17, %struct.ld_usb** %7, align 8
  %18 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %19 = icmp ne %struct.ld_usb* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %265

21:                                               ; preds = %2
  %22 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %23 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %22, i32 0, i32 15
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %26 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %25, i32 0, i32 14
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %30 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %29, i32 0, i32 13
  store %struct.usb_interface* %28, %struct.usb_interface** %30, align 8
  %31 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %32 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %31, i32 0, i32 12
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %35 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %34, i32 0, i32 11
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = load i32, i32* @USB_VENDOR_ID_LD, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %21
  %45 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = load i32, i32* @USB_DEVICE_ID_LD_CASSY, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = load i32, i32* @USB_DEVICE_ID_LD_COM3LAB, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %52, %44
  %61 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %62 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = icmp sle i32 %65, 259
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kmalloc(i32 256, i32 %68)
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %267

73:                                               ; preds = %67
  %74 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @usb_string(%struct.usb_device* %74, i32 255, i8* %75, i32 256)
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @kfree(i8* %77)
  br label %79

79:                                               ; preds = %73, %60, %52, %21
  %80 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %81 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %80, i32 0, i32 2
  %82 = load %struct.usb_host_interface*, %struct.usb_host_interface** %81, align 8
  store %struct.usb_host_interface* %82, %struct.usb_host_interface** %8, align 8
  %83 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %84 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %85 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %84, i32 0, i32 3
  %86 = call i32 @usb_find_last_int_in_endpoint(%struct.usb_host_interface* %83, %struct.TYPE_6__** %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %79
  %90 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %91 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %90, i32 0, i32 1
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %10, align 4
  br label %267

94:                                               ; preds = %79
  %95 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %96 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %97 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %96, i32 0, i32 1
  %98 = call i32 @usb_find_last_int_out_endpoint(%struct.usb_host_interface* %95, %struct.TYPE_6__** %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %103 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %102, i32 0, i32 1
  %104 = call i32 @dev_warn(i32* %103, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %94
  %106 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %107 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %106, i32 0, i32 3
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = call i8* @usb_endpoint_maxp(%struct.TYPE_6__* %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %112 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @ring_buffer_size, align 4
  %114 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %115 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = add i64 8, %117
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i32 @kcalloc(i32 %113, i32 %119, i32 %120)
  %122 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %123 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %122, i32 0, i32 10
  store i32 %121, i32* %123, align 8
  %124 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %125 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %105
  br label %267

129:                                              ; preds = %105
  %130 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %131 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call i8* @kmalloc(i32 %132, i32 %133)
  %135 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %136 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %135, i32 0, i32 9
  store i8* %134, i8** %136, align 8
  %137 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %138 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %137, i32 0, i32 9
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %129
  br label %267

142:                                              ; preds = %129
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call i8* @usb_alloc_urb(i32 0, i32 %143)
  %145 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %146 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %145, i32 0, i32 8
  store i8* %144, i8** %146, align 8
  %147 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %148 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %147, i32 0, i32 8
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %142
  br label %267

152:                                              ; preds = %142
  %153 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %154 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = icmp ne %struct.TYPE_6__* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %159 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %158, i32 0, i32 1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = call i8* @usb_endpoint_maxp(%struct.TYPE_6__* %160)
  br label %167

162:                                              ; preds = %152
  %163 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %164 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  br label %167

167:                                              ; preds = %162, %157
  %168 = phi i8* [ %161, %157 ], [ %166, %162 ]
  %169 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %170 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %169, i32 0, i32 7
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* @write_buffer_size, align 4
  %172 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %173 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %172, i32 0, i32 7
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call i32 @kmalloc_array(i32 %171, i8* %174, i32 %175)
  %177 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %178 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 8
  %179 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %180 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %167
  br label %267

184:                                              ; preds = %167
  %185 = load i32, i32* @GFP_KERNEL, align 4
  %186 = call i8* @usb_alloc_urb(i32 0, i32 %185)
  %187 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %188 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %187, i32 0, i32 5
  store i8* %186, i8** %188, align 8
  %189 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %190 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %189, i32 0, i32 5
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %184
  br label %267

194:                                              ; preds = %184
  %195 = load i64, i64* @min_interrupt_in_interval, align 8
  %196 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %197 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %196, i32 0, i32 3
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %195, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %194
  %203 = load i64, i64* @min_interrupt_in_interval, align 8
  br label %210

204:                                              ; preds = %194
  %205 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %206 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %205, i32 0, i32 3
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  br label %210

210:                                              ; preds = %204, %202
  %211 = phi i64 [ %203, %202 ], [ %209, %204 ]
  %212 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %213 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %212, i32 0, i32 4
  store i64 %211, i64* %213, align 8
  %214 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %215 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %214, i32 0, i32 1
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = icmp ne %struct.TYPE_6__* %216, null
  br i1 %217, label %218, label %238

218:                                              ; preds = %210
  %219 = load i64, i64* @min_interrupt_out_interval, align 8
  %220 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %221 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %220, i32 0, i32 1
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp sgt i64 %219, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %218
  %227 = load i64, i64* @min_interrupt_out_interval, align 8
  br label %234

228:                                              ; preds = %218
  %229 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %230 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %229, i32 0, i32 1
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  br label %234

234:                                              ; preds = %228, %226
  %235 = phi i64 [ %227, %226 ], [ %233, %228 ]
  %236 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %237 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %236, i32 0, i32 2
  store i64 %235, i64* %237, align 8
  br label %238

238:                                              ; preds = %234, %210
  %239 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %240 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %241 = call i32 @usb_set_intfdata(%struct.usb_interface* %239, %struct.ld_usb* %240)
  %242 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %243 = call i32 @usb_register_dev(%struct.usb_interface* %242, i32* @ld_usb_class)
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %238
  %247 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %248 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %247, i32 0, i32 1
  %249 = call i32 @dev_err(i32* %248, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %250 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %251 = call i32 @usb_set_intfdata(%struct.usb_interface* %250, %struct.ld_usb* null)
  br label %267

252:                                              ; preds = %238
  %253 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %254 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %253, i32 0, i32 1
  %255 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %256 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @USB_LD_MINOR_BASE, align 8
  %259 = sub nsw i64 %257, %258
  %260 = load i32, i32* @USB_MAJOR, align 4
  %261 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %262 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @dev_info(i32* %254, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %259, i32 %260, i64 %263)
  br label %265

265:                                              ; preds = %252, %20
  %266 = load i32, i32* %10, align 4
  store i32 %266, i32* %3, align 4
  br label %271

267:                                              ; preds = %246, %193, %183, %151, %141, %128, %89, %72
  %268 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %269 = call i32 @ld_usb_delete(%struct.ld_usb* %268)
  %270 = load i32, i32* %10, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %267, %265
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.ld_usb* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_find_last_int_in_endpoint(%struct.usb_host_interface*, %struct.TYPE_6__**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_find_last_int_out_endpoint(%struct.usb_host_interface*, %struct.TYPE_6__**) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i8* @usb_endpoint_maxp(%struct.TYPE_6__*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kmalloc_array(i32, i8*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ld_usb*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i32, i64) #1

declare dso_local i32 @ld_usb_delete(%struct.ld_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
