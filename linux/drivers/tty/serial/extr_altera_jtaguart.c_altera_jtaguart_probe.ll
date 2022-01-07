; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_jtaguart.c_altera_jtaguart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_jtaguart.c_altera_jtaguart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.uart_port }
%struct.uart_port = type { i32, i32*, i32, i32*, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32, i32 }
%struct.altera_jtaguart_platform_uart = type { i32, i32 }
%struct.resource = type { i32 }

@ALTERA_JTAGUART_MAXPORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@altera_jtaguart_ports = common dso_local global %struct.TYPE_2__* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ALTERA_JTAGUART_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORT_ALTERA_JTAGUART = common dso_local global i32 0, align 4
@SERIAL_IO_MEM = common dso_local global i32 0, align 4
@altera_jtaguart_ops = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@altera_jtaguart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @altera_jtaguart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_jtaguart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.altera_jtaguart_platform_uart*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = call %struct.altera_jtaguart_platform_uart* @dev_get_platdata(i32* %10)
  store %struct.altera_jtaguart_platform_uart* %11, %struct.altera_jtaguart_platform_uart** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ALTERA_JTAGUART_MAXPORTS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %116

25:                                               ; preds = %18
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @altera_jtaguart_ports, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.uart_port* %30, %struct.uart_port** %5, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %7, align 8
  %34 = load %struct.resource*, %struct.resource** %7, align 8
  %35 = icmp ne %struct.resource* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.resource*, %struct.resource** %7, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  br label %55

42:                                               ; preds = %25
  %43 = load %struct.altera_jtaguart_platform_uart*, %struct.altera_jtaguart_platform_uart** %4, align 8
  %44 = icmp ne %struct.altera_jtaguart_platform_uart* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.altera_jtaguart_platform_uart*, %struct.altera_jtaguart_platform_uart** %4, align 8
  %47 = getelementptr inbounds %struct.altera_jtaguart_platform_uart, %struct.altera_jtaguart_platform_uart* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  br label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %116

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load i32, i32* @IORESOURCE_IRQ, align 4
  %58 = call %struct.resource* @platform_get_resource(%struct.platform_device* %56, i32 %57, i32 0)
  store %struct.resource* %58, %struct.resource** %6, align 8
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = icmp ne %struct.resource* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  br label %80

67:                                               ; preds = %55
  %68 = load %struct.altera_jtaguart_platform_uart*, %struct.altera_jtaguart_platform_uart** %4, align 8
  %69 = icmp ne %struct.altera_jtaguart_platform_uart* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.altera_jtaguart_platform_uart*, %struct.altera_jtaguart_platform_uart** %4, align 8
  %72 = getelementptr inbounds %struct.altera_jtaguart_platform_uart, %struct.altera_jtaguart_platform_uart* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  br label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %116

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %61
  %81 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ALTERA_JTAGUART_SIZE, align 4
  %85 = call i32 @ioremap(i32 %83, i32 %84)
  %86 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %80
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %116

95:                                               ; preds = %80
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @PORT_ALTERA_JTAGUART, align 4
  %100 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @SERIAL_IO_MEM, align 4
  %103 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %106 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %105, i32 0, i32 3
  store i32* @altera_jtaguart_ops, i32** %106, align 8
  %107 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %108 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 1
  %112 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %113 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  %114 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %115 = call i32 @uart_add_one_port(i32* @altera_jtaguart_driver, %struct.uart_port* %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %95, %92, %76, %51, %22
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.altera_jtaguart_platform_uart* @dev_get_platdata(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
