; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.urb = type { i32, i8*, %struct.cvmx_usb_transaction*, i32, %struct.TYPE_6__*, i32, %struct.usb_device*, i64, %struct.usb_host_endpoint* }
%struct.cvmx_usb_transaction = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.usb_device = type { i32, i32, i32, %struct.usb_device* }
%struct.usb_host_endpoint = type { %struct.cvmx_usb_pipe*, %struct.TYPE_5__ }
%struct.cvmx_usb_pipe = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.octeon_hcd = type { i32 }
%struct.cvmx_usb_iso_packet = type { i32, i32, i32 }

@CVMX_USB_TRANSFER_ISOCHRONOUS = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_INTERRUPT = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_CONTROL = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_BULK = common dso_local global i32 0, align 4
@CVMX_USB_SPEED_LOW = common dso_local global i32 0, align 4
@CVMX_USB_SPEED_FULL = common dso_local global i32 0, align 4
@CVMX_USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@CVMX_USB_DIRECTION_IN = common dso_local global i32 0, align 4
@CVMX_USB_DIRECTION_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to create pipe\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Submit isochronous to %d.%d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CVMX_USB_STATUS_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Submit interrupt to %d.%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Submit control to %d.%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Submit bulk to %d.%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Failed to submit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @octeon_usb_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_usb_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.octeon_hcd*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.cvmx_usb_transaction*, align 8
  %11 = alloca %struct.cvmx_usb_pipe*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cvmx_usb_iso_packet*, align 8
  %14 = alloca %struct.usb_host_endpoint*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.usb_device*, align 8
  %21 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %23 = call %struct.octeon_hcd* @hcd_to_octeon(%struct.usb_hcd* %22)
  store %struct.octeon_hcd* %23, %struct.octeon_hcd** %8, align 8
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %25 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.device*, %struct.device** %26, align 8
  store %struct.device* %27, %struct.device** %9, align 8
  store %struct.cvmx_usb_transaction* null, %struct.cvmx_usb_transaction** %10, align 8
  %28 = load %struct.urb*, %struct.urb** %6, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 8
  %30 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %29, align 8
  store %struct.usb_host_endpoint* %30, %struct.usb_host_endpoint** %14, align 8
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %34 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %33, i32 0, i32 0
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = call i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd* %37, %struct.urb* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %44 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %43, i32 0, i32 0
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %4, align 4
  br label %330

48:                                               ; preds = %3
  %49 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %50 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %49, i32 0, i32 0
  %51 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %50, align 8
  %52 = icmp ne %struct.cvmx_usb_pipe* %51, null
  br i1 %52, label %174, label %53

53:                                               ; preds = %48
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %54 = load %struct.urb*, %struct.urb** %6, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @usb_pipetype(i32 %56)
  switch i32 %57, label %64 [
    i32 130, label %58
    i32 131, label %60
    i32 132, label %62
  ]

58:                                               ; preds = %53
  %59 = load i32, i32* @CVMX_USB_TRANSFER_ISOCHRONOUS, align 4
  store i32 %59, i32* %16, align 4
  br label %66

60:                                               ; preds = %53
  %61 = load i32, i32* @CVMX_USB_TRANSFER_INTERRUPT, align 4
  store i32 %61, i32* %16, align 4
  br label %66

62:                                               ; preds = %53
  %63 = load i32, i32* @CVMX_USB_TRANSFER_CONTROL, align 4
  store i32 %63, i32* %16, align 4
  br label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @CVMX_USB_TRANSFER_BULK, align 4
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %64, %62, %60, %58
  %67 = load %struct.urb*, %struct.urb** %6, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 6
  %69 = load %struct.usb_device*, %struct.usb_device** %68, align 8
  %70 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %76 [
    i32 128, label %72
    i32 129, label %74
  ]

72:                                               ; preds = %66
  %73 = load i32, i32* @CVMX_USB_SPEED_LOW, align 4
  store i32 %73, i32* %17, align 4
  br label %78

74:                                               ; preds = %66
  %75 = load i32, i32* @CVMX_USB_SPEED_FULL, align 4
  store i32 %75, i32* %17, align 4
  br label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @CVMX_USB_SPEED_HIGH, align 4
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %76, %74, %72
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @CVMX_USB_SPEED_HIGH, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %78
  %83 = load %struct.urb*, %struct.urb** %6, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 6
  %85 = load %struct.usb_device*, %struct.usb_device** %84, align 8
  store %struct.usb_device* %85, %struct.usb_device** %20, align 8
  br label %86

