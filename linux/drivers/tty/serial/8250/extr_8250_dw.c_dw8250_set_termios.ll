; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, i32 }
%struct.ktermios = type { i32 }
%struct.dw8250_data = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@UPSTAT_AUTOCTS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @dw8250_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw8250_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dw8250_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %11 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %12 = call i32 @tty_termios_baud_rate(%struct.ktermios* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.dw8250_data* @to_dw8250_data(i32 %15)
  store %struct.dw8250_data* %16, %struct.dw8250_data** %8, align 8
  %17 = load %struct.dw8250_data*, %struct.dw8250_data** %8, align 8
  %18 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %64

23:                                               ; preds = %3
  %24 = load %struct.dw8250_data*, %struct.dw8250_data** %8, align 8
  %25 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  %28 = load %struct.dw8250_data*, %struct.dw8250_data** %8, align 8
  %29 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul i32 %31, 16
  %33 = call i64 @clk_round_rate(i32 %30, i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  br label %52

39:                                               ; preds = %23
  %40 = load i64, i64* %9, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %51

45:                                               ; preds = %39
  %46 = load %struct.dw8250_data*, %struct.dw8250_data** %8, align 8
  %47 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @clk_set_rate(i32 %48, i64 %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %45, %42
  br label %52

52:                                               ; preds = %51, %36
  %53 = load %struct.dw8250_data*, %struct.dw8250_data** %8, align 8
  %54 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_prepare_enable(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %52
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %52
  br label %64

64:                                               ; preds = %63, %22
  %65 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %72 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CRTSCTS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %79 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %64
  %84 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %85 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %86 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %87 = call i32 @serial8250_do_set_termios(%struct.uart_port* %84, %struct.ktermios* %85, %struct.ktermios* %86)
  ret void
}

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local %struct.dw8250_data* @to_dw8250_data(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i64 @clk_round_rate(i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @serial8250_do_set_termios(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
