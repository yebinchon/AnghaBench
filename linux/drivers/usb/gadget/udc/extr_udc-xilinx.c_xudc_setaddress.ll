; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_setaddress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_setaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_udc = type { i32, %struct.xusb_req*, %struct.xusb_ep* }
%struct.xusb_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xusb_ep = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Can't respond to SET ADDRESS request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xusb_udc*)* @xudc_setaddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xudc_setaddress(%struct.xusb_udc* %0) #0 {
  %2 = alloca %struct.xusb_udc*, align 8
  %3 = alloca %struct.xusb_ep*, align 8
  %4 = alloca %struct.xusb_req*, align 8
  %5 = alloca i32, align 4
  store %struct.xusb_udc* %0, %struct.xusb_udc** %2, align 8
  %6 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %7 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %6, i32 0, i32 2
  %8 = load %struct.xusb_ep*, %struct.xusb_ep** %7, align 8
  %9 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %8, i64 0
  store %struct.xusb_ep* %9, %struct.xusb_ep** %3, align 8
  %10 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %11 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %10, i32 0, i32 1
  %12 = load %struct.xusb_req*, %struct.xusb_req** %11, align 8
  store %struct.xusb_req* %12, %struct.xusb_req** %4, align 8
  %13 = load %struct.xusb_req*, %struct.xusb_req** %4, align 8
  %14 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %17 = load %struct.xusb_req*, %struct.xusb_req** %4, align 8
  %18 = call i32 @__xudc_ep0_queue(%struct.xusb_ep* %16, %struct.xusb_req* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %29

22:                                               ; preds = %1
  %23 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %24 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %28 = call i32 @xudc_ep0_stall(%struct.xusb_udc* %27)
  br label %29

29:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @__xudc_ep0_queue(%struct.xusb_ep*, %struct.xusb_req*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @xudc_ep0_stall(%struct.xusb_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
