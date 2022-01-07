; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_smd-regulator.c_rpm_reg_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_smd-regulator.c_rpm_reg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.qcom_rpm_reg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @rpm_reg_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_reg_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.qcom_rpm_reg*, align 8
  %4 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %5 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %6 = call %struct.qcom_rpm_reg* @rdev_get_drvdata(%struct.regulator_dev* %5)
  store %struct.qcom_rpm_reg* %6, %struct.qcom_rpm_reg** %3, align 8
  %7 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %10 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %12 = call i32 @rpm_reg_write_active(%struct.qcom_rpm_reg* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %17 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local %struct.qcom_rpm_reg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rpm_reg_write_active(%struct.qcom_rpm_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
