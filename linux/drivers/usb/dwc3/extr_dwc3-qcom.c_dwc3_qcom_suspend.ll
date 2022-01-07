; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_qcom = type { i32, i32, i32*, i32, i64 }

@PWR_EVNT_IRQ_STAT_REG = common dso_local global i64 0, align 8
@PWR_EVNT_LPM_IN_L2_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"HS-PHY not in L2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_qcom*)* @dwc3_qcom_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_qcom_suspend(%struct.dwc3_qcom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_qcom*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc3_qcom* %0, %struct.dwc3_qcom** %3, align 8
  %6 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %7 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %13 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PWR_EVNT_IRQ_STAT_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PWR_EVNT_LPM_IN_L2_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %11
  %23 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %24 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %11
  %28 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %29 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %44, %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %37 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_disable_unprepare(i32 %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %5, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %49 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %51 = call i32 @dwc3_qcom_enable_interrupts(%struct.dwc3_qcom* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @dwc3_qcom_enable_interrupts(%struct.dwc3_qcom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
