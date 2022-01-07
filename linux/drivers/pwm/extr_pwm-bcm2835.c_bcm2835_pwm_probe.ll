; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm2835.c_bcm2835_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm2835.c_bcm2835_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bcm2835_pwm = type { i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"clock not found: %d\0A\00", align 1
@bcm2835_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcm2835_pwm*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.bcm2835_pwm* @devm_kzalloc(i32* %8, i32 56, i32 %9)
  store %struct.bcm2835_pwm* %10, %struct.bcm2835_pwm** %4, align 8
  %11 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %12 = icmp ne %struct.bcm2835_pwm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %111

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %20 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %5, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.resource*, %struct.resource** %5, align 8
  %27 = call i32 @devm_ioremap_resource(i32* %25, %struct.resource* %26)
  %28 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %29 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %31 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %16
  %36 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %37 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %111

40:                                               ; preds = %16
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @devm_clk_get(i32* %42, i32* null)
  %44 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %45 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %47 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %40
  %52 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %53 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %51
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %111

67:                                               ; preds = %40
  %68 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %69 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @clk_prepare_enable(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %111

76:                                               ; preds = %67
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %80 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i32* %78, i32** %81, align 8
  %82 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %83 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i32* @bcm2835_pwm_ops, i32** %84, align 8
  %85 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %86 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 2, i32* %87, align 8
  %88 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %89 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %90 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %93 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 3, i32* %94, align 4
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %97 = call i32 @platform_set_drvdata(%struct.platform_device* %95, %struct.bcm2835_pwm* %96)
  %98 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %99 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %98, i32 0, i32 1
  %100 = call i32 @pwmchip_add(%struct.TYPE_2__* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %76
  br label %105

104:                                              ; preds = %76
  store i32 0, i32* %2, align 4
  br label %111

105:                                              ; preds = %103
  %106 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %4, align 8
  %107 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @clk_disable_unprepare(i32 %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %105, %104, %74, %65, %35, %13
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.bcm2835_pwm* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm2835_pwm*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
