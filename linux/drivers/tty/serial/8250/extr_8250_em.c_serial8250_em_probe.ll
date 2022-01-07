; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_em.c_serial8250_em_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_em.c_serial8250_em_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.serial8250_em_priv = type { i32, i32 }
%struct.uart_8250_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, %struct.serial8250_em_priv*, i32*, i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"missing registers or irq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"unable to get clock\0A\00", align 1
@PORT_UNKNOWN = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@UPIO_MEM32 = common dso_local global i32 0, align 4
@serial8250_em_serial_in = common dso_local global i32 0, align 4
@serial8250_em_serial_out = common dso_local global i32 0, align 4
@serial8250_em_serial_dl_read = common dso_local global i32 0, align 4
@serial8250_em_serial_dl_write = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to register 8250 port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @serial8250_em_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial8250_em_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.serial8250_em_priv*, align 8
  %7 = alloca %struct.uart_8250_port, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.platform_device* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = load i32, i32* @IORESOURCE_IRQ, align 4
  %14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 %13, i32 0)
  store %struct.resource* %14, %struct.resource** %5, align 8
  %15 = load %struct.resource*, %struct.resource** %4, align 8
  %16 = icmp ne %struct.resource* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.resource*, %struct.resource** %5, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %126

26:                                               ; preds = %17
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.serial8250_em_priv* @devm_kzalloc(i32* %28, i32 8, i32 %29)
  store %struct.serial8250_em_priv* %30, %struct.serial8250_em_priv** %6, align 8
  %31 = load %struct.serial8250_em_priv*, %struct.serial8250_em_priv** %6, align 8
  %32 = icmp ne %struct.serial8250_em_priv* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %126

36:                                               ; preds = %26
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @devm_clk_get(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.serial8250_em_priv*, %struct.serial8250_em_priv** %6, align 8
  %41 = getelementptr inbounds %struct.serial8250_em_priv, %struct.serial8250_em_priv* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.serial8250_em_priv*, %struct.serial8250_em_priv** %6, align 8
  %43 = getelementptr inbounds %struct.serial8250_em_priv, %struct.serial8250_em_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.serial8250_em_priv*, %struct.serial8250_em_priv** %6, align 8
  %52 = getelementptr inbounds %struct.serial8250_em_priv, %struct.serial8250_em_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %126

55:                                               ; preds = %36
  %56 = call i32 @memset(%struct.uart_8250_port* %7, i32 0, i32 64)
  %57 = load %struct.resource*, %struct.resource** %4, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load %struct.resource*, %struct.resource** %5, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @PORT_UNKNOWN, align 4
  %68 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %71 = load i32, i32* @UPF_FIXED_PORT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @UPF_IOREMAP, align 4
  %74 = or i32 %72, %73
  %75 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 6
  store i32* %78, i32** %80, align 8
  %81 = load %struct.serial8250_em_priv*, %struct.serial8250_em_priv** %6, align 8
  %82 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  store %struct.serial8250_em_priv* %81, %struct.serial8250_em_priv** %83, align 8
  %84 = load %struct.serial8250_em_priv*, %struct.serial8250_em_priv** %6, align 8
  %85 = getelementptr inbounds %struct.serial8250_em_priv, %struct.serial8250_em_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clk_prepare_enable(i32 %86)
  %88 = load %struct.serial8250_em_priv*, %struct.serial8250_em_priv** %6, align 8
  %89 = getelementptr inbounds %struct.serial8250_em_priv, %struct.serial8250_em_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @clk_get_rate(i32 %90)
  %92 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @UPIO_MEM32, align 4
  %95 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @serial8250_em_serial_in, align 4
  %98 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @serial8250_em_serial_out, align 4
  %101 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @serial8250_em_serial_dl_read, align 4
  %104 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @serial8250_em_serial_dl_write, align 4
  %106 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  %107 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %7)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %55
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.serial8250_em_priv*, %struct.serial8250_em_priv** %6, align 8
  %115 = getelementptr inbounds %struct.serial8250_em_priv, %struct.serial8250_em_priv* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @clk_disable_unprepare(i32 %116)
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %2, align 4
  br label %126

119:                                              ; preds = %55
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.serial8250_em_priv*, %struct.serial8250_em_priv** %6, align 8
  %122 = getelementptr inbounds %struct.serial8250_em_priv, %struct.serial8250_em_priv* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load %struct.serial8250_em_priv*, %struct.serial8250_em_priv** %6, align 8
  %125 = call i32 @platform_set_drvdata(%struct.platform_device* %123, %struct.serial8250_em_priv* %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %119, %110, %47, %33, %20
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.serial8250_em_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @memset(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.serial8250_em_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
