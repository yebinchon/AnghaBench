; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_gahbcfg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_gahbcfg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@GAHBCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"External DMA Mode not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Internal DMA Mode\0A\00", align 1
@GAHBCFG_CTRL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Slave Only Mode\0A\00", align 1
@GAHBCFG_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*)* @dwc2_gahbcfg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_gahbcfg_init(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %5 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %6 = load i32, i32* @GAHBCFG, align 4
  %7 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %9 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %44 [
    i32 130, label %12
    i32 129, label %19
    i32 128, label %43
  ]

12:                                               ; preds = %1
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %21 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %25 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = load i32, i32* @GAHBCFG_CTRL_MASK, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GAHBCFG_CTRL_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %29, %19
  br label %49

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %1, %43
  %45 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %46 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %42
  %50 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %51 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @GAHBCFG_DMA_EN, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %63

59:                                               ; preds = %49
  %60 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %61 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @GAHBCFG, align 4
  %67 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %64, i32 %65, i32 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
