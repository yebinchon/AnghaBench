; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_put_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { %struct.circ_buf }
%struct.circ_buf = type { i8*, i64 }
%struct.uart_port = type { i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8)* @uart_put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_put_char(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.uart_state*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.circ_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.uart_state*, %struct.uart_state** %12, align 8
  store %struct.uart_state* %13, %struct.uart_state** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %15 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %14, i32 0, i32 0
  store %struct.circ_buf* %15, %struct.circ_buf** %8, align 8
  %16 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call %struct.uart_port* @uart_port_lock(%struct.uart_state* %16, i64 %17)
  store %struct.uart_port* %18, %struct.uart_port** %7, align 8
  %19 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %20 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @uart_port_unlock(%struct.uart_port* %24, i64 %25)
  store i32 0, i32* %3, align 4
  br label %58

27:                                               ; preds = %2
  %28 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %29 = icmp ne %struct.uart_port* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %32 = call i64 @uart_circ_chars_free(%struct.circ_buf* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i8, i8* %5, align 1
  %36 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %37 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %40 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8 %35, i8* %42, align 1
  %43 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %44 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  %47 = load i32, i32* @UART_XMIT_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = and i64 %46, %49
  %51 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %52 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  store i32 1, i32* %10, align 4
  br label %53

53:                                               ; preds = %34, %30, %27
  %54 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @uart_port_unlock(%struct.uart_port* %54, i64 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.uart_port* @uart_port_lock(%struct.uart_state*, i64) #1

declare dso_local i32 @uart_port_unlock(%struct.uart_port*, i64) #1

declare dso_local i64 @uart_circ_chars_free(%struct.circ_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
