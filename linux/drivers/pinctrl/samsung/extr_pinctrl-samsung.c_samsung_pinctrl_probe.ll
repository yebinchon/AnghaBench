; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.samsung_pinctrl_drv_data = type { %struct.samsung_pin_ctrl*, i32, %struct.device* }
%struct.samsung_pin_ctrl = type { i32 (%struct.samsung_pinctrl_drv_data*)*, i32 (%struct.samsung_pinctrl_drv_data*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.samsung_pin_ctrl* (%struct.samsung_pinctrl_drv_data*, %struct.TYPE_2__*)* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"driver data not available\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @samsung_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %5 = alloca %struct.samsung_pin_ctrl*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.samsung_pinctrl_drv_data* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.samsung_pinctrl_drv_data* %13, %struct.samsung_pinctrl_drv_data** %4, align 8
  %14 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %15 = icmp ne %struct.samsung_pinctrl_drv_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %121

19:                                               ; preds = %1
  %20 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call %struct.samsung_pin_ctrl* @samsung_pinctrl_get_soc_data(%struct.samsung_pinctrl_drv_data* %20, %struct.platform_device* %21)
  store %struct.samsung_pin_ctrl* %22, %struct.samsung_pin_ctrl** %5, align 8
  %23 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %5, align 8
  %24 = call i64 @IS_ERR(%struct.samsung_pin_ctrl* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %5, align 8
  %31 = call i32 @PTR_ERR(%struct.samsung_pin_ctrl* %30)
  store i32 %31, i32* %2, align 4
  br label %121

32:                                               ; preds = %19
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %35 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %34, i32 0, i32 2
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_IRQ, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %7, align 8
  %39 = load %struct.resource*, %struct.resource** %7, align 8
  %40 = icmp ne %struct.resource* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.resource*, %struct.resource** %7, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %46 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %41, %32
  %48 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %5, align 8
  %49 = getelementptr inbounds %struct.samsung_pin_ctrl, %struct.samsung_pin_ctrl* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %5, align 8
  %54 = getelementptr inbounds %struct.samsung_pin_ctrl, %struct.samsung_pin_ctrl* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.samsung_pin_ctrl* (%struct.samsung_pinctrl_drv_data*, %struct.TYPE_2__*)*, %struct.samsung_pin_ctrl* (%struct.samsung_pinctrl_drv_data*, %struct.TYPE_2__*)** %56, align 8
  %58 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %59 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %5, align 8
  %60 = getelementptr inbounds %struct.samsung_pin_ctrl, %struct.samsung_pin_ctrl* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call %struct.samsung_pin_ctrl* %57(%struct.samsung_pinctrl_drv_data* %58, %struct.TYPE_2__* %61)
  %63 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %64 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %63, i32 0, i32 0
  store %struct.samsung_pin_ctrl* %62, %struct.samsung_pin_ctrl** %64, align 8
  %65 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %66 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %65, i32 0, i32 0
  %67 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %66, align 8
  %68 = call i64 @IS_ERR(%struct.samsung_pin_ctrl* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %52
  %71 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %72 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %71, i32 0, i32 0
  %73 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %72, align 8
  %74 = call i32 @PTR_ERR(%struct.samsung_pin_ctrl* %73)
  store i32 %74, i32* %2, align 4
  br label %121

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %79 = call i32 @samsung_pinctrl_register(%struct.platform_device* %77, %struct.samsung_pinctrl_drv_data* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %121

84:                                               ; preds = %76
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %87 = call i32 @samsung_gpiolib_register(%struct.platform_device* %85, %struct.samsung_pinctrl_drv_data* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %93 = call i32 @samsung_pinctrl_unregister(%struct.platform_device* %91, %struct.samsung_pinctrl_drv_data* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %121

95:                                               ; preds = %84
  %96 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %5, align 8
  %97 = getelementptr inbounds %struct.samsung_pin_ctrl, %struct.samsung_pin_ctrl* %96, i32 0, i32 1
  %98 = load i32 (%struct.samsung_pinctrl_drv_data*)*, i32 (%struct.samsung_pinctrl_drv_data*)** %97, align 8
  %99 = icmp ne i32 (%struct.samsung_pinctrl_drv_data*)* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %5, align 8
  %102 = getelementptr inbounds %struct.samsung_pin_ctrl, %struct.samsung_pin_ctrl* %101, i32 0, i32 1
  %103 = load i32 (%struct.samsung_pinctrl_drv_data*)*, i32 (%struct.samsung_pinctrl_drv_data*)** %102, align 8
  %104 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %105 = call i32 %103(%struct.samsung_pinctrl_drv_data* %104)
  br label %106

106:                                              ; preds = %100, %95
  %107 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %5, align 8
  %108 = getelementptr inbounds %struct.samsung_pin_ctrl, %struct.samsung_pin_ctrl* %107, i32 0, i32 0
  %109 = load i32 (%struct.samsung_pinctrl_drv_data*)*, i32 (%struct.samsung_pinctrl_drv_data*)** %108, align 8
  %110 = icmp ne i32 (%struct.samsung_pinctrl_drv_data*)* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %5, align 8
  %113 = getelementptr inbounds %struct.samsung_pin_ctrl, %struct.samsung_pin_ctrl* %112, i32 0, i32 0
  %114 = load i32 (%struct.samsung_pinctrl_drv_data*)*, i32 (%struct.samsung_pinctrl_drv_data*)** %113, align 8
  %115 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %116 = call i32 %114(%struct.samsung_pinctrl_drv_data* %115)
  br label %117

117:                                              ; preds = %111, %106
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %120 = call i32 @platform_set_drvdata(%struct.platform_device* %118, %struct.samsung_pinctrl_drv_data* %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %90, %82, %70, %26, %16
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.samsung_pinctrl_drv_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.samsung_pin_ctrl* @samsung_pinctrl_get_soc_data(%struct.samsung_pinctrl_drv_data*, %struct.platform_device*) #1

declare dso_local i64 @IS_ERR(%struct.samsung_pin_ctrl*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.samsung_pin_ctrl*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @samsung_pinctrl_register(%struct.platform_device*, %struct.samsung_pinctrl_drv_data*) #1

declare dso_local i32 @samsung_gpiolib_register(%struct.platform_device*, %struct.samsung_pinctrl_drv_data*) #1

declare dso_local i32 @samsung_pinctrl_unregister(%struct.platform_device*, %struct.samsung_pinctrl_drv_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.samsung_pinctrl_drv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
