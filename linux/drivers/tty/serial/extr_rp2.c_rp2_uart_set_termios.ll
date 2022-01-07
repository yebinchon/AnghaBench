; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.rp2_uart_port = type { i32 }

@CREAD = common dso_local global i32 0, align 4
@RP2_DUMMY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @rp2_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp2_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.rp2_uart_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = call %struct.rp2_uart_port* @port_to_up(%struct.uart_port* %11)
  store %struct.rp2_uart_port* %12, %struct.rp2_uart_port** %7, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %15 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 16
  %20 = call i32 @uart_get_baud_rate(%struct.uart_port* %13, %struct.ktermios* %14, %struct.ktermios* %15, i32 0, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @uart_get_divisor(%struct.uart_port* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %25 = call i64 @tty_termios_baud_rate(%struct.ktermios* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %3
  %33 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 1
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CREAD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @RP2_DUMMY_READ, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 0, %43 ], [ %45, %44 ]
  %48 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %7, align 8
  %51 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %52 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %55 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @__rp2_uart_set_termios(%struct.rp2_uart_port* %50, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %60 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %61 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @uart_update_timeout(%struct.uart_port* %59, i32 %62, i32 %63)
  %65 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 1
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  ret void
}

declare dso_local %struct.rp2_uart_port* @port_to_up(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__rp2_uart_set_termios(%struct.rp2_uart_port*, i32, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
