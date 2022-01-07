; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_set_ldisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_set_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.ktermios = type { i64, i32 }

@N_PPS = common dso_local global i64 0, align 8
@UPF_HARDPPS_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*)* @atmel_set_ldisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_set_ldisc(%struct.uart_port* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.ktermios*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %5 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %6 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @N_PPS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32, i32* @UPF_HARDPPS_CD, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = call i32 @atmel_enable_ms(%struct.uart_port* %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_irq(i32* %22)
  br label %47

24:                                               ; preds = %2
  %25 = load i32, i32* @UPF_HARDPPS_CD, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %33 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @UART_ENABLE_MS(%struct.uart_port* %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %24
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = call i32 @atmel_disable_ms(%struct.uart_port* %41)
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_irq(i32* %44)
  br label %46

46:                                               ; preds = %37, %24
  br label %47

47:                                               ; preds = %46, %10
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atmel_enable_ms(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @atmel_disable_ms(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
