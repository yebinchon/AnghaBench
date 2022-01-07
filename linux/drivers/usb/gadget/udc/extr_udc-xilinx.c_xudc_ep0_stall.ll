; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_ep0_stall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_ep0_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_udc = type { i64, i32 (i64, i64, i32)*, i32 (i64)*, %struct.xusb_ep* }
%struct.xusb_ep = type { i64 }

@XUSB_EP_NUMBER_ZERO = common dso_local global i64 0, align 8
@XUSB_EP_CFG_STALL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xusb_udc*)* @xudc_ep0_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xudc_ep0_stall(%struct.xusb_udc* %0) #0 {
  %2 = alloca %struct.xusb_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xusb_ep*, align 8
  store %struct.xusb_udc* %0, %struct.xusb_udc** %2, align 8
  %5 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %6 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %5, i32 0, i32 3
  %7 = load %struct.xusb_ep*, %struct.xusb_ep** %6, align 8
  %8 = load i64, i64* @XUSB_EP_NUMBER_ZERO, align 8
  %9 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %7, i64 %8
  store %struct.xusb_ep* %9, %struct.xusb_ep** %4, align 8
  %10 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %11 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %10, i32 0, i32 2
  %12 = load i32 (i64)*, i32 (i64)** %11, align 8
  %13 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %14 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %17 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = call i32 %12(i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @XUSB_EP_CFG_STALL_MASK, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %25 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %24, i32 0, i32 1
  %26 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %25, align 8
  %27 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %28 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %31 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 %26(i64 %29, i64 %32, i32 %33)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
