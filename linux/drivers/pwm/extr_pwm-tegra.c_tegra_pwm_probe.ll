; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tegra.c_tegra_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tegra.c_tegra_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_pwm_chip = type { i32, %struct.TYPE_3__, %struct.TYPE_4__*, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to set max frequency: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Reset control is not found: %d\0A\00", align 1
@tegra_pwm_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"pwmchip_add() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_pwm_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tegra_pwm_chip* @devm_kzalloc(i32* %8, i32 64, i32 %9)
  store %struct.tegra_pwm_chip* %10, %struct.tegra_pwm_chip** %4, align 8
  %11 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %12 = icmp ne %struct.tegra_pwm_chip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %149

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.TYPE_4__* @of_device_get_match_data(i32* %18)
  %20 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %20, i32 0, i32 2
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %24, i32 0, i32 6
  store i32* %23, i32** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %5, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = call i32 @devm_ioremap_resource(i32* %30, %struct.resource* %31)
  %33 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %34 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %36 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %16
  %41 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %149

45:                                               ; preds = %16
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.tegra_pwm_chip* %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @devm_clk_get(i32* %50, i32* null)
  %52 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %53 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %61 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %149

64:                                               ; preds = %45
  %65 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %66 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %69 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @clk_set_rate(i32 %67, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %64
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %149

82:                                               ; preds = %64
  %83 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %84 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @clk_get_rate(i32 %85)
  %87 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %88 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @devm_reset_control_get_exclusive(i32* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %93 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %95 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %82
  %100 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %101 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @PTR_ERR(i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %149

109:                                              ; preds = %82
  %110 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %111 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @reset_control_deassert(i32 %112)
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %117 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  store i32* %115, i32** %118, align 8
  %119 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %120 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i32* @tegra_pwm_ops, i32** %121, align 8
  %122 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %123 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 -1, i32* %124, align 8
  %125 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %126 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %131 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %134 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %133, i32 0, i32 1
  %135 = call i32 @pwmchip_add(%struct.TYPE_3__* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %109
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @dev_err(i32* %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %144 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @reset_control_assert(i32 %145)
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %2, align 4
  br label %149

148:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %138, %99, %76, %59, %40, %13
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.tegra_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_pwm_chip*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @devm_reset_control_get_exclusive(i32*, i8*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_3__*) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
