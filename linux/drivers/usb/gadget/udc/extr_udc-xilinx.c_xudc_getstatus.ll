; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_getstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_getstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_udc = type { i32 (i64)*, i32, %struct.TYPE_3__, i64, %struct.xusb_ep*, i32, %struct.xusb_req* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xusb_ep = type { i32, i64 }
%struct.xusb_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@XUSB_EP_CFG_STALL_MASK = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Can't respond to getstatus request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xusb_udc*)* @xudc_getstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xudc_getstatus(%struct.xusb_udc* %0) #0 {
  %2 = alloca %struct.xusb_udc*, align 8
  %3 = alloca %struct.xusb_ep*, align 8
  %4 = alloca %struct.xusb_req*, align 8
  %5 = alloca %struct.xusb_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xusb_udc* %0, %struct.xusb_udc** %2, align 8
  %11 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %12 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %11, i32 0, i32 4
  %13 = load %struct.xusb_ep*, %struct.xusb_ep** %12, align 8
  %14 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %13, i64 0
  store %struct.xusb_ep* %14, %struct.xusb_ep** %3, align 8
  %15 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %16 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %15, i32 0, i32 6
  %17 = load %struct.xusb_req*, %struct.xusb_req** %16, align 8
  store %struct.xusb_req* %17, %struct.xusb_req** %4, align 8
  store i32 0, i32* %6, align 4
  %18 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %19 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @USB_RECIP_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %93 [
    i32 130, label %24
    i32 128, label %37
    i32 129, label %38
  ]

24:                                               ; preds = %1
  %25 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %28 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %24
  br label %94

37:                                               ; preds = %1
  br label %94

38:                                               ; preds = %1
  %39 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %40 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %46 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %45, i32 0, i32 4
  %47 = load %struct.xusb_ep*, %struct.xusb_ep** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %47, i64 %49
  store %struct.xusb_ep* %50, %struct.xusb_ep** %5, align 8
  %51 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %52 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %51, i32 0, i32 0
  %53 = load i32 (i64)*, i32 (i64)** %52, align 8
  %54 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %55 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.xusb_ep*, %struct.xusb_ep** %5, align 8
  %58 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = call i32 %53(i64 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @XUSB_EP_CFG_STALL_MASK, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %66 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @USB_DIR_IN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %38
  %73 = load %struct.xusb_ep*, %struct.xusb_ep** %5, align 8
  %74 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %112

78:                                               ; preds = %72
  br label %86

79:                                               ; preds = %38
  %80 = load %struct.xusb_ep*, %struct.xusb_ep** %5, align 8
  %81 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %112

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %78
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %91 = shl i32 1, %90
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %86
  br label %94

93:                                               ; preds = %1
  br label %112

94:                                               ; preds = %92, %37, %36
  %95 = load %struct.xusb_req*, %struct.xusb_req** %4, align 8
  %96 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 2, i32* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @cpu_to_le16(i32 %98)
  %100 = load %struct.xusb_req*, %struct.xusb_req** %4, align 8
  %101 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i32*
  store i32 %99, i32* %104, align 4
  %105 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %106 = load %struct.xusb_req*, %struct.xusb_req** %4, align 8
  %107 = call i32 @__xudc_ep0_queue(%struct.xusb_ep* %105, %struct.xusb_req* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %94
  br label %119

111:                                              ; preds = %94
  br label %112

112:                                              ; preds = %111, %93, %84, %77
  %113 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %114 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %117 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %118 = call i32 @xudc_ep0_stall(%struct.xusb_udc* %117)
  br label %119

119:                                              ; preds = %112, %110
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @__xudc_ep0_queue(%struct.xusb_ep*, %struct.xusb_req*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @xudc_ep0_stall(%struct.xusb_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
