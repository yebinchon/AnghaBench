; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_setup_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_setup_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32 }
%struct.serial_info = type { i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.pcmcia_device*, %struct.uart_8250_port*)* }
%struct.uart_8250_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32* }

@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@UPF_SHARE_IRQ = common dso_local global i32 0, align 4
@buggy_uart = common dso_local global i64 0, align 8
@UPF_BUGGY_UART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"serial_cs: serial8250_register_8250_port() at 0x%04lx, irq %d failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.serial_info*, i32, i32)* @setup_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_serial(%struct.pcmcia_device* %0, %struct.serial_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca %struct.serial_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uart_8250_port, align 8
  %11 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %6, align 8
  store %struct.serial_info* %1, %struct.serial_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call i32 @memset(%struct.uart_8250_port* %10, i32 0, i32 24)
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %20 = load i32, i32* @UPF_SKIP_TEST, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @UPF_SHARE_IRQ, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  store i32 1843200, i32* %27, align 4
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %29 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load i64, i64* @buggy_uart, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load i32, i32* @UPF_BUGGY_UART, align 4
  %36 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %4
  %41 = load %struct.serial_info*, %struct.serial_info** %7, align 8
  %42 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.serial_info*, %struct.serial_info** %7, align 8
  %47 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.pcmcia_device*, %struct.uart_8250_port*)*, i32 (%struct.pcmcia_device*, %struct.uart_8250_port*)** %49, align 8
  %51 = icmp ne i32 (%struct.pcmcia_device*, %struct.uart_8250_port*)* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.serial_info*, %struct.serial_info** %7, align 8
  %54 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.pcmcia_device*, %struct.uart_8250_port*)*, i32 (%struct.pcmcia_device*, %struct.uart_8250_port*)** %56, align 8
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %59 = call i32 %57(%struct.pcmcia_device* %58, %struct.uart_8250_port* %10)
  br label %60

60:                                               ; preds = %52, %45, %40
  %61 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %10)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %66, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %84

71:                                               ; preds = %60
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.serial_info*, %struct.serial_info** %7, align 8
  %74 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.serial_info*, %struct.serial_info** %7, align 8
  %77 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 %72, i32* %79, align 4
  %80 = load %struct.serial_info*, %struct.serial_info** %7, align 8
  %81 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %71, %64
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @memset(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
