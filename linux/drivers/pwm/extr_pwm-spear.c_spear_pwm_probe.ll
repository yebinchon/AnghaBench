; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-spear.c_spear_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-spear.c_spear_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.spear_pwm_chip = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32*, %struct.TYPE_7__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@spear_pwm_ops = common dso_local global i32 0, align 4
@NUM_PWM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"st,spear1340-pwm\00", align 1
@PWMMCR = common dso_local global i64 0, align 8
@PWMMCR_PWM_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"pwmchip_add() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.spear_pwm_chip*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.spear_pwm_chip* @devm_kzalloc(%struct.TYPE_7__* %14, i32 40, i32 %15)
  store %struct.spear_pwm_chip* %16, %struct.spear_pwm_chip** %5, align 8
  %17 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %18 = icmp ne %struct.spear_pwm_chip* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %140

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %6, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = call i64 @devm_ioremap_resource(%struct.TYPE_7__* %27, %struct.resource* %28)
  %30 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %31 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %33 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @IS_ERR(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %39 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @PTR_ERR(i64 %40)
  store i32 %41, i32* %2, align 4
  br label %140

42:                                               ; preds = %22
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i64 @devm_clk_get(%struct.TYPE_7__* %44, i32* null)
  %46 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %47 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %49 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @IS_ERR(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %55 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @PTR_ERR(i64 %56)
  store i32 %57, i32* %2, align 4
  br label %140

58:                                               ; preds = %42
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %61 = call i32 @platform_set_drvdata(%struct.platform_device* %59, %struct.spear_pwm_chip* %60)
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %65 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %66, align 8
  %67 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %68 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32* @spear_pwm_ops, i32** %69, align 8
  %70 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %71 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load i32, i32* @NUM_PWM, align 4
  %74 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %75 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %78 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @clk_prepare(i64 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %58
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %140

85:                                               ; preds = %58
  %86 = load %struct.device_node*, %struct.device_node** %4, align 8
  %87 = call i64 @of_device_is_compatible(%struct.device_node* %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %85
  %90 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %91 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @clk_enable(i64 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %98 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @clk_unprepare(i64 %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %140

102:                                              ; preds = %89
  %103 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %104 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PWMMCR, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @readl_relaxed(i64 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @PWMMCR_PWM_ENABLE, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %114 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PWMMCR, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel_relaxed(i32 %112, i64 %117)
  %119 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %120 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @clk_disable(i64 %121)
  br label %123

123:                                              ; preds = %102, %85
  %124 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %125 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %124, i32 0, i32 1
  %126 = call i32 @pwmchip_add(%struct.TYPE_6__* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %131 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @clk_unprepare(i64 %132)
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @dev_err(%struct.TYPE_7__* %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %129, %123
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %96, %83, %53, %37, %19
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.spear_pwm_chip* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spear_pwm_chip*) #1

declare dso_local i32 @clk_prepare(i64) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @clk_enable(i64) #1

declare dso_local i32 @clk_unprepare(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @clk_disable(i64) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
