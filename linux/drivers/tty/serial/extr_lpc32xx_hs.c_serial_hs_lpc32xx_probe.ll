; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_hs_lpc32xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_hs_lpc32xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_hsuart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@lpc32xx_hs_ports = common dso_local global %struct.lpc32xx_hsuart_port* null, align 8
@uarts_registered = common dso_local global i64 0, align 8
@MAX_PORTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Error: Number of possible ports exceeded (%d)!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Error getting mem resource for HS UART port %d\0A\00", align 1
@UPIO_MEM32 = common dso_local global i32 0, align 4
@LPC32XX_MAIN_OSC_FREQ = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@serial_lpc32xx_pops = common dso_local global i32 0, align 4
@lpc32xx_hs_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @serial_hs_lpc32xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_hs_lpc32xx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc32xx_hsuart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** @lpc32xx_hs_ports, align 8
  %8 = load i64, i64* @uarts_registered, align 8
  %9 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %7, i64 %8
  store %struct.lpc32xx_hsuart_port* %9, %struct.lpc32xx_hsuart_port** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i64, i64* @uarts_registered, align 8
  %11 = load i64, i64* @MAX_PORTS, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i64, i64* @uarts_registered, align 8
  %17 = add i64 %16, 1
  %18 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %106

21:                                               ; preds = %1
  %22 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %23 = call i32 @memset(%struct.lpc32xx_hsuart_port* %22, i32 0, i32 56)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %6, align 8
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i64, i64* @uarts_registered, align 8
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %106

36:                                               ; preds = %21
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %41 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %44 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 10
  store i32* null, i32** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i32 @platform_get_irq(%struct.platform_device* %46, i32 0)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %106

52:                                               ; preds = %36
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %55 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @UPIO_MEM32, align 4
  %58 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %59 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 9
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @LPC32XX_MAIN_OSC_FREQ, align 4
  %62 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %63 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 8
  store i32 %61, i32* %64, align 8
  %65 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %66 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 2, i32* %67, align 4
  %68 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %69 = load i32, i32* @UPF_FIXED_PORT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @UPF_IOREMAP, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %74 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %79 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 7
  store i32* %77, i32** %80, align 8
  %81 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %82 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 6
  store i32* @serial_lpc32xx_pops, i32** %83, align 8
  %84 = load i64, i64* @uarts_registered, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* @uarts_registered, align 8
  %86 = trunc i64 %84 to i32
  %87 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %88 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 4
  %90 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %91 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  %93 = call i32 @spin_lock_init(i32* %92)
  %94 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %95 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @lpc32xx_loopback_set(i32 %97, i32 1)
  %99 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %100 = getelementptr inbounds %struct.lpc32xx_hsuart_port, %struct.lpc32xx_hsuart_port* %99, i32 0, i32 0
  %101 = call i32 @uart_add_one_port(i32* @lpc32xx_hs_reg, %struct.TYPE_2__* %100)
  store i32 %101, i32* %5, align 4
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.lpc32xx_hsuart_port*, %struct.lpc32xx_hsuart_port** %4, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.lpc32xx_hsuart_port* %103)
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %52, %50, %29, %13
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @memset(%struct.lpc32xx_hsuart_port*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @lpc32xx_loopback_set(i32, i32) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc32xx_hsuart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
