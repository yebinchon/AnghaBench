; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_set_test_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_set_test_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@DCTL = common dso_local global i32 0, align 4
@DCTL_TSTCTL_MASK = common dso_local global i32 0, align 4
@DCTL_TSTCTL_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc2_hsotg_set_test_mode(%struct.dwc2_hsotg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %8 = load i32, i32* @DCTL, align 4
  %9 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @DCTL_TSTCTL_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %21 [
    i32 131, label %15
    i32 130, label %15
    i32 128, label %15
    i32 129, label %15
    i32 132, label %15
  ]

15:                                               ; preds = %2, %2, %2, %2, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DCTL_TSTCTL_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DCTL, align 4
  %28 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %25, i32 %26, i32 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
