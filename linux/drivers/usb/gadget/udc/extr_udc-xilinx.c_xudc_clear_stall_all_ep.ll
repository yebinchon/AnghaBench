; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_clear_stall_all_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_clear_stall_all_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_udc = type { i64, i32 (i64, i64, i32)*, i32 (i64)*, %struct.xusb_ep* }
%struct.xusb_ep = type { i64, i64 }

@XUSB_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@XUSB_EP_CFG_STALL_MASK = common dso_local global i32 0, align 4
@XUSB_EP_CFG_DATA_TOGGLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xusb_udc*)* @xudc_clear_stall_all_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xudc_clear_stall_all_ep(%struct.xusb_udc* %0) #0 {
  %2 = alloca %struct.xusb_udc*, align 8
  %3 = alloca %struct.xusb_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xusb_udc* %0, %struct.xusb_udc** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %75, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @XUSB_MAX_ENDPOINTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %78

10:                                               ; preds = %6
  %11 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %12 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %11, i32 0, i32 3
  %13 = load %struct.xusb_ep*, %struct.xusb_ep** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %13, i64 %15
  store %struct.xusb_ep* %16, %struct.xusb_ep** %3, align 8
  %17 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %18 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %17, i32 0, i32 2
  %19 = load i32 (i64)*, i32 (i64)** %18, align 8
  %20 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %21 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %24 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 %19(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @XUSB_EP_CFG_STALL_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %33 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %32, i32 0, i32 1
  %34 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %33, align 8
  %35 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %36 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %39 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 %34(i64 %37, i64 %40, i32 %41)
  %43 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %44 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %10
  %48 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %49 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %48, i32 0, i32 2
  %50 = load i32 (i64)*, i32 (i64)** %49, align 8
  %51 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %52 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %55 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = call i32 %50(i64 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @XUSB_EP_CFG_DATA_TOGGLE_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %64 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %63, i32 0, i32 1
  %65 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %64, align 8
  %66 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %67 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %70 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 %65(i64 %68, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %47, %10
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %6

78:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
