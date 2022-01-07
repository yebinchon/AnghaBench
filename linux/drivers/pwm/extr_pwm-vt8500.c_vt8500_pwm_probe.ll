; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-vt8500.c_vt8500_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-vt8500.c_vt8500_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.vt8500_chip = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_7__* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid devicetree node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vt8500_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@VT8500_NR_PWMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"clock source not specified\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to prepare clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to add PWM chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vt8500_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vt8500_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(%struct.TYPE_7__* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %123

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.vt8500_chip* @devm_kzalloc(%struct.TYPE_7__* %22, i32 48, i32 %23)
  store %struct.vt8500_chip* %24, %struct.vt8500_chip** %4, align 8
  %25 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %26 = icmp eq %struct.vt8500_chip* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %123

30:                                               ; preds = %20
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %34 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %37 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  store i32* @vt8500_pwm_ops, i32** %38, align 8
  %39 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %40 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %41 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %44 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 3, i32* %45, align 8
  %46 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %47 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 4
  %49 = load i32, i32* @VT8500_NR_PWMS, align 4
  %50 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %51 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 @devm_clk_get(%struct.TYPE_7__* %54, i32* null)
  %56 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %57 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %59 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %30
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.TYPE_7__* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %68 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %2, align 4
  br label %123

71:                                               ; preds = %30
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = call %struct.resource* @platform_get_resource(%struct.platform_device* %72, i32 %73, i32 0)
  store %struct.resource* %74, %struct.resource** %5, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.resource*, %struct.resource** %5, align 8
  %78 = call i32 @devm_ioremap_resource(%struct.TYPE_7__* %76, %struct.resource* %77)
  %79 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %80 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %82 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %71
  %87 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %88 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @PTR_ERR(i32 %89)
  store i32 %90, i32* %2, align 4
  br label %123

91:                                               ; preds = %71
  %92 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %93 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @clk_prepare(i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_err(%struct.TYPE_7__* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %123

103:                                              ; preds = %91
  %104 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %105 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %104, i32 0, i32 1
  %106 = call i32 @pwmchip_add(%struct.TYPE_6__* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @dev_err(%struct.TYPE_7__* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %114 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @clk_unprepare(i32 %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %123

118:                                              ; preds = %103
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.vt8500_chip*, %struct.vt8500_chip** %4, align 8
  %121 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.vt8500_chip* %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %118, %109, %98, %86, %63, %27, %14
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.vt8500_chip* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_6__*) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vt8500_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
