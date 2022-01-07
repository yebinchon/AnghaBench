; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_yurex.c_yurex_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_yurex.c_yurex_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_yurex = type { i32, i32, %struct.TYPE_7__*, i8*, i32, i32, %struct.TYPE_8__*, i8*, %struct.TYPE_9__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Could not find endpoints\0A\00", align 1
@YUREX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not allocate cntl_buffer\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@yurex_control_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not allocate int_buffer\0A\00", align 1
@yurex_interrupt = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not submitting URB\0A\00", align 1
@yurex_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"USB YUREX device now attached to Yurex #%d\0A\00", align 1
@yurex_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @yurex_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yurex_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_yurex*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @wait, align 4
  %14 = call i32 @DEFINE_WAIT(i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.usb_yurex* @kzalloc(i32 72, i32 %15)
  store %struct.usb_yurex* %16, %struct.usb_yurex** %6, align 8
  %17 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %18 = icmp ne %struct.usb_yurex* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %262

20:                                               ; preds = %2
  %21 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %22 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %21, i32 0, i32 1
  %23 = call i32 @kref_init(i32* %22)
  %24 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %25 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %24, i32 0, i32 12
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %28 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %27, i32 0, i32 11
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %31 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %30, i32 0, i32 10
  %32 = call i32 @init_waitqueue_head(i32* %31)
  %33 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %34 = call i32 @interface_to_usbdev(%struct.usb_interface* %33)
  %35 = call i32 @usb_get_dev(i32 %34)
  %36 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %37 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = call i32 @usb_get_intf(%struct.usb_interface* %38)
  %40 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %41 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 2
  %44 = load %struct.usb_host_interface*, %struct.usb_host_interface** %43, align 8
  store %struct.usb_host_interface* %44, %struct.usb_host_interface** %7, align 8
  %45 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %46 = call i32 @usb_find_int_in_endpoint(%struct.usb_host_interface* %45, %struct.usb_endpoint_descriptor** %8)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %20
  %50 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %51 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 1
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %9, align 4
  br label %262

54:                                               ; preds = %20
  %55 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %56 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %59 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @usb_alloc_urb(i32 0, i32 %60)
  %62 = bitcast i8* %61 to %struct.TYPE_8__*
  %63 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %64 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %63, i32 0, i32 6
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %64, align 8
  %65 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %66 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %65, i32 0, i32 6
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %54
  br label %262

70:                                               ; preds = %54
  %71 = load i32, i32* @YUREX_BUF_SIZE, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.TYPE_9__* @kmalloc(i32 %71, i32 %72)
  %74 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %75 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %74, i32 0, i32 8
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %75, align 8
  %76 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %77 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %76, i32 0, i32 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  br label %262

81:                                               ; preds = %70
  %82 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %83 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @YUREX_BUF_SIZE, align 4
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %88 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %87, i32 0, i32 6
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = call i8* @usb_alloc_coherent(i32 %84, i32 %85, i32 %86, i32* %90)
  %92 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %93 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %92, i32 0, i32 7
  store i8* %91, i8** %93, align 8
  %94 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %95 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %94, i32 0, i32 7
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %81
  %99 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %100 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %99, i32 0, i32 1
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %262

102:                                              ; preds = %81
  %103 = load i32, i32* @USB_DIR_OUT, align 4
  %104 = load i32, i32* @USB_TYPE_CLASS, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %109 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %108, i32 0, i32 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 8
  %112 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %113 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %114 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %113, i32 0, i32 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 4
  store i32 %112, i32* %116, align 8
  %117 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %118 = add nsw i32 %117, 1
  %119 = shl i32 %118, 8
  %120 = call i8* @cpu_to_le16(i32 %119)
  %121 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %122 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %121, i32 0, i32 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  store i8* %120, i8** %124, align 8
  %125 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %126 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @cpu_to_le16(i32 %128)
  %130 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %131 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %130, i32 0, i32 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store i8* %129, i8** %133, align 8
  %134 = load i32, i32* @YUREX_BUF_SIZE, align 4
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %137 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %136, i32 0, i32 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i8* %135, i8** %139, align 8
  %140 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %141 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %140, i32 0, i32 6
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %144 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %147 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @usb_sndctrlpipe(i32 %148, i32 0)
  %150 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %151 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %150, i32 0, i32 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = bitcast %struct.TYPE_9__* %152 to i8*
  %154 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %155 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %154, i32 0, i32 7
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* @YUREX_BUF_SIZE, align 4
  %158 = load i32, i32* @yurex_control_callback, align 4
  %159 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %160 = call i32 @usb_fill_control_urb(%struct.TYPE_8__* %142, i32 %145, i32 %149, i8* %153, i8* %156, i32 %157, i32 %158, %struct.usb_yurex* %159)
  %161 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %162 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %163 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %162, i32 0, i32 6
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %161
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call i8* @usb_alloc_urb(i32 0, i32 %168)
  %170 = bitcast i8* %169 to %struct.TYPE_7__*
  %171 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %172 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %171, i32 0, i32 2
  store %struct.TYPE_7__* %170, %struct.TYPE_7__** %172, align 8
  %173 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %174 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %173, i32 0, i32 2
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = icmp ne %struct.TYPE_7__* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %102
  br label %262

178:                                              ; preds = %102
  %179 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %180 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @YUREX_BUF_SIZE, align 4
  %183 = load i32, i32* @GFP_KERNEL, align 4
  %184 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %185 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %184, i32 0, i32 2
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = call i8* @usb_alloc_coherent(i32 %181, i32 %182, i32 %183, i32* %187)
  %189 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %190 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %192 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %191, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %199, label %195

195:                                              ; preds = %178
  %196 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %197 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %196, i32 0, i32 1
  %198 = call i32 @dev_err(i32* %197, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %262

199:                                              ; preds = %178
  %200 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %201 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %200, i32 0, i32 2
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %204 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %207 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %210 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @usb_rcvintpipe(i32 %208, i32 %211)
  %213 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %214 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %213, i32 0, i32 3
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* @YUREX_BUF_SIZE, align 4
  %217 = load i32, i32* @yurex_interrupt, align 4
  %218 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %219 = call i32 @usb_fill_int_urb(%struct.TYPE_7__* %202, i32 %205, i32 %212, i8* %215, i32 %216, i32 %217, %struct.usb_yurex* %218, i32 1)
  %220 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %221 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %222 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %221, i32 0, i32 2
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %220
  store i32 %226, i32* %224, align 4
  %227 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %228 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %227, i32 0, i32 2
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = load i32, i32* @GFP_KERNEL, align 4
  %231 = call i64 @usb_submit_urb(%struct.TYPE_7__* %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %199
  %234 = load i32, i32* @EIO, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %9, align 4
  %236 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %237 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %236, i32 0, i32 1
  %238 = call i32 @dev_err(i32* %237, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %262

239:                                              ; preds = %199
  %240 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %241 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %242 = call i32 @usb_set_intfdata(%struct.usb_interface* %240, %struct.usb_yurex* %241)
  %243 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %244 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %243, i32 0, i32 0
  store i32 -1, i32* %244, align 8
  %245 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %246 = call i32 @usb_register_dev(%struct.usb_interface* %245, i32* @yurex_class)
  store i32 %246, i32* %9, align 4
  %247 = load i32, i32* %9, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %239
  %250 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %251 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %250, i32 0, i32 1
  %252 = call i32 @dev_err(i32* %251, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %253 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %254 = call i32 @usb_set_intfdata(%struct.usb_interface* %253, %struct.usb_yurex* null)
  br label %262

255:                                              ; preds = %239
  %256 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %257 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %256, i32 0, i32 1
  %258 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %259 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @dev_info(i32* %257, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %260)
  store i32 0, i32* %3, align 4
  br label %272

262:                                              ; preds = %249, %233, %195, %177, %98, %80, %69, %49, %19
  %263 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %264 = icmp ne %struct.usb_yurex* %263, null
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = load %struct.usb_yurex*, %struct.usb_yurex** %6, align 8
  %267 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %266, i32 0, i32 1
  %268 = load i32, i32* @yurex_delete, align 4
  %269 = call i32 @kref_put(i32* %267, i32 %268)
  br label %270

270:                                              ; preds = %265, %262
  %271 = load i32, i32* %9, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %270, %255
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.usb_yurex* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_find_int_in_endpoint(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.TYPE_9__* @kmalloc(i32, i32) #1

declare dso_local i8* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_8__*, i32, i32, i8*, i8*, i32, i32, %struct.usb_yurex*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_7__*, i32, i32, i8*, i32, i32, %struct.usb_yurex*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_yurex*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
