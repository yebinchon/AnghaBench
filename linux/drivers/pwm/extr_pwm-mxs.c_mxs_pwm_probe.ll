; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mxs.c_mxs_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mxs.c_mxs_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mxs_pwm_chip = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, %struct.TYPE_7__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mxs_pwm_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fsl,pwm-number\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get pwm number: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to add pwm chip %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxs_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mxs_pwm_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mxs_pwm_chip* @devm_kzalloc(%struct.TYPE_7__* %12, i32 32, i32 %13)
  store %struct.mxs_pwm_chip* %14, %struct.mxs_pwm_chip** %5, align 8
  %15 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %16 = icmp ne %struct.mxs_pwm_chip* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %105

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %24 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %26 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %32 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %105

35:                                               ; preds = %20
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @devm_clk_get(%struct.TYPE_7__* %37, i32* null)
  %39 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %40 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %42 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %48 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %105

51:                                               ; preds = %35
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %55 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %56, align 8
  %57 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %58 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32* @mxs_pwm_ops, i32** %59, align 8
  %60 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %61 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  %63 = load %struct.device_node*, %struct.device_node** %4, align 8
  %64 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %65 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = call i32 @of_property_read_u32(%struct.device_node* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %51
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @dev_err(%struct.TYPE_7__* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %105

76:                                               ; preds = %51
  %77 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %78 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %77, i32 0, i32 0
  %79 = call i32 @pwmchip_add(%struct.TYPE_6__* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(%struct.TYPE_7__* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %105

88:                                               ; preds = %76
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %91 = call i32 @platform_set_drvdata(%struct.platform_device* %89, %struct.mxs_pwm_chip* %90)
  %92 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %93 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @stmp_reset_block(i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %100

99:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %105

100:                                              ; preds = %98
  %101 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %102 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %101, i32 0, i32 0
  %103 = call i32 @pwmchip_remove(%struct.TYPE_6__* %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %100, %99, %82, %70, %46, %30, %17
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.mxs_pwm_chip* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_6__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mxs_pwm_chip*) #1

declare dso_local i32 @stmp_reset_block(i32) #1

declare dso_local i32 @pwmchip_remove(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