86:                                               ; preds = %109, %82
  %87 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  %88 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %87, i32 0, i32 3
  %89 = load %struct.usb_device*, %struct.usb_device** %88, align 8
  %90 = icmp ne %struct.usb_device* %89, null
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  %93 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %92, i32 0, i32 3
  %94 = load %struct.usb_device*, %struct.usb_device** %93, align 8
  %95 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @USB_SPEED_HIGH, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %91
  %101 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  %102 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %101, i32 0, i32 3
  %103 = load %struct.usb_device*, %struct.usb_device** %102, align 8
  %104 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %18, align 4
  %106 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  %107 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %19, align 4
  br label %113

109:                                              ; preds = %91
  %110 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  %111 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %110, i32 0, i32 3
  %112 = load %struct.usb_device*, %struct.usb_device** %111, align 8
  store %struct.usb_device* %112, %struct.usb_device** %20, align 8
  br label %86

113:                                              ; preds = %100, %86
  br label %114

114:                                              ; preds = %113, %78
  %115 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %116 = load %struct.urb*, %struct.urb** %6, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @usb_pipedevice(i32 %118)
  %120 = load %struct.urb*, %struct.urb** %6, align 8
  %121 = getelementptr inbounds %struct.urb, %struct.urb* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @usb_pipeendpoint(i32 %122)
  %124 = load i32, i32* %17, align 4
  %125 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %126 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @le16_to_cpu(i32 %128)
  %130 = and i32 %129, 2047
  %131 = load i32, i32* %16, align 4
  %132 = load %struct.urb*, %struct.urb** %6, align 8
  %133 = getelementptr inbounds %struct.urb, %struct.urb* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @usb_pipein(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %114
  %138 = load i32, i32* @CVMX_USB_DIRECTION_IN, align 4
  br label %141

139:                                              ; preds = %114
  %140 = load i32, i32* @CVMX_USB_DIRECTION_OUT, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  %143 = load %struct.urb*, %struct.urb** %6, align 8
  %144 = getelementptr inbounds %struct.urb, %struct.urb* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %147 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @le16_to_cpu(i32 %149)
  %151 = ashr i32 %150, 11
  %152 = and i32 %151, 3
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %19, align 4
  %155 = call %struct.cvmx_usb_pipe* @cvmx_usb_open_pipe(%struct.octeon_hcd* %115, i32 %119, i32 %123, i32 %124, i32 %130, i32 %131, i32 %142, i32 %145, i32 %152, i32 %153, i32 %154)
  store %struct.cvmx_usb_pipe* %155, %struct.cvmx_usb_pipe** %11, align 8
  %156 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %11, align 8
  %157 = icmp ne %struct.cvmx_usb_pipe* %156, null
  br i1 %157, label %170, label %158

158:                                              ; preds = %141
  %159 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %160 = load %struct.urb*, %struct.urb** %6, align 8
  %161 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %159, %struct.urb* %160)
  %162 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %163 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %162, i32 0, i32 0
  %164 = load i64, i64* %12, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32* %163, i64 %164)
  %166 = load %struct.device*, %struct.device** %9, align 8
  %167 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %330

170:                                              ; preds = %141
  %171 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %11, align 8
  %172 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %173 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %172, i32 0, i32 0
  store %struct.cvmx_usb_pipe* %171, %struct.cvmx_usb_pipe** %173, align 8
  br label %178

174:                                              ; preds = %48
  %175 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %176 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %175, i32 0, i32 0
  %177 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %176, align 8
  store %struct.cvmx_usb_pipe* %177, %struct.cvmx_usb_pipe** %11, align 8
  br label %178

178:                                              ; preds = %174, %170
  %179 = load %struct.urb*, %struct.urb** %6, align 8
  %180 = getelementptr inbounds %struct.urb, %struct.urb* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @usb_pipetype(i32 %181)
  switch i32 %182, label %307 [
    i32 130, label %183
    i32 131, label %262
    i32 132, label %277
    i32 133, label %292
  ]

183:                                              ; preds = %178
  %184 = load %struct.device*, %struct.device** %9, align 8
  %185 = load %struct.urb*, %struct.urb** %6, align 8
  %186 = getelementptr inbounds %struct.urb, %struct.urb* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @usb_pipedevice(i32 %187)
  %189 = load %struct.urb*, %struct.urb** %6, align 8
  %190 = getelementptr inbounds %struct.urb, %struct.urb* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @usb_pipeendpoint(i32 %191)
  %193 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %188, i32 %192)
  %194 = load %struct.urb*, %struct.urb** %6, align 8
  %195 = getelementptr inbounds %struct.urb, %struct.urb* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @GFP_ATOMIC, align 4
  %198 = call %struct.cvmx_usb_iso_packet* @kmalloc_array(i32 %196, i32 12, i32 %197)
  store %struct.cvmx_usb_iso_packet* %198, %struct.cvmx_usb_iso_packet** %13, align 8
  %199 = load %struct.cvmx_usb_iso_packet*, %struct.cvmx_usb_iso_packet** %13, align 8
  %200 = icmp ne %struct.cvmx_usb_iso_packet* %199, null
  br i1 %200, label %201, label %261

