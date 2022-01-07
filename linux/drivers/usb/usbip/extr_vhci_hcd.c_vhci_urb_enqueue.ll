; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, %struct.TYPE_4__*, i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.vhci_hcd = type { %struct.vhci_device*, %struct.vhci* }
%struct.vhci_device = type { i8*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.vhci = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@VHCI_HC_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid port number %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Null URB transfer buffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"URB already unlinked!, status %d\0A\00", align 1
@VDEV_ST_NULL = common dso_local global i64 0, align 8
@VDEV_ST_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"enqueue for inactive port %d\0A\00", align 1
@PIPE_CONTROL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid request to devnum 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"SetAddress Request (%d) to port %d\0A\00", align 1
@VDEV_ST_USED = common dso_local global i64 0, align 8
@USB_DT_DEVICE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"Not yet?:Get_Descriptor to device 0 (get max pipe size)\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"invalid request to devnum 0 bRequest %u, wValue %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @vhci_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhci_hcd*, align 8
  %9 = alloca %struct.vhci*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vhci_device*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %18 = call %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd* %17)
  store %struct.vhci_hcd* %18, %struct.vhci_hcd** %8, align 8
  %19 = load %struct.vhci_hcd*, %struct.vhci_hcd** %8, align 8
  %20 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %19, i32 0, i32 1
  %21 = load %struct.vhci*, %struct.vhci** %20, align 8
  store %struct.vhci* %21, %struct.vhci** %9, align 8
  %22 = load %struct.urb*, %struct.urb** %6, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store %struct.device* %25, %struct.device** %10, align 8
  %26 = load %struct.urb*, %struct.urb** %6, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @VHCI_HC_PORTS, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %267

39:                                               ; preds = %3
  %40 = load %struct.vhci_hcd*, %struct.vhci_hcd** %8, align 8
  %41 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %40, i32 0, i32 0
  %42 = load %struct.vhci_device*, %struct.vhci_device** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %42, i64 %45
  store %struct.vhci_device* %46, %struct.vhci_device** %13, align 8
  %47 = load %struct.urb*, %struct.urb** %6, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %39
  %52 = load %struct.urb*, %struct.urb** %6, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load %struct.urb*, %struct.urb** %6, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %10, align 8
  %63 = call i32 @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %267

66:                                               ; preds = %56, %51, %39
  %67 = load %struct.vhci*, %struct.vhci** %9, align 8
  %68 = getelementptr inbounds %struct.vhci, %struct.vhci* %67, i32 0, i32 0
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.urb*, %struct.urb** %6, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @EINPROGRESS, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %66
  %78 = load %struct.device*, %struct.device** %10, align 8
  %79 = load %struct.urb*, %struct.urb** %6, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.vhci*, %struct.vhci** %9, align 8
  %84 = getelementptr inbounds %struct.vhci, %struct.vhci* %83, i32 0, i32 0
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.urb*, %struct.urb** %6, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %4, align 4
  br label %267

90:                                               ; preds = %66
  %91 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %92 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %96 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @VDEV_ST_NULL, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %90
  %102 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %103 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VDEV_ST_ERROR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %101, %90
  %109 = load %struct.device*, %struct.device** %10, align 8
  %110 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %111 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %115 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.vhci*, %struct.vhci** %9, align 8
  %119 = getelementptr inbounds %struct.vhci, %struct.vhci* %118, i32 0, i32 0
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %267

124:                                              ; preds = %101
  %125 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %126 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %130 = load %struct.urb*, %struct.urb** %6, align 8
  %131 = call i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd* %129, %struct.urb* %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %251

