; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.mxs_auart_port = type { i32 }

@REG_STAT = common dso_local global i32 0, align 4
@AUART_STAT_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mxs_auart_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_auart_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.mxs_auart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.mxs_auart_port* @to_auart_port(%struct.uart_port* %6)
  store %struct.mxs_auart_port* %7, %struct.mxs_auart_port** %3, align 8
  %8 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %9 = load i32, i32* @REG_STAT, align 4
  %10 = call i32 @mxs_read(%struct.mxs_auart_port* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AUART_STAT_CTS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @TIOCM_CTS, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %21 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mctrl_gpio_get(i32 %22, i32* %5)
  ret i32 %23
}

declare dso_local %struct.mxs_auart_port* @to_auart_port(%struct.uart_port*) #1

declare dso_local i32 @mxs_read(%struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mctrl_gpio_get(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
