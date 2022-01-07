; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-zx.c_zx_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-zx.c_zx_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.zx_pwm_chip = type { %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"wclk\00", align 1
@zx_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@ZX_PWM_MODE = common dso_local global i32 0, align 4
@ZX_PWM_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zx_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.zx_pwm_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.zx_pwm_chip* @devm_kzalloc(i32* %9, i32 56, i32 %10)
  store %struct.zx_pwm_chip* %11, %struct.zx_pwm_chip** %4, align 8
  %12 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %13 = icmp ne %struct.zx_pwm_chip* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %132

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = call i8* @devm_ioremap_resource(i32* %22, %struct.resource* %23)
  %25 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %26 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %28 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @IS_ERR(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %34 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  store i32 %36, i32* %2, align 4
  br label %132

37:                                               ; preds = %17
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i8* @devm_clk_get(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %42 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %44 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %50 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %2, align 4
  br label %132

53:                                               ; preds = %37
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i8* @devm_clk_get(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %58 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %60 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %66 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %2, align 4
  br label %132

69:                                               ; preds = %53
  %70 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %71 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @clk_prepare_enable(i8* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %132

78:                                               ; preds = %69
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %82 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  store i32* %80, i32** %83, align 8
  %84 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %85 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  store i32* @zx_pwm_ops, i32** %86, align 8
  %87 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %88 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 8
  %90 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %91 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 4, i32* %92, align 4
  %93 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %94 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %95 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 4
  %97 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %98 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 3, i32* %99, align 8
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %113, %78
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %103 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ult i32 %101, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @ZX_PWM_MODE, align 4
  %111 = load i32, i32* @ZX_PWM_EN, align 4
  %112 = call i32 @zx_pwm_set_mask(%struct.zx_pwm_chip* %108, i32 %109, i32 %110, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %6, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %100

116:                                              ; preds = %100
  %117 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %118 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %117, i32 0, i32 0
  %119 = call i32 @pwmchip_add(%struct.TYPE_2__* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %132

128:                                              ; preds = %116
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %4, align 8
  %131 = call i32 @platform_set_drvdata(%struct.platform_device* %129, %struct.zx_pwm_chip* %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %122, %76, %64, %48, %32, %14
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.zx_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @zx_pwm_set_mask(%struct.zx_pwm_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zx_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
