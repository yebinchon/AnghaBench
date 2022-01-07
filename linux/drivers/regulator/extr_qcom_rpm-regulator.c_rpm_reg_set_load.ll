; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_rpm-regulator.c_rpm_reg_set_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_rpm-regulator.c_rpm_reg_set_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.qcom_rpm_reg = type { i32, %struct.rpm_reg_parts* }
%struct.rpm_reg_parts = type { %struct.request_member }
%struct.request_member = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @rpm_reg_set_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_reg_set_load(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_rpm_reg*, align 8
  %7 = alloca %struct.rpm_reg_parts*, align 8
  %8 = alloca %struct.request_member*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call %struct.qcom_rpm_reg* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.qcom_rpm_reg* %13, %struct.qcom_rpm_reg** %6, align 8
  %14 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %6, align 8
  %15 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %14, i32 0, i32 1
  %16 = load %struct.rpm_reg_parts*, %struct.rpm_reg_parts** %15, align 8
  store %struct.rpm_reg_parts* %16, %struct.rpm_reg_parts** %7, align 8
  %17 = load %struct.rpm_reg_parts*, %struct.rpm_reg_parts** %7, align 8
  %18 = getelementptr inbounds %struct.rpm_reg_parts, %struct.rpm_reg_parts* %17, i32 0, i32 0
  store %struct.request_member* %18, %struct.request_member** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 1000
  store i32 %20, i32* %9, align 4
  %21 = load %struct.request_member*, %struct.request_member** %8, align 8
  %22 = getelementptr inbounds %struct.request_member, %struct.request_member* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.request_member*, %struct.request_member** %8, align 8
  %25 = getelementptr inbounds %struct.request_member, %struct.request_member* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %23, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.request_member*, %struct.request_member** %8, align 8
  %29 = getelementptr inbounds %struct.request_member, %struct.request_member* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %2
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %6, align 8
  %43 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %6, align 8
  %46 = load %struct.request_member*, %struct.request_member** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @rpm_reg_write(%struct.qcom_rpm_reg* %45, %struct.request_member* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %6, align 8
  %50 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %41, %32
  %54 = load i32, i32* %3, align 4
  ret i32 %54
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
