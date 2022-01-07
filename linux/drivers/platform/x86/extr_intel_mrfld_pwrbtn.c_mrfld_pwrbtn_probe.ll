; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mrfld_pwrbtn.c_mrfld_pwrbtn_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mrfld_pwrbtn.c_mrfld_pwrbtn_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.intel_soc_pmic = type { i32 }
%struct.input_dev = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"power-button/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@mrfld_pwrbtn_interrupt = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@BCOVE_MIRQLVL1 = common dso_local global i32 0, align 4
@BCOVE_LVL1_PWRBTN = common dso_local global i32 0, align 4
@BCOVE_MPBIRQ = common dso_local global i32 0, align 4
@BCOVE_PBIRQ_PBTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mrfld_pwrbtn_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrfld_pwrbtn_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.intel_soc_pmic*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.intel_soc_pmic* @dev_get_drvdata(i32 %13)
  store %struct.intel_soc_pmic* %14, %struct.intel_soc_pmic** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call i32 @platform_get_irq(%struct.platform_device* %15, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %94

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %22)
  store %struct.input_dev* %23, %struct.input_dev** %6, align 8
  %24 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %25 = icmp ne %struct.input_dev* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %94

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  %37 = load i32, i32* @BUS_HOST, align 4
  %38 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.device* %41, %struct.device** %44, align 8
  %45 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %46 = load i32, i32* @EV_KEY, align 4
  %47 = load i32, i32* @KEY_POWER, align 4
  %48 = call i32 @input_set_capability(%struct.input_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %50 = call i32 @input_register_device(%struct.input_dev* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %29
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %94

55:                                               ; preds = %29
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %58 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_set_drvdata(%struct.device* %56, i32 %59)
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @mrfld_pwrbtn_interrupt, align 4
  %64 = load i32, i32* @IRQF_ONESHOT, align 4
  %65 = load i32, i32* @IRQF_SHARED, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %71 = call i32 @devm_request_threaded_irq(%struct.device* %61, i32 %62, i32* null, i32 %63, i32 %66, i32 %69, %struct.input_dev* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %55
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %94

76:                                               ; preds = %55
  %77 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %78 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @BCOVE_MIRQLVL1, align 4
  %81 = load i32, i32* @BCOVE_LVL1_PWRBTN, align 4
  %82 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 0)
  %83 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %84 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BCOVE_MPBIRQ, align 4
  %87 = load i32, i32* @BCOVE_PBIRQ_PBTN, align 4
  %88 = call i32 @regmap_update_bits(i32 %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @device_init_wakeup(%struct.device* %89, i32 1)
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @dev_pm_set_wake_irq(%struct.device* %91, i32 %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %76, %74, %53, %26, %19
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.input_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @dev_pm_set_wake_irq(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
