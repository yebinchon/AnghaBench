; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-puv3.c_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-puv3.c_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.puv3_pwm_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"OST_CLK\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@puv3_pwm_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"pwmchip_add() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.puv3_pwm_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.puv3_pwm_chip* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.puv3_pwm_chip* %10, %struct.puv3_pwm_chip** %4, align 8
  %11 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %12 = icmp ne %struct.puv3_pwm_chip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %82

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @devm_clk_get(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %21 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %23 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %29 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %82

32:                                               ; preds = %16
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %5, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = call i32 @devm_ioremap_resource(i32* %37, %struct.resource* %38)
  %40 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %41 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %43 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %49 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %82

52:                                               ; preds = %32
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %56 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i32* %54, i32** %57, align 8
  %58 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %59 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32* @puv3_pwm_ops, i32** %60, align 8
  %61 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %62 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %65 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %68 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %67, i32 0, i32 0
  %69 = call i32 @pwmchip_add(%struct.TYPE_2__* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %52
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %82

78:                                               ; preds = %52
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %4, align 8
  %81 = call i32 @platform_set_drvdata(%struct.platform_device* %79, %struct.puv3_pwm_chip* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %72, %47, %27, %13
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.puv3_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.puv3_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
