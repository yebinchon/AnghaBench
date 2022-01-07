; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiecap.c_ecap_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiecap.c_ecap_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ecap_pwm_chip = type { %struct.TYPE_8__, %struct.clk*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_9__* }
%struct.clk = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ti,am33xx-ecap\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Binding is obsolete.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to get clock rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ecap_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"pwmchip_add() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ecap_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecap_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ecap_pwm_chip*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ecap_pwm_chip* @devm_kzalloc(%struct.TYPE_9__* %14, i32 48, i32 %15)
  store %struct.ecap_pwm_chip* %16, %struct.ecap_pwm_chip** %5, align 8
  %17 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %18 = icmp ne %struct.ecap_pwm_chip* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %128

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.clk* @devm_clk_get(%struct.TYPE_9__* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %25, %struct.clk** %7, align 8
  %26 = load %struct.clk*, %struct.clk** %7, align 8
  %27 = call i64 @IS_ERR(%struct.clk* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i64 @of_device_is_compatible(%struct.device_node* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_warn(%struct.TYPE_9__* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = call %struct.clk* @devm_clk_get(%struct.TYPE_9__* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %41, %struct.clk** %7, align 8
  br label %42

42:                                               ; preds = %33, %29
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.clk*, %struct.clk** %7, align 8
  %45 = call i64 @IS_ERR(%struct.clk* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.clk*, %struct.clk** %7, align 8
  %52 = call i32 @PTR_ERR(%struct.clk* %51)
  store i32 %52, i32* %2, align 4
  br label %128

53:                                               ; preds = %43
  %54 = load %struct.clk*, %struct.clk** %7, align 8
  %55 = call i32 @clk_get_rate(%struct.clk* %54)
  %56 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %57 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %59 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %53
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %128

68:                                               ; preds = %53
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %72 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %73, align 8
  %74 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %75 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 4
  store i32* @ecap_pwm_ops, i32** %76, align 8
  %77 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %78 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %79 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %82 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 3, i32* %83, align 8
  %84 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %85 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 -1, i32* %86, align 4
  %87 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %88 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load i32, i32* @IORESOURCE_MEM, align 4
  %92 = call %struct.resource* @platform_get_resource(%struct.platform_device* %90, i32 %91, i32 0)
  store %struct.resource* %92, %struct.resource** %6, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.resource*, %struct.resource** %6, align 8
  %96 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_9__* %94, %struct.resource* %95)
  %97 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %98 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %97, i32 0, i32 1
  store %struct.clk* %96, %struct.clk** %98, align 8
  %99 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %100 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %99, i32 0, i32 1
  %101 = load %struct.clk*, %struct.clk** %100, align 8
  %102 = call i64 @IS_ERR(%struct.clk* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %68
  %105 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %106 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %105, i32 0, i32 1
  %107 = load %struct.clk*, %struct.clk** %106, align 8
  %108 = call i32 @PTR_ERR(%struct.clk* %107)
  store i32 %108, i32* %2, align 4
  br label %128

109:                                              ; preds = %68
  %110 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %111 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %110, i32 0, i32 0
  %112 = call i32 @pwmchip_add(%struct.TYPE_8__* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %2, align 4
  br label %128

121:                                              ; preds = %109
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %124 = call i32 @platform_set_drvdata(%struct.platform_device* %122, %struct.ecap_pwm_chip* %123)
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %121, %115, %104, %62, %47, %19
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.ecap_pwm_chip* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ecap_pwm_chip*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
