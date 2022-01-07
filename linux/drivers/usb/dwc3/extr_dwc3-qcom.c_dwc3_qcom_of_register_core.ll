; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_of_register_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_of_register_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dwc3_qcom = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"dwc3\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to find dwc3 core child\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to register dwc3 core - %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to get dwc3 platform device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc3_qcom_of_register_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_qcom_of_register_core(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dwc3_qcom*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.dwc3_qcom* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.dwc3_qcom* %10, %struct.dwc3_qcom** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %18, %struct.device_node** %6, align 8
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = call i32 @of_platform_populate(%struct.device_node* %27, i32* null, i32* null, %struct.device* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %52

37:                                               ; preds = %26
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = call i32 @of_find_device_by_node(%struct.device_node* %38)
  %40 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %41 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %43 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %37
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %46, %32, %21
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.dwc3_qcom* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, i32*, %struct.device*) #1

declare dso_local i32 @of_find_device_by_node(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
