; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_rpm-regulator.c_rpm_reg_switch_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_rpm-regulator.c_rpm_reg_switch_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.qcom_rpm_reg = type { i32, i64, %struct.rpm_reg_parts* }
%struct.rpm_reg_parts = type { %struct.request_member }
%struct.request_member = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @rpm_reg_switch_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_reg_switch_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.qcom_rpm_reg*, align 8
  %5 = alloca %struct.rpm_reg_parts*, align 8
  %6 = alloca %struct.request_member*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.qcom_rpm_reg* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.qcom_rpm_reg* %9, %struct.qcom_rpm_reg** %4, align 8
  %10 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %4, align 8
  %11 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %10, i32 0, i32 2
  %12 = load %struct.rpm_reg_parts*, %struct.rpm_reg_parts** %11, align 8
  store %struct.rpm_reg_parts* %12, %struct.rpm_reg_parts** %5, align 8
  %13 = load %struct.rpm_reg_parts*, %struct.rpm_reg_parts** %5, align 8
  %14 = getelementptr inbounds %struct.rpm_reg_parts, %struct.rpm_reg_parts* %13, i32 0, i32 0
  store %struct.request_member* %14, %struct.request_member** %6, align 8
  %15 = load %struct.request_member*, %struct.request_member** %6, align 8
  %16 = getelementptr inbounds %struct.request_member, %struct.request_member* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %4, align 8
  %24 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %4, align 8
  %27 = load %struct.request_member*, %struct.request_member** %6, align 8
  %28 = call i32 @rpm_reg_write(%struct.qcom_rpm_reg* %26, %struct.request_member* %27, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %4, align 8
  %33 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %22
  %35 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %4, align 8
  %36 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %19
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.qcom_rpm_reg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpm_reg_write(%struct.qcom_rpm_reg*, %struct.request_member*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
