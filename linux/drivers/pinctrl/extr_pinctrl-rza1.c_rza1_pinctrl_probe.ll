; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rza1_pinctrl = type { i32, %struct.TYPE_2__, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@rza1_pinctrl_ops = common dso_local global i32 0, align 4
@rza1_pinmux_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"RZ/A1 pin controller and gpio successfully registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rza1_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rza1_pinctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.rza1_pinctrl* @devm_kzalloc(i32* %7, i32 56, i32 %8)
  store %struct.rza1_pinctrl* %9, %struct.rza1_pinctrl** %4, align 8
  %10 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %11 = icmp ne %struct.rza1_pinctrl* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %19 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %18, i32 0, i32 4
  store i32* %17, i32** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %20, i32 0)
  %22 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %23 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %25 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %15
  %30 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %31 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %70

34:                                               ; preds = %15
  %35 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %36 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %35, i32 0, i32 2
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.rza1_pinctrl* %39)
  %41 = load i32, i32* @DRIVER_NAME, align 4
  %42 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %43 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %46 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32* @rza1_pinctrl_ops, i32** %47, align 8
  %48 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %49 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32* @rza1_pinmux_ops, i32** %50, align 8
  %51 = load i32, i32* @THIS_MODULE, align 4
  %52 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %53 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @of_device_get_match_data(i32* %56)
  %58 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %59 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %4, align 8
  %61 = call i32 @rza1_pinctrl_register(%struct.rza1_pinctrl* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %34
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %70

66:                                               ; preds = %34
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_info(i32* %68, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %64, %29, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.rza1_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rza1_pinctrl*) #1

declare dso_local i32 @of_device_get_match_data(i32*) #1

declare dso_local i32 @rza1_pinctrl_register(%struct.rza1_pinctrl*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
