; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.mxs_auart_port = type { i32 }

@REG_CTRL2 = common dso_local global i32 0, align 4
@AUART_CTRL2_RTSEN = common dso_local global i32 0, align 4
@AUART_CTRL2_RTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @mxs_auart_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_auart_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxs_auart_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.mxs_auart_port* @to_auart_port(%struct.uart_port* %7)
  store %struct.mxs_auart_port* %8, %struct.mxs_auart_port** %5, align 8
  %9 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %10 = load i32, i32* @REG_CTRL2, align 4
  %11 = call i32 @mxs_read(%struct.mxs_auart_port* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @AUART_CTRL2_RTSEN, align 4
  %13 = load i32, i32* @AUART_CTRL2_RTS, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TIOCM_RTS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = call i64 @uart_cts_enabled(%struct.uart_port* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @AUART_CTRL2_RTSEN, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @AUART_CTRL2_RTS, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %38 = load i32, i32* @REG_CTRL2, align 4
  %39 = call i32 @mxs_write(i32 %36, %struct.mxs_auart_port* %37, i32 %38)
  %40 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %41 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @mctrl_gpio_set(i32 %42, i32 %43)
  ret void
}

declare dso_local %struct.mxs_auart_port* @to_auart_port(%struct.uart_port*) #1

declare dso_local i32 @mxs_read(%struct.mxs_auart_port*, i32) #1

declare dso_local i64 @uart_cts_enabled(%struct.uart_port*) #1

declare dso_local i32 @mxs_write(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mctrl_gpio_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
