; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_rpm-regulator.c_rpm_reg_of_parse_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_rpm-regulator.c_rpm_reg_of_parse_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.qcom_rpm_reg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@rpm_reg_of_parse_freq.freq_table = internal constant [16 x i32] [i32 19200000, i32 9600000, i32 6400000, i32 4800000, i32 3840000, i32 3200000, i32 2740000, i32 2400000, i32 2130000, i32 1920000, i32 1750000, i32 1600000, i32 1480000, i32 1370000, i32 1280000, i32 1200000], align 16
@.str = private unnamed_addr constant [27 x i8] c"qcom,switch-mode-frequency\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"regulator requires %s property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid frequency %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.qcom_rpm_reg*)* @rpm_reg_of_parse_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_reg_of_parse_freq(%struct.device* %0, %struct.device_node* %1, %struct.qcom_rpm_reg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.qcom_rpm_reg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.qcom_rpm_reg* %2, %struct.qcom_rpm_reg** %7, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @of_property_read_u32(%struct.device_node* %12, i8* %13, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %54

23:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @rpm_reg_of_parse_freq.freq_table, i64 0, i64 0))
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* @rpm_reg_of_parse_freq.freq_table, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %29, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %7, align 8
  %37 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %7, align 8
  %38 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @rpm_reg_set(%struct.qcom_rpm_reg* %36, i32* %40, i32 %42)
  store i32 0, i32* %4, align 4
  br label %54

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %35, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rpm_reg_set(%struct.qcom_rpm_reg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
