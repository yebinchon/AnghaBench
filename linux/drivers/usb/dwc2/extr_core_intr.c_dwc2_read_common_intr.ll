; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_read_common_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_read_common_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@GINTMSK_COMMON = common dso_local global i32 0, align 4
@GINTSTS = common dso_local global i32 0, align 4
@GINTMSK = common dso_local global i32 0, align 4
@GAHBCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"gintsts=%08x  gintmsk=%08x\0A\00", align 1
@GAHBCFG_GLBL_INTR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*)* @dwc2_read_common_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_read_common_intr(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %8 = load i32, i32* @GINTMSK_COMMON, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %10 = load i32, i32* @GINTSTS, align 4
  %11 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %13 = load i32, i32* @GINTMSK, align 4
  %14 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %16 = load i32, i32* @GAHBCFG, align 4
  %17 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %24 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %1
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @GAHBCFG_GLBL_INTR_EN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
