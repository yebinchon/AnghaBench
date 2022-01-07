; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c_chaoskey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c_chaoskey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.chaoskey = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"probe %s-%s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no IN endpoint found\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid size (%d)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CHAOSKEY_BUF_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"size reduced from %d to %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@chaos_read_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@ALEA_VENDOR_ID = common dso_local global i64 0, align 8
@chaoskey_class = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Unable to allocate minor number.\00", align 1
@chaoskey_driver = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@chaoskey_rng_read = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Unable to register with hwrng\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"chaoskey probe success, size %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @chaoskey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chaoskey_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.chaoskey*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %6, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %17, align 8
  store %struct.usb_host_interface* %18, %struct.usb_host_interface** %7, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (%struct.usb_interface*, i8*, ...) @usb_dbg(%struct.usb_interface* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %27)
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %30 = call i32 @usb_find_bulk_in_endpoint(%struct.usb_host_interface* %29, %struct.usb_endpoint_descriptor** %8)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = call i32 (%struct.usb_interface*, i8*, ...) @usb_dbg(%struct.usb_interface* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %3, align 4
  br label %222

37:                                               ; preds = %2
  %38 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %39 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %41 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (%struct.usb_interface*, i8*, ...) @usb_dbg(%struct.usb_interface* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %222

50:                                               ; preds = %37
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @CHAOSKEY_BUF_LEN, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @CHAOSKEY_BUF_LEN, align 4
  %58 = call i32 (%struct.usb_interface*, i8*, ...) @usb_dbg(%struct.usb_interface* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @CHAOSKEY_BUF_LEN, align 4
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %54, %50
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.chaoskey* @kzalloc(i32 80, i32 %61)
  store %struct.chaoskey* %62, %struct.chaoskey** %10, align 8
  %63 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %64 = icmp eq %struct.chaoskey* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %216

66:                                               ; preds = %60
  %67 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %68 = call i32 @usb_get_intf(%struct.usb_interface* %67)
  %69 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %70 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %69, i32 0, i32 12
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32* @kmalloc(i32 %71, i32 %72)
  %74 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %75 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %74, i32 0, i32 10
  store i32* %73, i32** %75, align 8
  %76 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %77 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %76, i32 0, i32 10
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %216

81:                                               ; preds = %66
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32 @usb_alloc_urb(i32 0, i32 %82)
  %84 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %85 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %84, i32 0, i32 11
  store i32 %83, i32* %85, align 8
  %86 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %87 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  br label %216

91:                                               ; preds = %81
  %92 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %93 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %96 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %96, i32 %97)
  %99 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %100 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %99, i32 0, i32 10
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @chaos_read_callback, align 4
  %104 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %105 = call i32 @usb_fill_bulk_urb(i32 %94, %struct.usb_device* %95, i32 %98, i32* %101, i32 %102, i32 %103, %struct.chaoskey* %104)
  %106 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %107 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %91
  %111 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %112 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %118 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %121 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32* @kasprintf(i32 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %119, i64 %122)
  %124 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %125 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %124, i32 0, i32 6
  store i32* %123, i32** %125, align 8
  %126 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %127 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %126, i32 0, i32 6
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %115
  br label %216

131:                                              ; preds = %115
  br label %132

132:                                              ; preds = %131, %110, %91
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %135 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %137 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @le16_to_cpu(i32 %139)
  %141 = load i64, i64* @ALEA_VENDOR_ID, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %132
  %144 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %145 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %132
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %149 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %151 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %150, i32 0, i32 3
  store i32 1, i32* %151, align 4
  %152 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %153 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %152, i32 0, i32 9
  %154 = call i32 @init_waitqueue_head(i32* %153)
  %155 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %156 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %155, i32 0, i32 8
  %157 = call i32 @mutex_init(i32* %156)
  %158 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %159 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %158, i32 0, i32 7
  %160 = call i32 @mutex_init(i32* %159)
  %161 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %162 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %163 = call i32 @usb_set_intfdata(%struct.usb_interface* %161, %struct.chaoskey* %162)
  %164 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %165 = call i32 @usb_register_dev(%struct.usb_interface* %164, i32* @chaoskey_class)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %146
  %169 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %170 = call i32 @usb_err(%struct.usb_interface* %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %216

171:                                              ; preds = %146
  %172 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %173 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %178 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  br label %182

180:                                              ; preds = %171
  %181 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chaoskey_driver, i32 0, i32 0), align 8
  br label %182

182:                                              ; preds = %180, %176
  %183 = phi i32* [ %179, %176 ], [ %181, %180 ]
  %184 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %185 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  store i32* %183, i32** %186, align 8
  %187 = load i32, i32* @chaoskey_rng_read, align 4
  %188 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %189 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %192 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  store i32 1024, i32* %193, align 8
  %194 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %195 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %194, i32 0, i32 5
  %196 = call i64 @hwrng_register(%struct.TYPE_5__* %195)
  %197 = icmp eq i64 %196, 0
  %198 = zext i1 %197 to i32
  %199 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %200 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 8
  %201 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %202 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %182
  %206 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %207 = call i32 @usb_err(%struct.usb_interface* %206, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %182
  %209 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %210 = call i32 @usb_enable_autosuspend(%struct.usb_device* %209)
  %211 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %212 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %213 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (%struct.usb_interface*, i8*, ...) @usb_dbg(%struct.usb_interface* %211, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %214)
  store i32 0, i32* %3, align 4
  br label %222

216:                                              ; preds = %168, %130, %90, %80, %65
  %217 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %218 = call i32 @usb_set_intfdata(%struct.usb_interface* %217, %struct.chaoskey* null)
  %219 = load %struct.chaoskey*, %struct.chaoskey** %10, align 8
  %220 = call i32 @chaoskey_free(%struct.chaoskey* %219)
  %221 = load i32, i32* %11, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %216, %208, %44, %33
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_dbg(%struct.usb_interface*, i8*, ...) #1

declare dso_local i32 @usb_find_bulk_in_endpoint(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local %struct.chaoskey* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32*, i32, i32, %struct.chaoskey*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32* @kasprintf(i32, i8*, i64, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.chaoskey*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_err(%struct.usb_interface*, i8*) #1

declare dso_local i64 @hwrng_register(%struct.TYPE_5__*) #1

declare dso_local i32 @usb_enable_autosuspend(%struct.usb_device*) #1

declare dso_local i32 @chaoskey_free(%struct.chaoskey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