201:                                              ; preds = %183
  store i32 0, i32* %21, align 4
  br label %202

202:                                              ; preds = %241, %201
  %203 = load i32, i32* %21, align 4
  %204 = load %struct.urb*, %struct.urb** %6, align 8
  %205 = getelementptr inbounds %struct.urb, %struct.urb* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %244

208:                                              ; preds = %202
  %209 = load %struct.urb*, %struct.urb** %6, align 8
  %210 = getelementptr inbounds %struct.urb, %struct.urb* %209, i32 0, i32 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = load i32, i32* %21, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.cvmx_usb_iso_packet*, %struct.cvmx_usb_iso_packet** %13, align 8
  %218 = load i32, i32* %21, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.cvmx_usb_iso_packet, %struct.cvmx_usb_iso_packet* %217, i64 %219
  %221 = getelementptr inbounds %struct.cvmx_usb_iso_packet, %struct.cvmx_usb_iso_packet* %220, i32 0, i32 2
  store i32 %216, i32* %221, align 4
  %222 = load %struct.urb*, %struct.urb** %6, align 8
  %223 = getelementptr inbounds %struct.urb, %struct.urb* %222, i32 0, i32 4
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i32, i32* %21, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.cvmx_usb_iso_packet*, %struct.cvmx_usb_iso_packet** %13, align 8
  %231 = load i32, i32* %21, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.cvmx_usb_iso_packet, %struct.cvmx_usb_iso_packet* %230, i64 %232
  %234 = getelementptr inbounds %struct.cvmx_usb_iso_packet, %struct.cvmx_usb_iso_packet* %233, i32 0, i32 1
  store i32 %229, i32* %234, align 4
  %235 = load i32, i32* @CVMX_USB_STATUS_ERROR, align 4
  %236 = load %struct.cvmx_usb_iso_packet*, %struct.cvmx_usb_iso_packet** %13, align 8
  %237 = load i32, i32* %21, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.cvmx_usb_iso_packet, %struct.cvmx_usb_iso_packet* %236, i64 %238
  %240 = getelementptr inbounds %struct.cvmx_usb_iso_packet, %struct.cvmx_usb_iso_packet* %239, i32 0, i32 0
  store i32 %235, i32* %240, align 4
  br label %241

241:                                              ; preds = %208
  %242 = load i32, i32* %21, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %21, align 4
  br label %202

244:                                              ; preds = %202
  %245 = load %struct.cvmx_usb_iso_packet*, %struct.cvmx_usb_iso_packet** %13, align 8
  %246 = bitcast %struct.cvmx_usb_iso_packet* %245 to i8*
  %247 = load %struct.urb*, %struct.urb** %6, align 8
  %248 = getelementptr inbounds %struct.urb, %struct.urb* %247, i32 0, i32 1
  store i8* %246, i8** %248, align 8
  %249 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %250 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %11, align 8
  %251 = load %struct.urb*, %struct.urb** %6, align 8
  %252 = call %struct.cvmx_usb_transaction* @cvmx_usb_submit_isochronous(%struct.octeon_hcd* %249, %struct.cvmx_usb_pipe* %250, %struct.urb* %251)
  store %struct.cvmx_usb_transaction* %252, %struct.cvmx_usb_transaction** %10, align 8
  %253 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %254 = icmp ne %struct.cvmx_usb_transaction* %253, null
  br i1 %254, label %260, label %255

255:                                              ; preds = %244
  %256 = load %struct.urb*, %struct.urb** %6, align 8
  %257 = getelementptr inbounds %struct.urb, %struct.urb* %256, i32 0, i32 1
  store i8* null, i8** %257, align 8
  %258 = load %struct.cvmx_usb_iso_packet*, %struct.cvmx_usb_iso_packet** %13, align 8
  %259 = call i32 @kfree(%struct.cvmx_usb_iso_packet* %258)
  br label %260

260:                                              ; preds = %255, %244
  br label %261

261:                                              ; preds = %260, %183
  br label %307

