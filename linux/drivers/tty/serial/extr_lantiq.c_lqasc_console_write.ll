; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_console_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltq_uart_port = type { i32, i32 }
%struct.console = type { i64 }

@MAXPORTS = common dso_local global i64 0, align 8
@lqasc_port = common dso_local global %struct.ltq_uart_port** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @lqasc_console_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lqasc_console_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ltq_uart_port*, align 8
  %8 = alloca i64, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.console*, %struct.console** %4, align 8
  %10 = getelementptr inbounds %struct.console, %struct.console* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MAXPORTS, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %39

15:                                               ; preds = %3
  %16 = load %struct.ltq_uart_port**, %struct.ltq_uart_port*** @lqasc_port, align 8
  %17 = load %struct.console*, %struct.console** %4, align 8
  %18 = getelementptr inbounds %struct.console, %struct.console* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.ltq_uart_port*, %struct.ltq_uart_port** %16, i64 %19
  %21 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %20, align 8
  store %struct.ltq_uart_port* %21, %struct.ltq_uart_port** %7, align 8
  %22 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %7, align 8
  %23 = icmp ne %struct.ltq_uart_port* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %39

25:                                               ; preds = %15
  %26 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %7, align 8
  %27 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %7, align 8
  %31 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %30, i32 0, i32 1
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @lqasc_serial_port_write(i32* %31, i8* %32, i32 %33)
  %35 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %7, align 8
  %36 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %35, i32 0, i32 0
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %25, %24, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lqasc_serial_port_write(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
