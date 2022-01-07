; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-qcom-aoss.c_qcom_aoss_control_assert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-qcom-aoss.c_qcom_aoss_control_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.qcom_aoss_reset_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qcom_aoss_reset_map* }
%struct.qcom_aoss_reset_map = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @qcom_aoss_control_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_aoss_control_assert(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qcom_aoss_reset_data*, align 8
  %6 = alloca %struct.qcom_aoss_reset_map*, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %8 = call %struct.qcom_aoss_reset_data* @to_qcom_aoss_reset_data(%struct.reset_controller_dev* %7)
  store %struct.qcom_aoss_reset_data* %8, %struct.qcom_aoss_reset_data** %5, align 8
  %9 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %5, align 8
  %10 = getelementptr inbounds %struct.qcom_aoss_reset_data, %struct.qcom_aoss_reset_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.qcom_aoss_reset_map*, %struct.qcom_aoss_reset_map** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.qcom_aoss_reset_map, %struct.qcom_aoss_reset_map* %13, i64 %14
  store %struct.qcom_aoss_reset_map* %15, %struct.qcom_aoss_reset_map** %6, align 8
  %16 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %5, align 8
  %17 = getelementptr inbounds %struct.qcom_aoss_reset_data, %struct.qcom_aoss_reset_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.qcom_aoss_reset_map*, %struct.qcom_aoss_reset_map** %6, align 8
  %20 = getelementptr inbounds %struct.qcom_aoss_reset_map, %struct.qcom_aoss_reset_map* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = call i32 @writel(i32 1, i64 %22)
  %24 = call i32 @usleep_range(i32 200, i32 300)
  ret i32 0
}

declare dso_local %struct.qcom_aoss_reset_data* @to_qcom_aoss_reset_data(%struct.reset_controller_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
