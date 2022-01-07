; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_iddig_filter_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_iddig_filter_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@GHWCFG4 = common dso_local global i32 0, align 4
@GHWCFG4_IDDIG_FILT_EN = common dso_local global i64 0, align 8
@GSNPSID = common dso_local global i32 0, align 4
@DWC2_CORE_REV_3_10a = common dso_local global i64 0, align 8
@GOTGCTL = common dso_local global i32 0, align 4
@GOTGCTL_DBNCE_FLTR_BYPASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*)* @dwc2_iddig_filter_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_iddig_filter_enabled(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %8 = call i32 @dwc2_hw_is_otg(%struct.dwc2_hsotg* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %13 = load i32, i32* @GHWCFG4, align 4
  %14 = call i64 @dwc2_readl(%struct.dwc2_hsotg* %12, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @GHWCFG4_IDDIG_FILT_EN, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %38

20:                                               ; preds = %11
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %22 = load i32, i32* @GSNPSID, align 4
  %23 = call i64 @dwc2_readl(%struct.dwc2_hsotg* %21, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @DWC2_CORE_REV_3_10a, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %29 = load i32, i32* @GOTGCTL, align 4
  %30 = call i64 @dwc2_readl(%struct.dwc2_hsotg* %28, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @GOTGCTL_DBNCE_FLTR_BYPASS, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %38

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %20
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %35, %19, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @dwc2_hw_is_otg(%struct.dwc2_hsotg*) #1

declare dso_local i64 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
