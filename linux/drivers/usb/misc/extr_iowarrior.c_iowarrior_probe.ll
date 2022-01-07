; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_iowarrior.c_iowarrior_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_iowarrior.c_iowarrior_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i64, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.iowarrior = type { i64, i32, i32, i64, i32, %struct.TYPE_12__*, i32, %struct.TYPE_13__*, i32, %struct.usb_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"no interrupt-in endpoint found\0A\00", align 1
@USB_DEVICE_ID_CODEMERCS_IOW56 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"no interrupt-out endpoint found\0A\00", align 1
@iowarrior_callback = common dso_local global i32 0, align 4
@MAX_INTERRUPT_BUFFER = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@iowarrior_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"IOWarrior product=0x%x, serial=%s interface=%d now attached to iowarrior%d\0A\00", align 1
@IOWARRIOR_MINOR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @iowarrior_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iowarrior_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.iowarrior*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  store %struct.iowarrior* null, %struct.iowarrior** %7, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.iowarrior* @kzalloc(i32 112, i32 %15)
  store %struct.iowarrior* %16, %struct.iowarrior** %7, align 8
  %17 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %18 = icmp ne %struct.iowarrior* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %271

21:                                               ; preds = %2
  %22 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %23 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %22, i32 0, i32 19
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %26 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %25, i32 0, i32 18
  %27 = call i32 @atomic_set(i32* %26, i32 0)
  %28 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %29 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %28, i32 0, i32 17
  %30 = call i32 @atomic_set(i32* %29, i32 0)
  %31 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %32 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %31, i32 0, i32 16
  %33 = call i32 @atomic_set(i32* %32, i32 0)
  %34 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %35 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %34, i32 0, i32 15
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %38 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %37, i32 0, i32 14
  %39 = call i32 @atomic_set(i32* %38, i32 0)
  %40 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %41 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %40, i32 0, i32 13
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %44 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %45 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %44, i32 0, i32 9
  store %struct.usb_device* %43, %struct.usb_device** %45, align 8
  %46 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %47 = call %struct.TYPE_12__* @usb_get_intf(%struct.usb_interface* %46)
  %48 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %49 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %48, i32 0, i32 5
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %49, align 8
  %50 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %51 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 2
  %52 = load %struct.usb_host_interface*, %struct.usb_host_interface** %51, align 8
  store %struct.usb_host_interface* %52, %struct.usb_host_interface** %8, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @le16_to_cpu(i32 %56)
  %58 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %59 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %61 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %60, i32 0, i32 12
  %62 = call i32 @init_usb_anchor(i32* %61)
  %63 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %64 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %65 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %64, i32 0, i32 7
  %66 = call i32 @usb_find_last_int_in_endpoint(%struct.usb_host_interface* %63, %struct.TYPE_13__** %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %21
  %70 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %71 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %9, align 4
  br label %267

74:                                               ; preds = %21
  %75 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %76 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @USB_DEVICE_ID_CODEMERCS_IOW56, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %82 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %83 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %82, i32 0, i32 11
  %84 = call i32 @usb_find_last_int_out_endpoint(%struct.usb_host_interface* %81, i32* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %89 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %9, align 4
  br label %267

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %74
  %94 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %95 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %94, i32 0, i32 7
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = call i32 @usb_endpoint_maxp(%struct.TYPE_13__* %96)
  %98 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %99 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %101 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %100, i32 0, i32 5
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %93
  %110 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %111 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @USB_DEVICE_ID_CODEMERCS_IOW56, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %117 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %116, i32 0, i32 1
  store i32 7, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %109, %93
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i32 @usb_alloc_urb(i32 0, i32 %119)
  %121 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %122 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %121, i32 0, i32 10
  store i32 %120, i32* %122, align 8
  %123 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %124 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %123, i32 0, i32 10
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %118
  br label %267

128:                                              ; preds = %118
  %129 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %130 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i32 @kmalloc(i32 %131, i32 %132)
  %134 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %135 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %134, i32 0, i32 8
  store i32 %133, i32* %135, align 8
  %136 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %137 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %128
  br label %267

141:                                              ; preds = %128
  %142 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %143 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %146 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %145, i32 0, i32 9
  %147 = load %struct.usb_device*, %struct.usb_device** %146, align 8
  %148 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %149 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %148, i32 0, i32 9
  %150 = load %struct.usb_device*, %struct.usb_device** %149, align 8
  %151 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %152 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %151, i32 0, i32 7
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @usb_rcvintpipe(%struct.usb_device* %150, i32 %155)
  %157 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %158 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %161 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @iowarrior_callback, align 4
  %164 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %165 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %166 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %165, i32 0, i32 7
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @usb_fill_int_urb(i32 %144, %struct.usb_device* %147, i32 %156, i32 %159, i32 %162, i32 %163, %struct.iowarrior* %164, i32 %169)
  %171 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %172 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  %175 = load i32, i32* @MAX_INTERRUPT_BUFFER, align 4
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = call i32 @kmalloc_array(i32 %174, i32 %175, i32 %176)
  %178 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %179 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %178, i32 0, i32 6
  store i32 %177, i32* %179, align 8
  %180 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %181 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %141
  br label %267

185:                                              ; preds = %141
  %186 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %187 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @memset(i32 %188, i32 0, i32 4)
  %190 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %191 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %192 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %196 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @usb_string(%struct.usb_device* %190, i32 %194, i32 %197, i32 4)
  %199 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %200 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @strlen(i32 %201)
  %203 = icmp ne i32 %202, 8
  br i1 %203, label %204, label %209

204:                                              ; preds = %185
  %205 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %206 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @memset(i32 %207, i32 0, i32 4)
  br label %209

209:                                              ; preds = %204, %185
  %210 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %211 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %210, i32 0, i32 5
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %209
  %220 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %221 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %222 = call i32 @usb_sndctrlpipe(%struct.usb_device* %221, i32 0)
  %223 = load i32, i32* @USB_TYPE_CLASS, align 4
  %224 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %227 = call i32 @usb_control_msg(%struct.usb_device* %220, i32 %222, i32 10, i32 %225, i32 0, i32 0, i32* null, i32 0, i32 %226)
  br label %228

228:                                              ; preds = %219, %209
  %229 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %230 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %229, i32 0, i32 2
  store i32 1, i32* %230, align 4
  %231 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %232 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %233 = call i32 @usb_set_intfdata(%struct.usb_interface* %231, %struct.iowarrior* %232)
  %234 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %235 = call i32 @usb_register_dev(%struct.usb_interface* %234, i32* @iowarrior_class)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %228
  %239 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %240 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %239, i32 0, i32 0
  %241 = call i32 @dev_err(i32* %240, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %267

242:                                              ; preds = %228
  %243 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %244 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %247 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %246, i32 0, i32 3
  store i64 %245, i64* %247, align 8
  %248 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %249 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %248, i32 0, i32 0
  %250 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %251 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %254 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %257 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %261 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @IOWARRIOR_MINOR_BASE, align 8
  %264 = sub nsw i64 %262, %263
  %265 = call i32 @dev_info(i32* %249, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i64 %252, i32 %255, i32 %259, i64 %264)
  %266 = load i32, i32* %9, align 4
  store i32 %266, i32* %3, align 4
  br label %271

267:                                              ; preds = %238, %184, %140, %127, %87, %69
  %268 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %269 = call i32 @iowarrior_delete(%struct.iowarrior* %268)
  %270 = load i32, i32* %9, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %267, %242, %19
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.iowarrior* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.TYPE_12__* @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @usb_find_last_int_in_endpoint(%struct.usb_host_interface*, %struct.TYPE_13__**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_find_last_int_out_endpoint(%struct.usb_host_interface*, i32*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.TYPE_13__*) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.iowarrior*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.iowarrior*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i32, i32, i64) #1

declare dso_local i32 @iowarrior_delete(%struct.iowarrior*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
