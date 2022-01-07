; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_stm32_iwdg.c_stm32_iwdg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_stm32_iwdg.c_stm32_iwdg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.watchdog_device = type { i32, i32, i32*, i32*, %struct.device* }
%struct.stm32_iwdg = type { i32, %struct.TYPE_2__*, %struct.watchdog_device, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Could not get resource\0A\00", align 1
@stm32_iwdg_info = common dso_local global i32 0, align 4
@stm32_iwdg_ops = common dso_local global i32 0, align 4
@RLR_MIN = common dso_local global i32 0, align 4
@PR_MIN = common dso_local global i32 0, align 4
@RLR_MAX = common dso_local global i32 0, align 4
@WATCHDOG_NOWAYOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_iwdg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_iwdg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca %struct.stm32_iwdg*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.stm32_iwdg* @devm_kzalloc(%struct.device* %10, i32 56, i32 %11)
  store %struct.stm32_iwdg* %12, %struct.stm32_iwdg** %6, align 8
  %13 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %14 = icmp ne %struct.stm32_iwdg* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %111

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %20)
  %22 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %23 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %22, i32 0, i32 1
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %23, align 8
  %24 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %25 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %111

31:                                               ; preds = %18
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %32, i32 0)
  %34 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %35 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %37 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %45 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %111

48:                                               ; preds = %31
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %51 = call i32 @stm32_iwdg_clk_init(%struct.platform_device* %49, %struct.stm32_iwdg* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %111

56:                                               ; preds = %48
  %57 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %58 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %57, i32 0, i32 2
  store %struct.watchdog_device* %58, %struct.watchdog_device** %5, align 8
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %61 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %60, i32 0, i32 4
  store %struct.device* %59, %struct.device** %61, align 8
  %62 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %63 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %62, i32 0, i32 3
  store i32* @stm32_iwdg_info, i32** %63, align 8
  %64 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %65 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %64, i32 0, i32 2
  store i32* @stm32_iwdg_ops, i32** %65, align 8
  %66 = load i32, i32* @RLR_MIN, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* @PR_MIN, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %71 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @DIV_ROUND_UP(i32 %69, i32 %72)
  %74 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %75 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @RLR_MAX, align 4
  %77 = add nsw i32 %76, 1
  %78 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %79 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %77, %82
  %84 = mul nsw i32 %83, 1000
  %85 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %86 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sdiv i32 %84, %87
  %89 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %90 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %92 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %93 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %91, %struct.stm32_iwdg* %92)
  %94 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %95 = load i32, i32* @WATCHDOG_NOWAYOUT, align 4
  %96 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %94, i32 %95)
  %97 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %97, i32 0, %struct.device* %98)
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %102 = call i32 @devm_watchdog_register_device(%struct.device* %100, %struct.watchdog_device* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %56
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %111

107:                                              ; preds = %56
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %6, align 8
  %110 = call i32 @platform_set_drvdata(%struct.platform_device* %108, %struct.stm32_iwdg* %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %105, %54, %41, %28, %15
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.stm32_iwdg* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @stm32_iwdg_clk_init(%struct.platform_device*, %struct.stm32_iwdg*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.stm32_iwdg*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_iwdg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
