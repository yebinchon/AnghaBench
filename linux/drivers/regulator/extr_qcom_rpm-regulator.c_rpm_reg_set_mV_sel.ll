; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_rpm-regulator.c_rpm_reg_set_mV_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_rpm-regulator.c_rpm_reg_set_mV_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.qcom_rpm_reg = type { i32, i32, i64, %struct.rpm_reg_parts* }
%struct.rpm_reg_parts = type { %struct.request_member }
%struct.request_member = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @rpm_reg_set_mV_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_reg_set_mV_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_rpm_reg*, align 8
  %7 = alloca %struct.rpm_reg_parts*, align 8
  %8 = alloca %struct.request_member*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.qcom_rpm_reg* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.qcom_rpm_reg* %12, %struct.qcom_rpm_reg** %6, align 8
  %13 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %6, align 8
  %14 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %13, i32 0, i32 3
  %15 = load %struct.rpm_reg_parts*, %struct.rpm_reg_parts** %14, align 8
  store %struct.rpm_reg_parts* %15, %struct.rpm_reg_parts** %7, align 8
  %16 = load %struct.rpm_reg_parts*, %struct.rpm_reg_parts** %7, align 8
  %17 = getelementptr inbounds %struct.rpm_reg_parts, %struct.rpm_reg_parts* %16, i32 0, i32 0
  store %struct.request_member* %17, %struct.request_member** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.request_member*, %struct.request_member** %8, align 8
  %19 = getelementptr inbounds %struct.request_member, %struct.request_member* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %59

25:                                               ; preds = %2
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @regulator_list_voltage_linear_range(%struct.regulator_dev* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %59

33:                                               ; preds = %25
  %34 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %6, align 8
  %35 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %6, align 8
  %38 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %6, align 8
  %43 = load %struct.request_member*, %struct.request_member** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sdiv i32 %44, 1000
  %46 = call i32 @rpm_reg_write(%struct.qcom_rpm_reg* %42, %struct.request_member* %43, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %41, %33
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %6, align 8
  %53 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %6, align 8
  %56 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %31, %22
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.qcom_rpm_reg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_list_voltage_linear_range(%struct.regulator_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpm_reg_write(%struct.qcom_rpm_reg*, %struct.request_member*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
