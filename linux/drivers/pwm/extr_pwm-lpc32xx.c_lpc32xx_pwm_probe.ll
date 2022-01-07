; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc32xx.c_lpc32xx_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc32xx.c_lpc32xx_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpc32xx_pwm_chip = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@lpc32xx_pwm_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to add PWM chip, error %d\0A\00", align 1
@PWM_PIN_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc32xx_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc32xx_pwm_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lpc32xx_pwm_chip* @devm_kzalloc(i32* %9, i32 48, i32 %10)
  store %struct.lpc32xx_pwm_chip* %11, %struct.lpc32xx_pwm_chip** %4, align 8
  %12 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %13 = icmp ne %struct.lpc32xx_pwm_chip* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %116

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = call i64 @devm_ioremap_resource(i32* %22, %struct.resource* %23)
  %25 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %26 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %28 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @IS_ERR(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %34 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @PTR_ERR(i64 %35)
  store i32 %36, i32* %2, align 4
  br label %116

37:                                               ; preds = %17
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i64 @devm_clk_get(i32* %39, i32* null)
  %41 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %44 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @IS_ERR(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %50 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @PTR_ERR(i64 %51)
  store i32 %52, i32* %2, align 4
  br label %116

53:                                               ; preds = %37
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %57 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i32* %55, i32** %58, align 8
  %59 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %60 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32* @lpc32xx_pwm_ops, i32** %61, align 8
  %62 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %63 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %66 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 -1, i32* %67, align 4
  %68 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %69 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %68, i32 0, i32 0
  %70 = call i32 @pwmchip_add(%struct.TYPE_4__* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %53
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %116

79:                                               ; preds = %53
  %80 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %81 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %84 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %82, %91
  %93 = call i32 @readl(i64 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @PWM_PIN_LEVEL, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %100 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %103 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %101, %110
  %112 = call i32 @writel(i32 %98, i64 %111)
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %4, align 8
  %115 = call i32 @platform_set_drvdata(%struct.platform_device* %113, %struct.lpc32xx_pwm_chip* %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %79, %73, %48, %32, %14
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.lpc32xx_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc32xx_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
