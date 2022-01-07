; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_cooling_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_cooling_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmp = type { i32 }
%struct.qmp_cooling_device = type { i8*, i32, i32, %struct.qmp* }
%struct.device_node = type { i64 }

@qmp_cdev_init_state = common dso_local global i32 0, align 4
@qmp_cooling_device_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unable to register %s cooling device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmp*, %struct.qmp_cooling_device*, %struct.device_node*)* @qmp_cooling_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmp_cooling_device_add(%struct.qmp* %0, %struct.qmp_cooling_device* %1, %struct.device_node* %2) #0 {
  %4 = alloca %struct.qmp*, align 8
  %5 = alloca %struct.qmp_cooling_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  store %struct.qmp* %0, %struct.qmp** %4, align 8
  store %struct.qmp_cooling_device* %1, %struct.qmp_cooling_device** %5, align 8
  store %struct.device_node* %2, %struct.device_node** %6, align 8
  %8 = load %struct.device_node*, %struct.device_node** %6, align 8
  %9 = getelementptr inbounds %struct.device_node, %struct.device_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %7, align 8
  %12 = load %struct.qmp*, %struct.qmp** %4, align 8
  %13 = load %struct.qmp_cooling_device*, %struct.qmp_cooling_device** %5, align 8
  %14 = getelementptr inbounds %struct.qmp_cooling_device, %struct.qmp_cooling_device* %13, i32 0, i32 3
  store %struct.qmp* %12, %struct.qmp** %14, align 8
  %15 = load i32, i32* @qmp_cdev_init_state, align 4
  %16 = load %struct.qmp_cooling_device*, %struct.qmp_cooling_device** %5, align 8
  %17 = getelementptr inbounds %struct.qmp_cooling_device, %struct.qmp_cooling_device* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.qmp_cooling_device*, %struct.qmp_cooling_device** %5, align 8
  %20 = getelementptr inbounds %struct.qmp_cooling_device, %struct.qmp_cooling_device* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.qmp*, %struct.qmp** %4, align 8
  %22 = getelementptr inbounds %struct.qmp, %struct.qmp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.qmp_cooling_device*, %struct.qmp_cooling_device** %5, align 8
  %27 = call i32 @devm_thermal_of_cooling_device_register(i32 %23, %struct.device_node* %24, i8* %25, %struct.qmp_cooling_device* %26, i32* @qmp_cooling_device_ops)
  %28 = load %struct.qmp_cooling_device*, %struct.qmp_cooling_device** %5, align 8
  %29 = getelementptr inbounds %struct.qmp_cooling_device, %struct.qmp_cooling_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.qmp_cooling_device*, %struct.qmp_cooling_device** %5, align 8
  %31 = getelementptr inbounds %struct.qmp_cooling_device, %struct.qmp_cooling_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load %struct.qmp*, %struct.qmp** %4, align 8
  %37 = getelementptr inbounds %struct.qmp, %struct.qmp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %35, %3
  %42 = load %struct.qmp_cooling_device*, %struct.qmp_cooling_device** %5, align 8
  %43 = getelementptr inbounds %struct.qmp_cooling_device, %struct.qmp_cooling_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR_OR_ZERO(i32 %44)
  ret i32 %45
}

declare dso_local i32 @devm_thermal_of_cooling_device_register(i32, %struct.device_node*, i8*, %struct.qmp_cooling_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
