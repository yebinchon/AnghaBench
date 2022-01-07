; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_init_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@siu_uart_ports = common dso_local global %struct.uart_port* null, align 8
@SIU_PORTS_MAX = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i32 0, align 4
@SIU_BAUD_BASE = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @siu_init_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siu_init_ports(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i32* @dev_get_platdata(i32* %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

14:                                               ; preds = %1
  %15 = load %struct.uart_port*, %struct.uart_port** @siu_uart_ports, align 8
  store %struct.uart_port* %15, %struct.uart_port** %4, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %70, %14
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SIU_PORTS_MAX, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PORT_UNKNOWN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %70

34:                                               ; preds = %20
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @platform_get_irq(%struct.platform_device* %35, i32 %36)
  %38 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @SIU_BAUD_BASE, align 4
  %41 = mul nsw i32 %40, 16
  %42 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 2
  store i32 16, i32* %45, align 8
  %46 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @UPIO_MEM, align 4
  %49 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @UPF_IOREMAP, align 4
  %52 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load i32, i32* @IORESOURCE_MEM, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.resource* @platform_get_resource(%struct.platform_device* %59, i32 %60, i32 %61)
  store %struct.resource* %62, %struct.resource** %5, align 8
  %63 = load %struct.resource*, %struct.resource** %5, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 1
  store %struct.uart_port* %69, %struct.uart_port** %4, align 8
  br label %70

70:                                               ; preds = %34, %33
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %16

73:                                               ; preds = %16
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32* @dev_get_platdata(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
