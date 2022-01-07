; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_qcom = type { i32, i32, i32, i32* }

@PWR_EVNT_IRQ_STAT_REG = common dso_local global i32 0, align 4
@PWR_EVNT_LPM_IN_L2_MASK = common dso_local global i32 0, align 4
@PWR_EVNT_LPM_OUT_L2_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_qcom*)* @dwc3_qcom_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_qcom_resume(%struct.dwc3_qcom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_qcom*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc3_qcom* %0, %struct.dwc3_qcom** %3, align 8
  %6 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %7 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %13 = call i32 @dwc3_qcom_disable_interrupts(%struct.dwc3_qcom* %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %48, %11
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  %21 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_prepare_enable(i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %38 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  br label %32

45:                                               ; preds = %32
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %62

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %14

51:                                               ; preds = %14
  %52 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %53 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PWR_EVNT_IRQ_STAT_REG, align 4
  %56 = load i32, i32* @PWR_EVNT_LPM_IN_L2_MASK, align 4
  %57 = load i32, i32* @PWR_EVNT_LPM_OUT_L2_MASK, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @dwc3_qcom_setbits(i32 %54, i32 %55, i32 %58)
  %60 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %61 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %51, %45, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @dwc3_qcom_disable_interrupts(%struct.dwc3_qcom*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @dwc3_qcom_setbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
