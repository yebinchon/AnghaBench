; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_arche_apb_ctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_arche_apb_ctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.arche_apb_ctrl_drvdata = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to get apb devicetree data %d\0A\00", align 1
@ARCHE_PLATFORM_STATE_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"arche,init-disable\00", align 1
@dev_attr_state = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to create state file in sysfs\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Device registered successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arche_apb_ctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arche_apb_ctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arche_apb_ctrl_drvdata*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.arche_apb_ctrl_drvdata* @devm_kzalloc(%struct.device* %10, i32 8, i32 %11)
  store %struct.arche_apb_ctrl_drvdata* %12, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %13 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %14 = icmp ne %struct.arche_apb_ctrl_drvdata* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %58

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %21 = call i32 @apb_ctrl_get_devtree_data(%struct.platform_device* %19, %struct.arche_apb_ctrl_drvdata* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %58

29:                                               ; preds = %18
  %30 = load i32, i32* @ARCHE_PLATFORM_STATE_OFF, align 4
  %31 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %32 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @of_property_read_bool(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %41 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.arche_apb_ctrl_drvdata* %44)
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @device_create_file(%struct.device* %46, i32* @dev_attr_state)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %42
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_info(%struct.device* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %50, %24, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.arche_apb_ctrl_drvdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @apb_ctrl_get_devtree_data(%struct.platform_device*, %struct.arche_apb_ctrl_drvdata*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.arche_apb_ctrl_drvdata*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
