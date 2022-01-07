; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_wIndex_to_dep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_wIndex_to_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32 }
%struct.dwc3 = type { %struct.dwc3_ep** }

@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@DWC3_EP_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dwc3_ep* (%struct.dwc3*, i32)* @dwc3_wIndex_to_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dwc3_ep* @dwc3_wIndex_to_dep(%struct.dwc3* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc3_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @le16_to_cpu(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %13 = and i32 %11, %12
  %14 = shl i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @USB_DIR_IN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %25 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 0
  %26 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %26, i64 %28
  %30 = load %struct.dwc3_ep*, %struct.dwc3_ep** %29, align 8
  store %struct.dwc3_ep* %30, %struct.dwc3_ep** %6, align 8
  %31 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %32 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DWC3_EP_ENABLED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  store %struct.dwc3_ep* %38, %struct.dwc3_ep** %3, align 8
  br label %40

39:                                               ; preds = %23
  store %struct.dwc3_ep* null, %struct.dwc3_ep** %3, align 8
  br label %40

40:                                               ; preds = %39, %37
  %41 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  ret %struct.dwc3_ep* %41
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
