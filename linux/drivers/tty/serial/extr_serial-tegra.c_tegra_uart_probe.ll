; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_uart_port = type { i32, i32, %struct.tegra_uart_chip_data*, %struct.uart_port }
%struct.tegra_uart_chip_data = type { i32 }
%struct.uart_port = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.resource = type { i32 }
%struct.of_device_id = type { %struct.tegra_uart_chip_data* }

@tegra_uart_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate memory for tup\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@tegra_uart_ops = common dso_local global i32 0, align 4
@PORT_TEGRA = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"No IO memory resource\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Couldn't get the clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Couldn't get the reset\0A\00", align 1
@UPIO_MEM32 = common dso_local global i32 0, align 4
@tegra_uart_driver = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to add uart port, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_uart_port*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_uart_chip_data*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @tegra_uart_of_match, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.of_device_id* @of_match_device(i32 %10, i32* %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %9, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %15 = icmp ne %struct.of_device_id* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %165

22:                                               ; preds = %1
  %23 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load %struct.tegra_uart_chip_data*, %struct.tegra_uart_chip_data** %24, align 8
  store %struct.tegra_uart_chip_data* %25, %struct.tegra_uart_chip_data** %8, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.tegra_uart_port* @devm_kzalloc(i32* %27, i32 64, i32 %28)
  store %struct.tegra_uart_port* %29, %struct.tegra_uart_port** %4, align 8
  %30 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %31 = icmp ne %struct.tegra_uart_port* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %165

38:                                               ; preds = %22
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %41 = call i32 @tegra_uart_parse_dt(%struct.platform_device* %39, %struct.tegra_uart_port* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %165

46:                                               ; preds = %38
  %47 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %48 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %47, i32 0, i32 3
  store %struct.uart_port* %48, %struct.uart_port** %5, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 8
  store i32* %50, i32** %52, align 8
  %53 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 7
  store i32* @tegra_uart_ops, i32** %54, align 8
  %55 = load i32, i32* @PORT_TEGRA, align 4
  %56 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 0
  store i32 32, i32* %59, align 8
  %60 = load %struct.tegra_uart_chip_data*, %struct.tegra_uart_chip_data** %8, align 8
  %61 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %62 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %61, i32 0, i32 2
  store %struct.tegra_uart_chip_data* %60, %struct.tegra_uart_chip_data** %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %65 = call i32 @platform_set_drvdata(%struct.platform_device* %63, %struct.tegra_uart_port* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load i32, i32* @IORESOURCE_MEM, align 4
  %68 = call %struct.resource* @platform_get_resource(%struct.platform_device* %66, i32 %67, i32 0)
  store %struct.resource* %68, %struct.resource** %6, align 8
  %69 = load %struct.resource*, %struct.resource** %6, align 8
  %70 = icmp ne %struct.resource* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %46
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %165

77:                                               ; preds = %46
  %78 = load %struct.resource*, %struct.resource** %6, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.resource*, %struct.resource** %6, align 8
  %86 = call i32 @devm_ioremap_resource(i32* %84, %struct.resource* %85)
  %87 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %90 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @IS_ERR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %77
  %95 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @PTR_ERR(i32 %97)
  store i32 %98, i32* %2, align 4
  br label %165

99:                                               ; preds = %77
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @devm_clk_get(i32* %101, i32* null)
  %103 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %104 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %106 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @IS_ERR(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %99
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %115 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @PTR_ERR(i32 %116)
  store i32 %117, i32* %2, align 4
  br label %165

118:                                              ; preds = %99
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @devm_reset_control_get_exclusive(i32* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %122 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %123 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %125 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @IS_ERR(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %118
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %133 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %134 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @PTR_ERR(i32 %135)
  store i32 %136, i32* %2, align 4
  br label %165

137:                                              ; preds = %118
  %138 = load i32, i32* @UPIO_MEM32, align 4
  %139 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %140 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = call i32 @platform_get_irq(%struct.platform_device* %141, i32 0)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %165

147:                                              ; preds = %137
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %150 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %152 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %151, i32 0, i32 2
  store i32 2, i32* %152, align 8
  %153 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %154 = call i32 @uart_add_one_port(i32* @tegra_uart_driver, %struct.uart_port* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = load i32, i32* %7, align 4
  %161 = call i32 (i32*, i8*, ...) @dev_err(i32* %159, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %2, align 4
  br label %165

163:                                              ; preds = %147
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %163, %157, %145, %129, %110, %94, %71, %44, %32, %16
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.tegra_uart_port* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @tegra_uart_parse_dt(%struct.platform_device*, %struct.tegra_uart_port*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_uart_port*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @devm_reset_control_get_exclusive(i32*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
