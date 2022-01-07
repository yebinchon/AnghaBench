; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_console_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }
%struct.console = type { i64 }

@digicolor_ports = common dso_local global %struct.uart_port** null, align 8
@oops_in_progress = common dso_local global i64 0, align 8
@digicolor_uart_console_putchar = common dso_local global i32 0, align 4
@UA_STATUS = common dso_local global i64 0, align 8
@UA_STATUS_TX_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @digicolor_uart_console_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digicolor_uart_console_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.uart_port**, %struct.uart_port*** @digicolor_ports, align 8
  %12 = load %struct.console*, %struct.console** %4, align 8
  %13 = getelementptr inbounds %struct.console, %struct.console* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.uart_port*, %struct.uart_port** %11, i64 %14
  %16 = load %struct.uart_port*, %struct.uart_port** %15, align 8
  store %struct.uart_port* %16, %struct.uart_port** %7, align 8
  store i32 1, i32* %10, align 4
  %17 = load i64, i64* @oops_in_progress, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_trylock_irqsave(i32* %21, i64 %22)
  store i32 %23, i32* %10, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 1
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @digicolor_uart_console_putchar, align 4
  %34 = call i32 @uart_console_write(%struct.uart_port* %30, i8* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 1
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  br label %42

42:                                               ; preds = %37, %29
  br label %43

43:                                               ; preds = %50, %42
  %44 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UA_STATUS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readb_relaxed(i64 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @UA_STATUS_TX_READY, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %43, label %55

55:                                               ; preds = %50
  ret void
}

declare dso_local i32 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_console_write(%struct.uart_port*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @readb_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
