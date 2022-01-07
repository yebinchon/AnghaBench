; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32*, i32, i32, i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.clk = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Missing clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Clock enable failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@mlb_usio_ports = common dso_local global %struct.uart_port* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Missing regs\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@mlb_usio_irq = common dso_local global i32** null, align 8
@RX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@TX = common dso_local global i64 0, align 8
@UPIO_MEM32 = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_SPD_VHI = common dso_local global i32 0, align 4
@mlb_usio_ops = common dso_local global i32 0, align 4
@mlb_usio_uart_driver = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Adding port failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mlb_usio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlb_usio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.clk* @devm_clk_get(%struct.TYPE_4__* %10, i32* null)
  store %struct.clk* %11, %struct.clk** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.clk*, %struct.clk** %4, align 8
  %13 = call i64 @IS_ERR(%struct.clk* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.clk*, %struct.clk** %4, align 8
  %20 = call i32 @PTR_ERR(%struct.clk* %19)
  store i32 %20, i32* %2, align 4
  br label %135

21:                                               ; preds = %1
  %22 = load %struct.clk*, %struct.clk** %4, align 8
  %23 = call i32 @clk_prepare_enable(%struct.clk* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %135

32:                                               ; preds = %21
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @of_property_read_u32(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %38 = load %struct.uart_port*, %struct.uart_port** @mlb_usio_ports, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i64 %40
  store %struct.uart_port* %41, %struct.uart_port** %5, align 8
  %42 = load %struct.clk*, %struct.clk** %4, align 8
  %43 = bitcast %struct.clk* %42 to i8*
  %44 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 9
  store i8* %43, i8** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = call %struct.resource* @platform_get_resource(%struct.platform_device* %46, i32 %47, i32 0)
  store %struct.resource* %48, %struct.resource** %6, align 8
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = icmp eq %struct.resource* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %32
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %131

57:                                               ; preds = %32
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.resource*, %struct.resource** %6, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = call i32 @resource_size(%struct.resource* %63)
  %65 = call i32 @devm_ioremap(%struct.TYPE_4__* %59, i32 %62, i32 %64)
  %66 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = call i32 @platform_get_irq_byname(%struct.platform_device* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32**, i32*** @mlb_usio_irq, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @RX, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %70, i32* %77, align 4
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = call i32 @platform_get_irq_byname(%struct.platform_device* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32**, i32*** @mlb_usio_irq, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @TX, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %80, i32* %87, align 4
  %88 = load i32**, i32*** @mlb_usio_irq, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @RX, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %97 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.clk*, %struct.clk** %4, align 8
  %99 = call i32 @clk_get_rate(%struct.clk* %98)
  %100 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 4
  %102 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %103 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %102, i32 0, i32 1
  store i32 128, i32* %103, align 4
  %104 = load i32, i32* @UPIO_MEM32, align 4
  %105 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %106 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %108 = load i32, i32* @UPF_SPD_VHI, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %116 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %115, i32 0, i32 5
  store i32* @mlb_usio_ops, i32** %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %120 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %119, i32 0, i32 4
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %120, align 8
  %121 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %122 = call i32 @uart_add_one_port(i32* @mlb_usio_uart_driver, %struct.uart_port* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %57
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load i32, i32* %8, align 4
  %129 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %131

130:                                              ; preds = %57
  store i32 0, i32* %2, align 4
  br label %135

131:                                              ; preds = %125, %51
  %132 = load %struct.clk*, %struct.clk** %4, align 8
  %133 = call i32 @clk_disable_unprepare(%struct.clk* %132)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %131, %130, %26, %15
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
