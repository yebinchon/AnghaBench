; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-tcb.c_atmel_tcb_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-tcb.c_atmel_tcb_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.atmel_tcb_pwm_chip = type { %struct.atmel_tc*, %struct.TYPE_4__, i32 }
%struct.atmel_tc = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [9 x i8] c"tc-block\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"failed to get Timer Counter Block number from device tree (error: %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to allocate Timer Counter Block\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@atmel_tcb_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@NPWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_tcb_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tcb_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_tcb_pwm_chip*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.atmel_tc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call i32 @of_property_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %102

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.atmel_tc* @atmel_tc_alloc(i32 %24)
  store %struct.atmel_tc* %25, %struct.atmel_tc** %6, align 8
  %26 = load %struct.atmel_tc*, %struct.atmel_tc** %6, align 8
  %27 = icmp eq %struct.atmel_tc* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %102

34:                                               ; preds = %23
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.atmel_tcb_pwm_chip* @devm_kzalloc(%struct.TYPE_5__* %36, i32 48, i32 %37)
  store %struct.atmel_tcb_pwm_chip* %38, %struct.atmel_tcb_pwm_chip** %4, align 8
  %39 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %40 = icmp eq %struct.atmel_tcb_pwm_chip* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %98

44:                                               ; preds = %34
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %48 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %49, align 8
  %50 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %51 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store i32* @atmel_tcb_pwm_ops, i32** %52, align 8
  %53 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %54 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %55 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %58 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 3, i32* %59, align 8
  %60 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %61 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 -1, i32* %62, align 4
  %63 = load i32, i32* @NPWM, align 4
  %64 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %65 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  %67 = load %struct.atmel_tc*, %struct.atmel_tc** %6, align 8
  %68 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %69 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %68, i32 0, i32 0
  store %struct.atmel_tc* %67, %struct.atmel_tc** %69, align 8
  %70 = load %struct.atmel_tc*, %struct.atmel_tc** %6, align 8
  %71 = getelementptr inbounds %struct.atmel_tc, %struct.atmel_tc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @clk_prepare_enable(i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %44
  br label %98

77:                                               ; preds = %44
  %78 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %79 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %78, i32 0, i32 2
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %82 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %81, i32 0, i32 1
  %83 = call i32 @pwmchip_add(%struct.TYPE_4__* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %91

87:                                               ; preds = %77
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %90 = call i32 @platform_set_drvdata(%struct.platform_device* %88, %struct.atmel_tcb_pwm_chip* %89)
  store i32 0, i32* %2, align 4
  br label %102

91:                                               ; preds = %86
  %92 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %4, align 8
  %93 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %92, i32 0, i32 0
  %94 = load %struct.atmel_tc*, %struct.atmel_tc** %93, align 8
  %95 = getelementptr inbounds %struct.atmel_tc, %struct.atmel_tc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @clk_disable_unprepare(i32 %96)
  br label %98

98:                                               ; preds = %91, %76, %41
  %99 = load %struct.atmel_tc*, %struct.atmel_tc** %6, align 8
  %100 = call i32 @atmel_tc_free(%struct.atmel_tc* %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %87, %28, %17
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local %struct.atmel_tc* @atmel_tc_alloc(i32) #1

declare dso_local %struct.atmel_tcb_pwm_chip* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_tcb_pwm_chip*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @atmel_tc_free(%struct.atmel_tc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
