; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_univ8250_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_univ8250_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, %struct.TYPE_2__, %struct.uart_port }
%struct.TYPE_2__ = type { i32 }
%struct.uart_port = type { i32, i32 }

@UART_BUG_THRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s - using backup timer\0A\00", align 1
@serial8250_backup_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @univ8250_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @univ8250_setup_irq(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 2
  store %struct.uart_port* %6, %struct.uart_port** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UART_BUG_THRE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @serial8250_backup_timeout, align 4
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %23 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %22, i32 0, i32 1
  %24 = load i64, i64* @jiffies, align 8
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = call i64 @uart_poll_timeout(%struct.uart_port* %25)
  %27 = add nsw i64 %24, %26
  %28 = load i32, i32* @HZ, align 4
  %29 = sdiv i32 %28, 5
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @mod_timer(%struct.TYPE_2__* %23, i64 %31)
  br label %33

33:                                               ; preds = %13, %1
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %40 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %39, i32 0, i32 1
  %41 = load i64, i64* @jiffies, align 8
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = call i64 @uart_poll_timeout(%struct.uart_port* %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @mod_timer(%struct.TYPE_2__* %40, i64 %44)
  br label %49

46:                                               ; preds = %33
  %47 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %48 = call i32 @serial_link_irq_chain(%struct.uart_8250_port* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mod_timer(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @uart_poll_timeout(%struct.uart_port*) #1

declare dso_local i32 @serial_link_irq_chain(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
