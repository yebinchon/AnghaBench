; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_clear_force_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_clear_force_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Clearing force mode bits\0A\00", align 1
@GUSBCFG = common dso_local global i32 0, align 4
@GUSBCFG_FORCEHOSTMODE = common dso_local global i32 0, align 4
@GUSBCFG_FORCEDEVMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_clear_force_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_clear_force_mode(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %4 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %5 = call i32 @dwc2_hw_is_otg(%struct.dwc2_hsotg* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %10 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %14 = load i32, i32* @GUSBCFG, align 4
  %15 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @GUSBCFG_FORCEHOSTMODE, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @GUSBCFG_FORCEDEVMODE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @GUSBCFG, align 4
  %27 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %24, i32 %25, i32 %26)
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %29 = call i64 @dwc2_iddig_filter_enabled(%struct.dwc2_hsotg* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = call i32 @msleep(i32 100)
  br label %33

33:                                               ; preds = %7, %31, %8
  ret void
}

declare dso_local i32 @dwc2_hw_is_otg(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i64 @dwc2_iddig_filter_enabled(%struct.dwc2_hsotg*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
