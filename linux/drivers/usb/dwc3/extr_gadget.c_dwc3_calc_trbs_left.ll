; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_calc_trbs_left.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_calc_trbs_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i64, i64 }
%struct.dwc3_trb = type { i32 }

@DWC3_TRB_CTRL_HWO = common dso_local global i32 0, align 4
@DWC3_TRB_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*)* @dwc3_calc_trbs_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_calc_trbs_left(%struct.dwc3_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dwc3_trb*, align 8
  %5 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %3, align 8
  %6 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %7 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %10 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %15 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %16 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.dwc3_trb* @dwc3_ep_prev_trb(%struct.dwc3_ep* %14, i64 %17)
  store %struct.dwc3_trb* %18, %struct.dwc3_trb** %4, align 8
  %19 = load %struct.dwc3_trb*, %struct.dwc3_trb** %4, align 8
  %20 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DWC3_TRB_CTRL_HWO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %54

26:                                               ; preds = %13
  %27 = load i32, i32* @DWC3_TRB_NUM, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %54

29:                                               ; preds = %1
  %30 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %31 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %34 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @DWC3_TRB_NUM, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %43 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %46 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %29
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %26, %25
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.dwc3_trb* @dwc3_ep_prev_trb(%struct.dwc3_ep*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
