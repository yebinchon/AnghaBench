; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_serial_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.of_device_id = type { i64 }
%struct.stm32_port = type { i64, i32, i32, %struct.stm32_usart_info* }
%struct.stm32_usart_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@stm32_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@stm32_usart_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"interrupt mode used for rx (no dma)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"interrupt mode used for tx (no dma)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_serial_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.stm32_port*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.stm32_port* @stm32_of_get_stm32_port(%struct.platform_device* %7)
  store %struct.stm32_port* %8, %struct.stm32_port** %5, align 8
  %9 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %10 = icmp ne %struct.stm32_port* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %140

14:                                               ; preds = %1
  %15 = load i32, i32* @stm32_match, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.of_device_id* @of_match_device(i32 %15, i32* %17)
  store %struct.of_device_id* %18, %struct.of_device_id** %4, align 8
  %19 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %20 = icmp ne %struct.of_device_id* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %23 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %28 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.stm32_usart_info*
  %31 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %32 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %31, i32 0, i32 3
  store %struct.stm32_usart_info* %30, %struct.stm32_usart_info** %32, align 8
  br label %36

33:                                               ; preds = %21, %14
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %140

36:                                               ; preds = %26
  %37 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i32 @stm32_init_port(%struct.stm32_port* %37, %struct.platform_device* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %140

44:                                               ; preds = %36
  %45 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %46 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @device_init_wakeup(i32* %51, i32 1)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %134

56:                                               ; preds = %49
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %60 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @dev_pm_set_dedicated_wake_irq(i32* %58, i64 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %124

66:                                               ; preds = %56
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @device_set_wakeup_enable(i32* %68, i32 0)
  br label %70

70:                                               ; preds = %66, %44
  %71 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %72 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %71, i32 0, i32 2
  %73 = call i32 @uart_add_one_port(i32* @stm32_usart_driver, i32* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %114

77:                                               ; preds = %70
  %78 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = call i32 @stm32_of_dma_rx_probe(%struct.stm32_port* %78, %struct.platform_device* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_info(i32* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call i32 @stm32_of_dma_tx_probe(%struct.stm32_port* %88, %struct.platform_device* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_info(i32* %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %100 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %99, i32 0, i32 2
  %101 = call i32 @platform_set_drvdata(%struct.platform_device* %98, i32* %100)
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @pm_runtime_get_noresume(i32* %103)
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @pm_runtime_set_active(i32* %106)
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @pm_runtime_enable(i32* %109)
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @pm_runtime_put_sync(i32* %112)
  store i32 0, i32* %2, align 4
  br label %140

114:                                              ; preds = %76
  %115 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %116 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @dev_pm_clear_wake_irq(i32* %121)
  br label %123

123:                                              ; preds = %119, %114
  br label %124

124:                                              ; preds = %123, %65
  %125 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %126 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @device_init_wakeup(i32* %131, i32 0)
  br label %133

133:                                              ; preds = %129, %124
  br label %134

134:                                              ; preds = %133, %55
  %135 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %136 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @clk_disable_unprepare(i32 %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %134, %97, %42, %33, %11
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.stm32_port* @stm32_of_get_stm32_port(%struct.platform_device*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @stm32_init_port(%struct.stm32_port*, %struct.platform_device*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @dev_pm_set_dedicated_wake_irq(i32*, i64) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @uart_add_one_port(i32*, i32*) #1

declare dso_local i32 @stm32_of_dma_rx_probe(%struct.stm32_port*, %struct.platform_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @stm32_of_dma_tx_probe(%struct.stm32_port*, %struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @dev_pm_clear_wake_irq(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
