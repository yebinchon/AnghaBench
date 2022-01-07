; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_get_ep_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_get_ep_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg_ep = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@DXEPTSIZ_XFERSIZE_LIMIT = common dso_local global i32 0, align 4
@DXEPTSIZ_PKTCNT_LIMIT = common dso_local global i32 0, align 4
@DIEPTSIZ0_PKTCNT_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg_ep*)* @get_ep_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ep_limit(%struct.dwc2_hsotg_ep* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg_ep*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg_ep* %0, %struct.dwc2_hsotg_ep** %2, align 8
  %6 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @DXEPTSIZ_XFERSIZE_LIMIT, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @DXEPTSIZ_PKTCNT_LIMIT, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %26

16:                                               ; preds = %1
  store i32 128, i32* %4, align 4
  %17 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @DIEPTSIZ0_PKTCNT_LIMIT, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %25

24:                                               ; preds = %16
  store i32 2, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %25, %11
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %33 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul i32 %31, %35
  %37 = load i32, i32* %4, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul i32 %40, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %26
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
