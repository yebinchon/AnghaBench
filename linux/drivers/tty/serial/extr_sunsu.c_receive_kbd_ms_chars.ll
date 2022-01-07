; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_receive_kbd_ms_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_receive_kbd_ms_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsu_port = type { i64, i32 }

@UART_RX = common dso_local global i32 0, align 4
@SU_PORT_KBD = common dso_local global i64 0, align 8
@SU_PORT_MS = common dso_local global i64 0, align 8
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsu_port*, i32)* @receive_kbd_ms_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_kbd_ms_chars(%struct.uart_sunsu_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_sunsu_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.uart_sunsu_port* %0, %struct.uart_sunsu_port** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %9 = load i32, i32* @UART_RX, align 4
  %10 = call zeroext i8 @serial_inp(%struct.uart_sunsu_port* %8, i32 %9)
  store i8 %10, i8* %5, align 1
  %11 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SU_PORT_KBD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %35

17:                                               ; preds = %7
  %18 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SU_PORT_MS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i8, i8* %5, align 1
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @suncore_mouse_baud_detection(i8 zeroext %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %33 [
    i32 2, label %28
    i32 1, label %31
    i32 0, label %32
  ]

28:                                               ; preds = %23
  %29 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %30 = call i32 @sunsu_change_mouse_baud(%struct.uart_sunsu_port* %29)
  br label %31

31:                                               ; preds = %23, %28
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %23, %32, %31
  br label %34

34:                                               ; preds = %33, %17
  br label %35

35:                                               ; preds = %34, %16
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %38 = load i32, i32* @UART_LSR, align 4
  %39 = call i32 @serial_in(%struct.uart_sunsu_port* %37, i32 %38)
  %40 = load i32, i32* @UART_LSR_DR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %7, label %43

43:                                               ; preds = %36
  ret void
}

declare dso_local zeroext i8 @serial_inp(%struct.uart_sunsu_port*, i32) #1

declare dso_local i32 @suncore_mouse_baud_detection(i8 zeroext, i32) #1

declare dso_local i32 @sunsu_change_mouse_baud(%struct.uart_sunsu_port*) #1

declare dso_local i32 @serial_in(%struct.uart_sunsu_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