135:                                              ; preds = %124
  %136 = load %struct.urb*, %struct.urb** %6, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @usb_pipedevice(i32 %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %238

141:                                              ; preds = %135
  %142 = load %struct.urb*, %struct.urb** %6, align 8
  %143 = getelementptr inbounds %struct.urb, %struct.urb* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @usb_pipetype(i32 %144)
  store i64 %145, i64* %15, align 8
  %146 = load %struct.urb*, %struct.urb** %6, align 8
  %147 = getelementptr inbounds %struct.urb, %struct.urb* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %149, %struct.usb_ctrlrequest** %16, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* @PIPE_CONTROL, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %156, label %153

153:                                              ; preds = %141
  %154 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %155 = icmp ne %struct.usb_ctrlrequest* %154, null
  br i1 %155, label %161, label %156

156:                                              ; preds = %153, %141
  %157 = load %struct.device*, %struct.device** %10, align 8
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %12, align 4
  br label %247

161:                                              ; preds = %153
  %162 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %163 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  switch i32 %164, label %227 [
    i32 128, label %165
    i32 129, label %206
  ]

165:                                              ; preds = %161
  %166 = load %struct.device*, %struct.device** %10, align 8
  %167 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %168 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %171 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @dev_info(%struct.device* %166, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %169, i32 %172)
  %174 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %175 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @usb_put_dev(i8* %176)
  %178 = load %struct.urb*, %struct.urb** %6, align 8
  %179 = getelementptr inbounds %struct.urb, %struct.urb* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = call i8* @usb_get_dev(%struct.TYPE_4__* %180)
  %182 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %183 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  %184 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %185 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = call i32 @spin_lock(i32* %186)
  %188 = load i64, i64* @VDEV_ST_USED, align 8
  %189 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %190 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  store i64 %188, i64* %191, align 8
  %192 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %193 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = call i32 @spin_unlock(i32* %194)
  %196 = load %struct.urb*, %struct.urb** %6, align 8
  %197 = getelementptr inbounds %struct.urb, %struct.urb* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @EINPROGRESS, align 4
  %200 = sub nsw i32 0, %199
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %165
  %203 = load %struct.urb*, %struct.urb** %6, align 8
  %204 = getelementptr inbounds %struct.urb, %struct.urb* %203, i32 0, i32 0
  store i32 0, i32* %204, align 8
  br label %205

205:                                              ; preds = %202, %165
  br label %247

206:                                              ; preds = %161
  %207 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %208 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @USB_DT_DEVICE, align 4
  %211 = shl i32 %210, 8
  %212 = call i32 @cpu_to_le16(i32 %211)
  %213 = icmp eq i32 %209, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = call i32 @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %206
  %217 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %218 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @usb_put_dev(i8* %219)
  %221 = load %struct.urb*, %struct.urb** %6, align 8
  %222 = getelementptr inbounds %struct.urb, %struct.urb* %221, i32 0, i32 1
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = call i8* @usb_get_dev(%struct.TYPE_4__* %223)
  %225 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %226 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %225, i32 0, i32 0
  store i8* %224, i8** %226, align 8
  br label %239

227:                                              ; preds = %161
  %228 = load %struct.device*, %struct.device** %10, align 8
  %229 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %230 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %233 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %228, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %231, i32 %234)
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %12, align 4
  br label %247

238:                                              ; preds = %135
  br label %239

239:                                              ; preds = %238, %216
  %240 = load %struct.urb*, %struct.urb** %6, align 8
  %241 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %242 = call i32 @vhci_tx_urb(%struct.urb* %240, %struct.vhci_device* %241)
  %243 = load %struct.vhci*, %struct.vhci** %9, align 8
  %244 = getelementptr inbounds %struct.vhci, %struct.vhci* %243, i32 0, i32 0
  %245 = load i64, i64* %14, align 8
  %246 = call i32 @spin_unlock_irqrestore(i32* %244, i64 %245)
  store i32 0, i32* %4, align 4
  br label %267

247:                                              ; preds = %227, %205, %156
  %248 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %249 = load %struct.urb*, %struct.urb** %6, align 8
  %250 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %248, %struct.urb* %249)
  br label %251

251:                                              ; preds = %247, %134
  %252 = load %struct.vhci*, %struct.vhci** %9, align 8
  %253 = getelementptr inbounds %struct.vhci, %struct.vhci* %252, i32 0, i32 0
  %254 = load i64, i64* %14, align 8
  %255 = call i32 @spin_unlock_irqrestore(i32* %253, i64 %254)
  %256 = load i32, i32* %12, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %251
  %259 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %260 = load %struct.urb*, %struct.urb** %6, align 8
  %261 = load %struct.urb*, %struct.urb** %6, align 8
  %262 = getelementptr inbounds %struct.urb, %struct.urb* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %259, %struct.urb* %260, i32 %263)
  br label %265

265:                                              ; preds = %258, %251
  %266 = load i32, i32* %12, align 4
  store i32 %266, i32* %4, align 4
  br label %267

267:                                              ; preds = %265, %239, %108, %77, %61, %34
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

declare dso_local %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i64 @usb_pipedevice(i32) #1

declare dso_local i64 @usb_pipetype(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @usb_put_dev(i8*) #1

declare dso_local i8* @usb_get_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usbip_dbg_vhci_hc(i8*) #1

declare dso_local i32 @vhci_tx_urb(%struct.urb*, %struct.vhci_device*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
