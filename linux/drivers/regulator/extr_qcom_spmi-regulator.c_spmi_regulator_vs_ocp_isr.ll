; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_vs_ocp_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_vs_ocp_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_regulator = type { i32, i32, i32, i32, i32, i32 }

@SPMI_VS_OCP_FAULT_DELAY_US = common dso_local global i64 0, align 8
@SPMI_VS_OCP_FALL_DELAY_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"OCP triggered %d times; no further retries\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spmi_regulator_vs_ocp_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_vs_ocp_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spmi_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.spmi_regulator*
  store %struct.spmi_regulator* %9, %struct.spmi_regulator** %5, align 8
  %10 = call i32 (...) @ktime_get()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %13 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ktime_us_delta(i32 %11, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @SPMI_VS_OCP_FAULT_DELAY_US, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %21 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @SPMI_VS_OCP_FALL_DELAY_US, align 4
  %24 = call i32 @udelay(i32 %23)
  %25 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %26 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %30 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %35 = call i32 @spmi_regulator_vs_clear_ocp(%struct.spmi_regulator* %34)
  br label %62

36:                                               ; preds = %22
  %37 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %38 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %41 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %39, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %46 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %45, i32 0, i32 4
  %47 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %48 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @msecs_to_jiffies(i32 %49)
  %51 = add nsw i64 %50, 1
  %52 = call i32 @schedule_delayed_work(i32* %46, i64 %51)
  br label %61

53:                                               ; preds = %36
  %54 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %55 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %58 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %53, %44
  br label %62

62:                                               ; preds = %61, %33
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %63
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spmi_regulator_vs_clear_ocp(%struct.spmi_regulator*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