262:                                              ; preds = %178
  %263 = load %struct.device*, %struct.device** %9, align 8
  %264 = load %struct.urb*, %struct.urb** %6, align 8
  %265 = getelementptr inbounds %struct.urb, %struct.urb* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @usb_pipedevice(i32 %266)
  %268 = load %struct.urb*, %struct.urb** %6, align 8
  %269 = getelementptr inbounds %struct.urb, %struct.urb* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @usb_pipeendpoint(i32 %270)
  %272 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %263, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %267, i32 %271)
  %273 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %274 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %11, align 8
  %275 = load %struct.urb*, %struct.urb** %6, align 8
  %276 = call %struct.cvmx_usb_transaction* @cvmx_usb_submit_interrupt(%struct.octeon_hcd* %273, %struct.cvmx_usb_pipe* %274, %struct.urb* %275)
  store %struct.cvmx_usb_transaction* %276, %struct.cvmx_usb_transaction** %10, align 8
  br label %307

277:                                              ; preds = %178
  %278 = load %struct.device*, %struct.device** %9, align 8
  %279 = load %struct.urb*, %struct.urb** %6, align 8
  %280 = getelementptr inbounds %struct.urb, %struct.urb* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @usb_pipedevice(i32 %281)
  %283 = load %struct.urb*, %struct.urb** %6, align 8
  %284 = getelementptr inbounds %struct.urb, %struct.urb* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @usb_pipeendpoint(i32 %285)
  %287 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %278, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %282, i32 %286)
  %288 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %289 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %11, align 8
  %290 = load %struct.urb*, %struct.urb** %6, align 8
  %291 = call %struct.cvmx_usb_transaction* @cvmx_usb_submit_control(%struct.octeon_hcd* %288, %struct.cvmx_usb_pipe* %289, %struct.urb* %290)
  store %struct.cvmx_usb_transaction* %291, %struct.cvmx_usb_transaction** %10, align 8
  br label %307

292:                                              ; preds = %178
  %293 = load %struct.device*, %struct.device** %9, align 8
  %294 = load %struct.urb*, %struct.urb** %6, align 8
  %295 = getelementptr inbounds %struct.urb, %struct.urb* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @usb_pipedevice(i32 %296)
  %298 = load %struct.urb*, %struct.urb** %6, align 8
  %299 = getelementptr inbounds %struct.urb, %struct.urb* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @usb_pipeendpoint(i32 %300)
  %302 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %293, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %297, i32 %301)
  %303 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %304 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %11, align 8
  %305 = load %struct.urb*, %struct.urb** %6, align 8
  %306 = call %struct.cvmx_usb_transaction* @cvmx_usb_submit_bulk(%struct.octeon_hcd* %303, %struct.cvmx_usb_pipe* %304, %struct.urb* %305)
  store %struct.cvmx_usb_transaction* %306, %struct.cvmx_usb_transaction** %10, align 8
  br label %307

307:                                              ; preds = %178, %292, %277, %262, %261
  %308 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %309 = icmp ne %struct.cvmx_usb_transaction* %308, null
  br i1 %309, label %322, label %310

310:                                              ; preds = %307
  %311 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %312 = load %struct.urb*, %struct.urb** %6, align 8
  %313 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %311, %struct.urb* %312)
  %314 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %315 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %314, i32 0, i32 0
  %316 = load i64, i64* %12, align 8
  %317 = call i32 @spin_unlock_irqrestore(i32* %315, i64 %316)
  %318 = load %struct.device*, %struct.device** %9, align 8
  %319 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %318, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %320 = load i32, i32* @ENOMEM, align 4
  %321 = sub nsw i32 0, %320
  store i32 %321, i32* %4, align 4
  br label %330

322:                                              ; preds = %307
  %323 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %324 = load %struct.urb*, %struct.urb** %6, align 8
  %325 = getelementptr inbounds %struct.urb, %struct.urb* %324, i32 0, i32 2
  store %struct.cvmx_usb_transaction* %323, %struct.cvmx_usb_transaction** %325, align 8
  %326 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %327 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %326, i32 0, i32 0
  %328 = load i64, i64* %12, align 8
  %329 = call i32 @spin_unlock_irqrestore(i32* %327, i64 %328)
  store i32 0, i32* %4, align 4
  br label %330

330:                                              ; preds = %322, %310, %158, %42
  %331 = load i32, i32* %4, align 4
  ret i32 %331
}

declare dso_local %struct.octeon_hcd* @hcd_to_octeon(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local %struct.cvmx_usb_pipe* @cvmx_usb_open_pipe(%struct.octeon_hcd*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_pipedevice(i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local %struct.cvmx_usb_iso_packet* @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.cvmx_usb_transaction* @cvmx_usb_submit_isochronous(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.urb*) #1

declare dso_local i32 @kfree(%struct.cvmx_usb_iso_packet*) #1

declare dso_local %struct.cvmx_usb_transaction* @cvmx_usb_submit_interrupt(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.urb*) #1

declare dso_local %struct.cvmx_usb_transaction* @cvmx_usb_submit_control(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.urb*) #1

declare dso_local %struct.cvmx_usb_transaction* @cvmx_usb_submit_bulk(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
