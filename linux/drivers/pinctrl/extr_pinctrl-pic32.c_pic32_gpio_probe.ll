; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_gpio_bank = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.device_node*, %struct.TYPE_9__* }
%struct.device_node = type { i32 }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"microchip,gpio-bank\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"microchip,gpio-bank property not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pic32_gpio_banks = common dso_local global %struct.pic32_gpio_bank* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid microchip,gpio-bank property\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"clk get failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"clk enable failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to add GPIO chip %u: %d\0A\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to add IRQ chip %u: %d\0A\00", align 1
@pic32_gpio_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pic32_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.pic32_gpio_bank*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call i64 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %147

23:                                               ; preds = %1
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** @pic32_gpio_banks, align 8
  %26 = call i64 @ARRAY_SIZE(%struct.pic32_gpio_bank* %25)
  %27 = icmp uge i64 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %147

34:                                               ; preds = %23
  %35 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** @pic32_gpio_banks, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %35, i64 %36
  store %struct.pic32_gpio_bank* %37, %struct.pic32_gpio_bank** %5, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load i32, i32* @IORESOURCE_MEM, align 4
  %40 = call %struct.resource* @platform_get_resource(%struct.platform_device* %38, i32 %39, i32 0)
  store %struct.resource* %40, %struct.resource** %9, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.resource*, %struct.resource** %9, align 8
  %44 = call i32 @devm_ioremap_resource(%struct.TYPE_9__* %42, %struct.resource* %43)
  %45 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %46 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %48 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %34
  %53 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %54 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %147

57:                                               ; preds = %34
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i32 @platform_get_irq(%struct.platform_device* %58, i32 0)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %147

64:                                               ; preds = %57
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @devm_clk_get(%struct.TYPE_9__* %66, i32* null)
  %68 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %69 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %71 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %64
  %76 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %77 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %147

84:                                               ; preds = %64
  %85 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %86 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @clk_prepare_enable(i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %147

96:                                               ; preds = %84
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %100 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %101, align 8
  %102 = load %struct.device_node*, %struct.device_node** %4, align 8
  %103 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %104 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store %struct.device_node* %102, %struct.device_node** %105, align 8
  %106 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %107 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %106, i32 0, i32 1
  %108 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %109 = call i32 @gpiochip_add_data(%struct.TYPE_8__* %107, %struct.pic32_gpio_bank* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %96
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load i64, i64* %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %115, i32 %116)
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %2, align 4
  br label %147

119:                                              ; preds = %96
  %120 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %121 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %120, i32 0, i32 1
  %122 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %123 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %122, i32 0, i32 0
  %124 = load i32, i32* @handle_level_irq, align 4
  %125 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %126 = call i32 @gpiochip_irqchip_add(%struct.TYPE_8__* %121, i32* %123, i32 0, i32 %124, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %119
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load i64, i64* %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %132, i32 %133)
  %135 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %136 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %135, i32 0, i32 1
  %137 = call i32 @gpiochip_remove(%struct.TYPE_8__* %136)
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %2, align 4
  br label %147

139:                                              ; preds = %119
  %140 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %141 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %140, i32 0, i32 1
  %142 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %5, align 8
  %143 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %142, i32 0, i32 0
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @pic32_gpio_irq_handler, align 4
  %146 = call i32 @gpiochip_set_chained_irqchip(%struct.TYPE_8__* %141, i32* %143, i32 %144, i32 %145)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %139, %129, %112, %91, %75, %62, %52, %28, %17
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.pic32_gpio_bank*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_8__*, %struct.pic32_gpio_bank*) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_8__*, i32*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_8__*) #1

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.TYPE_8__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
