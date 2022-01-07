; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pxa.c_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pxa.c_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.platform_device_id = type { i32 }
%struct.pxa_pwm_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pxa_pwm_ops = common dso_local global i32 0, align 4
@HAS_SECONDARY_PWM = common dso_local global i32 0, align 4
@pxa_pwm_of_xlate = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pwmchip_add() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platform_device_id*, align 8
  %5 = alloca %struct.pxa_pwm_chip*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %8)
  store %struct.platform_device_id* %9, %struct.platform_device_id** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @CONFIG_OF, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %15 = icmp eq %struct.platform_device_id* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.platform_device_id* @pxa_pwm_get_id_dt(i32* %18)
  store %struct.platform_device_id* %19, %struct.platform_device_id** %4, align 8
  br label %20

20:                                               ; preds = %16, %13, %1
  %21 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %22 = icmp eq %struct.platform_device_id* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %122

26:                                               ; preds = %20
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.pxa_pwm_chip* @devm_kzalloc(i32* %28, i32 40, i32 %29)
  store %struct.pxa_pwm_chip* %30, %struct.pxa_pwm_chip** %5, align 8
  %31 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %32 = icmp eq %struct.pxa_pwm_chip* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %122

36:                                               ; preds = %26
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @devm_clk_get(i32* %38, i32* null)
  %40 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %41 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %43 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %49 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %122

52:                                               ; preds = %36
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %56 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  store i32* %54, i32** %57, align 8
  %58 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %59 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  store i32* @pxa_pwm_ops, i32** %60, align 8
  %61 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %62 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %65 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @HAS_SECONDARY_PWM, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 2, i32 1
  %72 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %73 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @CONFIG_OF, align 4
  %76 = call i64 @IS_ENABLED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %52
  %79 = load i32, i32* @pxa_pwm_of_xlate, align 4
  %80 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %81 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %84 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %78, %52
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = load i32, i32* @IORESOURCE_MEM, align 4
  %89 = call %struct.resource* @platform_get_resource(%struct.platform_device* %87, i32 %88, i32 0)
  store %struct.resource* %89, %struct.resource** %6, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.resource*, %struct.resource** %6, align 8
  %93 = call i32 @devm_ioremap_resource(i32* %91, %struct.resource* %92)
  %94 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %95 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %97 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @IS_ERR(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %86
  %102 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %103 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @PTR_ERR(i32 %104)
  store i32 %105, i32* %2, align 4
  br label %122

106:                                              ; preds = %86
  %107 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %108 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %107, i32 0, i32 0
  %109 = call i32 @pwmchip_add(%struct.TYPE_2__* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @dev_err(i32* %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %122

118:                                              ; preds = %106
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %5, align 8
  %121 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.pxa_pwm_chip* %120)
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %112, %101, %47, %33, %23
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.platform_device_id* @pxa_pwm_get_id_dt(i32*) #1

declare dso_local %struct.pxa_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxa_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
