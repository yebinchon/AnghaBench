; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-ep93xx.c_ep93xx_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-ep93xx.c_ep93xx_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ep93xx_pwm = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pwm_clk\00", align 1
@ep93xx_pwm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xx_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ep93xx_pwm*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ep93xx_pwm* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.ep93xx_pwm* %10, %struct.ep93xx_pwm** %4, align 8
  %11 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %12 = icmp ne %struct.ep93xx_pwm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %25 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %27 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %33 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %16
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @devm_clk_get(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %41 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %43 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %49 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %78

52:                                               ; preds = %36
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %56 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i32* %54, i32** %57, align 8
  %58 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %59 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32* @ep93xx_pwm_ops, i32** %60, align 8
  %61 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %62 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %65 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %68 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %67, i32 0, i32 0
  %69 = call i32 @pwmchip_add(%struct.TYPE_2__* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %52
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %78

74:                                               ; preds = %52
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %4, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %75, %struct.ep93xx_pwm* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %72, %47, %31, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.ep93xx_pwm* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ep93xx_pwm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
