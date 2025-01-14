; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_qcom_clk_pause_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_qcom_clk_pause_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_controller = type { i32 }
%struct.qcom_slim_ctrl = type { i64, i32, i32, i32 }

@FRM_WAKEUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_controller*)* @qcom_clk_pause_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_clk_pause_wakeup(%struct.slim_controller* %0) #0 {
  %2 = alloca %struct.slim_controller*, align 8
  %3 = alloca %struct.qcom_slim_ctrl*, align 8
  store %struct.slim_controller* %0, %struct.slim_controller** %2, align 8
  %4 = load %struct.slim_controller*, %struct.slim_controller** %2, align 8
  %5 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.qcom_slim_ctrl* @dev_get_drvdata(i32 %6)
  store %struct.qcom_slim_ctrl* %7, %struct.qcom_slim_ctrl** %3, align 8
  %8 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @clk_prepare_enable(i32 %10)
  %12 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_prepare_enable(i32 %14)
  %16 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @enable_irq(i32 %18)
  %20 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FRM_WAKEUP, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 1, i64 %24)
  %26 = call i32 (...) @mb()
  %27 = call i32 @usleep_range(i32 1250, i32 2500)
  ret i32 0
}

declare dso_local %struct.qcom_slim_ctrl* @dev_get_drvdata(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
