; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxnas_gpio_bank = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.device_node*, %struct.TYPE_8__* }
%struct.device_node = type { i32 }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.of_phandle_args = type { i32* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"gpio-ranges property not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PINS_PER_BANK = common dso_local global i32 0, align 4
@oxnas_gpio_banks = common dso_local global %struct.oxnas_gpio_bank* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid gpio-ranges base arg\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"invalid gpio-ranges count arg\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to add GPIO chip %u: %d\0A\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to add IRQ chip %u: %d\0A\00", align 1
@oxnas_gpio_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @oxnas_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_phandle_args, align 8
  %6 = alloca %struct.oxnas_gpio_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call i64 @of_parse_phandle_with_fixed_args(%struct.device_node* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 3, i32 0, %struct.of_phandle_args* %5)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %145

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PINS_PER_BANK, align 4
  %31 = udiv i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** @oxnas_gpio_banks, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.oxnas_gpio_bank* %37)
  %39 = icmp uge i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %145

46:                                               ; preds = %25
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @PINS_PER_BANK, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %145

56:                                               ; preds = %46
  %57 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** @oxnas_gpio_banks, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %57, i64 %59
  store %struct.oxnas_gpio_bank* %60, %struct.oxnas_gpio_bank** %6, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load i32, i32* @IORESOURCE_MEM, align 4
  %63 = call %struct.resource* @platform_get_resource(%struct.platform_device* %61, i32 %62, i32 0)
  store %struct.resource* %63, %struct.resource** %11, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.resource*, %struct.resource** %11, align 8
  %67 = call i32 @devm_ioremap_resource(%struct.TYPE_8__* %65, %struct.resource* %66)
  %68 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %69 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %71 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %56
  %76 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %77 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %145

80:                                               ; preds = %56
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = call i32 @platform_get_irq(%struct.platform_device* %81, i32 0)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %2, align 4
  br label %145

87:                                               ; preds = %80
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %90 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %94 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %95, align 8
  %96 = load %struct.device_node*, %struct.device_node** %4, align 8
  %97 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %98 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store %struct.device_node* %96, %struct.device_node** %99, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %102 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %105 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %104, i32 0, i32 2
  %106 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %107 = call i32 @gpiochip_add_data(%struct.TYPE_7__* %105, %struct.oxnas_gpio_bank* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %87
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %2, align 4
  br label %145

117:                                              ; preds = %87
  %118 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %119 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %118, i32 0, i32 2
  %120 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %121 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %120, i32 0, i32 1
  %122 = load i32, i32* @handle_level_irq, align 4
  %123 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %124 = call i32 @gpiochip_irqchip_add(%struct.TYPE_7__* %119, i32* %121, i32 0, i32 %122, i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %117
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %134 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %133, i32 0, i32 2
  %135 = call i32 @gpiochip_remove(%struct.TYPE_7__* %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %2, align 4
  br label %145

137:                                              ; preds = %117
  %138 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %139 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %138, i32 0, i32 2
  %140 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %6, align 8
  %141 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %140, i32 0, i32 1
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @oxnas_gpio_irq_handler, align 4
  %144 = call i32 @gpiochip_set_chained_irqchip(%struct.TYPE_7__* %139, i32* %141, i32 %142, i32 %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %137, %127, %110, %85, %75, %50, %40, %19
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i64 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.oxnas_gpio_bank*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_7__*, %struct.oxnas_gpio_bank*) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_7__*) #1

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.TYPE_7__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
