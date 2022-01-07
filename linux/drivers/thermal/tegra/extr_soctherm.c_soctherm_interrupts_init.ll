; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_interrupts_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_interrupts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tegra_soctherm = type { i64, i64 }

@TEGRA_SOC_OC_IRQ_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"soctherm_oc_int_init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"get 'thermal_irq' failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"get 'edp_irq' failed.\0A\00", align 1
@soctherm_thermal_isr = common dso_local global i32 0, align 4
@soctherm_thermal_isr_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"request_irq 'thermal_irq' failed.\0A\00", align 1
@soctherm_edp_isr = common dso_local global i32 0, align 4
@soctherm_edp_isr_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"soctherm_edp\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"request_irq 'edp_irq' failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.tegra_soctherm*)* @soctherm_interrupts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soctherm_interrupts_init(%struct.platform_device* %0, %struct.tegra_soctherm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.tegra_soctherm*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.tegra_soctherm* %1, %struct.tegra_soctherm** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = load i32, i32* @TEGRA_SOC_OC_IRQ_MAX, align 4
  %14 = call i32 @soctherm_oc_int_init(%struct.device_node* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %90

22:                                               ; preds = %2
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = call i8* @platform_get_irq(%struct.platform_device* %23, i32 0)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %27 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_dbg(%struct.TYPE_5__* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %90

36:                                               ; preds = %22
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = call i8* @platform_get_irq(%struct.platform_device* %37, i32 1)
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %43 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @dev_dbg(%struct.TYPE_5__* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %90

50:                                               ; preds = %36
  %51 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %54 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @soctherm_thermal_isr, align 4
  %57 = load i32, i32* @soctherm_thermal_isr_thread, align 4
  %58 = load i32, i32* @IRQF_ONESHOT, align 4
  %59 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i8* @dev_name(%struct.TYPE_5__* %60)
  %62 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %63 = call i32 @devm_request_threaded_irq(%struct.TYPE_5__* %52, i64 %55, i32 %56, i32 %57, i32 %58, i8* %61, %struct.tegra_soctherm* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %50
  %67 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_err(%struct.TYPE_5__* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %90

71:                                               ; preds = %50
  %72 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %75 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @soctherm_edp_isr, align 4
  %78 = load i32, i32* @soctherm_edp_isr_thread, align 4
  %79 = load i32, i32* @IRQF_ONESHOT, align 4
  %80 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %81 = call i32 @devm_request_threaded_irq(%struct.TYPE_5__* %73, i64 %76, i32 %77, i32 %78, i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.tegra_soctherm* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %71
  %85 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(%struct.TYPE_5__* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %90

89:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %84, %66, %46, %32, %17
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @soctherm_oc_int_init(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_5__*, i64, i32, i32, i32, i8*, %struct.tegra_soctherm*) #1

declare dso_local i8* @dev_name(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
