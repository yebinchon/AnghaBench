; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_int0002_vgpio.c_int0002_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_int0002_vgpio.c_int0002_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.x86_cpu_id = type { i64 }
%struct.irq_chip = type { i32 }
%struct.gpio_chip = type { i32, %struct.TYPE_2__, i64, i32, i8*, i32, i8*, i32, %struct.device*, i32 }
%struct.TYPE_2__ = type { i32 }

@int0002_cpu_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@int0002_gpio_get = common dso_local global i8* null, align 8
@int0002_gpio_set = common dso_local global i32 0, align 4
@int0002_gpio_direction_output = common dso_local global i32 0, align 4
@GPE0A_PME_B0_VIRT_GPIO_PIN = common dso_local global i64 0, align 8
@int0002_init_irq_valid_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error adding gpio chip: %d\0A\00", align 1
@int0002_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"INT0002\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Error requesting IRQ %d: %d\0A\00", align 1
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Error adding irqchip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @int0002_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int0002_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.x86_cpu_id*, align 8
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load i32, i32* @int0002_cpu_ids, align 4
  %13 = call %struct.x86_cpu_id* @x86_match_cpu(i32 %12)
  store %struct.x86_cpu_id* %13, %struct.x86_cpu_id** %5, align 8
  %14 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %5, align 8
  %15 = icmp ne %struct.x86_cpu_id* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %117

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %2, align 4
  br label %117

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.gpio_chip* @devm_kzalloc(%struct.device* %27, i32 72, i32 %28)
  store %struct.gpio_chip* %29, %struct.gpio_chip** %7, align 8
  %30 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %31 = icmp ne %struct.gpio_chip* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %117

35:                                               ; preds = %26
  %36 = load i32, i32* @DRV_NAME, align 4
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %41 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %40, i32 0, i32 8
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load i32, i32* @THIS_MODULE, align 4
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** @int0002_gpio_get, align 8
  %46 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %47 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @int0002_gpio_set, align 4
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %50 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @int0002_gpio_get, align 8
  %52 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %53 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @int0002_gpio_direction_output, align 4
  %55 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %56 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %58 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %57, i32 0, i32 0
  store i32 -1, i32* %58, align 8
  %59 = load i64, i64* @GPE0A_PME_B0_VIRT_GPIO_PIN, align 8
  %60 = add nsw i64 %59, 1
  %61 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %62 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* @int0002_init_irq_valid_mask, align 4
  %64 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %65 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %70 = call i32 @devm_gpiochip_add_data(%struct.device* %68, %struct.gpio_chip* %69, i32* null)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %35
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %117

78:                                               ; preds = %35
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @int0002_irq, align 4
  %82 = load i32, i32* @IRQF_SHARED, align 4
  %83 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %84 = call i32 @devm_request_irq(%struct.device* %79, i32 %80, i32 %81, i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.gpio_chip* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %117

93:                                               ; preds = %78
  %94 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %5, align 8
  %95 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.irq_chip*
  store %struct.irq_chip* %97, %struct.irq_chip** %6, align 8
  %98 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %99 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %100 = load i32, i32* @handle_edge_irq, align 4
  %101 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %102 = call i32 @gpiochip_irqchip_add(%struct.gpio_chip* %98, %struct.irq_chip* %99, i32 0, i32 %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %93
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %117

110:                                              ; preds = %93
  %111 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %112 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip* %111, %struct.irq_chip* %112, i32 %113, i32* null)
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @device_init_wakeup(%struct.device* %115, i32 1)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %110, %105, %87, %73, %32, %24, %16
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.x86_cpu_id* @x86_match_cpu(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.gpio_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.gpio_chip*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.gpio_chip*) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.gpio_chip*, %struct.irq_chip*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip*, %struct.irq_chip*, i32, i32*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
