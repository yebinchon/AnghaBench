; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32, i32, %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.byt_gpio = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.gpio_chip, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.resource = type { i64 }

@byt_gpio_chip = common dso_local global %struct.gpio_chip zeroinitializer, align 8
@byt_init_irq_valid_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed adding byt-gpio chip\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to add GPIO pin range\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@byt_irqchip = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to add irqchip\0A\00", align 1
@byt_gpio_irq_handler = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.byt_gpio*)* @byt_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_gpio_probe(%struct.byt_gpio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.byt_gpio*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.byt_gpio* %0, %struct.byt_gpio** %3, align 8
  %7 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %8 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %7, i32 0, i32 2
  %9 = bitcast %struct.gpio_chip* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.gpio_chip* @byt_gpio_chip to i8*), i64 32, i1 false)
  %10 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %11 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %10, i32 0, i32 2
  store %struct.gpio_chip* %11, %struct.gpio_chip** %4, align 8
  %12 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %13 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @dev_name(i32* %15)
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %24 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 4
  store i32* %26, i32** %28, align 8
  %29 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %30 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @byt_init_irq_valid_mask, align 4
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %41 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %45 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %46 = call i32 @devm_gpiochip_add_data(i32* %43, %struct.gpio_chip* %44, %struct.byt_gpio* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %1
  %50 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %51 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %118

56:                                               ; preds = %1
  %57 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %58 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %57, i32 0, i32 2
  %59 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %60 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @dev_name(i32* %62)
  %64 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %65 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @gpiochip_add_pin_range(%struct.gpio_chip* %58, i32 %63, i32 0, i32 0, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %56
  %73 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %74 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %118

79:                                               ; preds = %56
  %80 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %81 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* @IORESOURCE_IRQ, align 4
  %84 = call %struct.resource* @platform_get_resource(%struct.TYPE_6__* %82, i32 %83, i32 0)
  store %struct.resource* %84, %struct.resource** %5, align 8
  %85 = load %struct.resource*, %struct.resource** %5, align 8
  %86 = icmp ne %struct.resource* %85, null
  br i1 %86, label %87, label %116

87:                                               ; preds = %79
  %88 = load %struct.resource*, %struct.resource** %5, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %87
  %93 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %94 = call i32 @byt_gpio_irq_init_hw(%struct.byt_gpio* %93)
  %95 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %96 = load i32, i32* @handle_bad_irq, align 4
  %97 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %98 = call i32 @gpiochip_irqchip_add(%struct.gpio_chip* %95, i32* @byt_irqchip, i32 0, i32 %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %92
  %102 = load %struct.byt_gpio*, %struct.byt_gpio** %3, align 8
  %103 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %118

108:                                              ; preds = %92
  %109 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %110 = load %struct.resource*, %struct.resource** %5, align 8
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* @byt_gpio_irq_handler, align 4
  %115 = call i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip* %109, i32* @byt_irqchip, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %108, %87, %79
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %101, %72, %49
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_name(i32*) #2

declare dso_local i32 @devm_gpiochip_add_data(i32*, %struct.gpio_chip*, %struct.byt_gpio*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @gpiochip_add_pin_range(%struct.gpio_chip*, i32, i32, i32, i32) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @byt_gpio_irq_init_hw(%struct.byt_gpio*) #2

declare dso_local i32 @gpiochip_irqchip_add(%struct.gpio_chip*, i32*, i32, i32, i32) #2

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
