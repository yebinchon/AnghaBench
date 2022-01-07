; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_unregister_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_unregister_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@serial8250_ports = common dso_local global %struct.uart_8250_port* null, align 8
@serial_mutex = common dso_local global i32 0, align 4
@serial8250_reg = common dso_local global i32 0, align 4
@serial8250_isa_devs = common dso_local global %struct.TYPE_5__* null, align 8
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial8250_unregister_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i64 %7
  store %struct.uart_8250_port* %8, %struct.uart_8250_port** %3, align 8
  %9 = call i32 @mutex_lock(i32* @serial_mutex)
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %21 = call i32 @serial8250_em485_destroy(%struct.uart_8250_port* %20)
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %14, %1
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %28, i32 0, i32 0
  %30 = call i32 @uart_remove_one_port(i32* @serial8250_reg, %struct.TYPE_4__* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @serial8250_isa_devs, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @PORT_UNKNOWN, align 4
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @serial8250_isa_devs, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %48 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %53 = call i32 @serial8250_apply_quirks(%struct.uart_8250_port* %52)
  %54 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %55 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %54, i32 0, i32 0
  %56 = call i32 @uart_add_one_port(i32* @serial8250_reg, %struct.TYPE_4__* %55)
  br label %61

57:                                               ; preds = %27
  %58 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %59 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %57, %33
  %62 = call i32 @mutex_unlock(i32* @serial_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial8250_em485_destroy(%struct.uart_8250_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @serial8250_apply_quirks(%struct.uart_8250_port*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
