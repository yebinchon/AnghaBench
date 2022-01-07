; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mps2_uart_port = type { i32, %struct.TYPE_2__, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@mps2_uart_pops = common dso_local global i32 0, align 4
@UART_PORT_COMBINED_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.mps2_uart_port*)* @mps2_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps2_init_port(%struct.platform_device* %0, %struct.mps2_uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mps2_uart_port*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.mps2_uart_port* %1, %struct.mps2_uart_port** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load %struct.resource*, %struct.resource** %6, align 8
  %14 = call i32 @devm_ioremap_resource(i32* %12, %struct.resource* %13)
  %15 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %16 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 9
  store i32 %14, i32* %17, align 8
  %18 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %19 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %26 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %125

30:                                               ; preds = %2
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %35 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 8
  store i32 %33, i32* %36, align 4
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = call i32 @resource_size(%struct.resource* %37)
  %39 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %40 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 7
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @UPIO_MEM, align 4
  %43 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %44 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 6
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %47 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %48 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 8
  %50 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %51 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %54 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  store i32* @mps2_uart_pops, i32** %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %59 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i32* %57, i32** %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @devm_clk_get(i32* %62, i32* null)
  %64 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %65 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %67 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %30
  %72 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %73 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %3, align 4
  br label %125

76:                                               ; preds = %30
  %77 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %78 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @clk_prepare_enable(i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %125

85:                                               ; preds = %76
  %86 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %87 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @clk_get_rate(i32 %88)
  %90 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %91 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %94 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @clk_disable_unprepare(i32 %95)
  %97 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %98 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @UART_PORT_COMBINED_IRQ, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %85
  %104 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %105 = call i8* @platform_get_irq(%struct.platform_device* %104, i32 0)
  %106 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %107 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  br label %123

109:                                              ; preds = %85
  %110 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %111 = call i8* @platform_get_irq(%struct.platform_device* %110, i32 0)
  %112 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %113 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %115 = call i8* @platform_get_irq(%struct.platform_device* %114, i32 1)
  %116 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %117 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %119 = call i8* @platform_get_irq(%struct.platform_device* %118, i32 2)
  %120 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %121 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i8* %119, i8** %122, align 8
  br label %123

123:                                              ; preds = %109, %103
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %83, %71, %24
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
