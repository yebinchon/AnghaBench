; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.resource = type { i32 }
%struct.uartlite_data = type { i32*, %struct.TYPE_14__* }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@ulite_uart_driver = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"uartlite: calling uart_register_driver()\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to register driver\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"s_axi_aclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to prepare clock\0A\00", align 1
@UART_AUTOSUSPEND_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ulite_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulite_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.uartlite_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @of_alias_get_id(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %14
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ulite_uart_driver, i32 0, i32 0), align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = call i32 @dev_dbg(%struct.TYPE_15__* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @uart_register_driver(%struct.TYPE_14__* @ulite_uart_driver)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 1
  %37 = call i32 @dev_err(%struct.TYPE_15__* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %138

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 1
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.uartlite_data* @devm_kzalloc(%struct.TYPE_15__* %42, i32 16, i32 %43)
  store %struct.uartlite_data* %44, %struct.uartlite_data** %5, align 8
  %45 = load %struct.uartlite_data*, %struct.uartlite_data** %5, align 8
  %46 = icmp ne %struct.uartlite_data* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %138

50:                                               ; preds = %40
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load i32, i32* @IORESOURCE_MEM, align 4
  %53 = call %struct.resource* @platform_get_resource(%struct.platform_device* %51, i32 %52, i32 0)
  store %struct.resource* %53, %struct.resource** %4, align 8
  %54 = load %struct.resource*, %struct.resource** %4, align 8
  %55 = icmp ne %struct.resource* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %138

59:                                               ; preds = %50
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = call i32 @platform_get_irq(%struct.platform_device* %60, i32 0)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @ENXIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %138

67:                                               ; preds = %59
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 1
  %70 = call i32* @devm_clk_get(%struct.TYPE_15__* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.uartlite_data*, %struct.uartlite_data** %5, align 8
  %72 = getelementptr inbounds %struct.uartlite_data, %struct.uartlite_data* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  %73 = load %struct.uartlite_data*, %struct.uartlite_data** %5, align 8
  %74 = getelementptr inbounds %struct.uartlite_data, %struct.uartlite_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @IS_ERR(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %67
  %79 = load %struct.uartlite_data*, %struct.uartlite_data** %5, align 8
  %80 = getelementptr inbounds %struct.uartlite_data, %struct.uartlite_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @PTR_ERR(i32* %81)
  %83 = load i32, i32* @ENOENT, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.uartlite_data*, %struct.uartlite_data** %5, align 8
  %88 = getelementptr inbounds %struct.uartlite_data, %struct.uartlite_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @PTR_ERR(i32* %89)
  store i32 %90, i32* %2, align 4
  br label %138

91:                                               ; preds = %78
  %92 = load %struct.uartlite_data*, %struct.uartlite_data** %5, align 8
  %93 = getelementptr inbounds %struct.uartlite_data, %struct.uartlite_data* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %91, %67
  %95 = load %struct.uartlite_data*, %struct.uartlite_data** %5, align 8
  %96 = getelementptr inbounds %struct.uartlite_data, %struct.uartlite_data* %95, i32 0, i32 1
  store %struct.TYPE_14__* @ulite_uart_driver, %struct.TYPE_14__** %96, align 8
  %97 = load %struct.uartlite_data*, %struct.uartlite_data** %5, align 8
  %98 = getelementptr inbounds %struct.uartlite_data, %struct.uartlite_data* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @clk_prepare_enable(i32* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 1
  %106 = call i32 @dev_err(%struct.TYPE_15__* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %138

108:                                              ; preds = %94
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 1
  %111 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_15__* %110)
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 1
  %114 = load i32, i32* @UART_AUTOSUSPEND_TIMEOUT, align 4
  %115 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_15__* %113, i32 %114)
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 1
  %118 = call i32 @pm_runtime_set_active(%struct.TYPE_15__* %117)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 1
  %121 = call i32 @pm_runtime_enable(%struct.TYPE_15__* %120)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 1
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.resource*, %struct.resource** %4, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.uartlite_data*, %struct.uartlite_data** %5, align 8
  %130 = call i32 @ulite_assign(%struct.TYPE_15__* %123, i32 %124, i32 %127, i32 %128, %struct.uartlite_data* %129)
  store i32 %130, i32* %7, align 4
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 1
  %133 = call i32 @pm_runtime_mark_last_busy(%struct.TYPE_15__* %132)
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 1
  %136 = call i32 @pm_runtime_put_autosuspend(%struct.TYPE_15__* %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %108, %103, %86, %64, %56, %47, %34
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @uart_register_driver(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.uartlite_data* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_15__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_15__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_15__*) #1

declare dso_local i32 @ulite_assign(%struct.TYPE_15__*, i32, i32, i32, %struct.uartlite_data*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.TYPE_15__*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
