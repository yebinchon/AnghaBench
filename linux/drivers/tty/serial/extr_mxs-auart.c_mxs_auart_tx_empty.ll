; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_tx_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_tx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.mxs_auart_port = type { i32 }

@REG_STAT = common dso_local global i32 0, align 4
@AUART_STAT_TXFE = common dso_local global i32 0, align 4
@AUART_STAT_BUSY = common dso_local global i32 0, align 4
@TIOCSER_TEMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mxs_auart_tx_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_auart_tx_empty(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.mxs_auart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = call %struct.mxs_auart_port* @to_auart_port(%struct.uart_port* %5)
  store %struct.mxs_auart_port* %6, %struct.mxs_auart_port** %4, align 8
  %7 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %8 = load i32, i32* @REG_STAT, align 4
  %9 = call i32 @mxs_read(%struct.mxs_auart_port* %7, i32 %8)
  %10 = load i32, i32* @AUART_STAT_TXFE, align 4
  %11 = load i32, i32* @AUART_STAT_BUSY, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = load i32, i32* @AUART_STAT_TXFE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @TIOCSER_TEMT, align 4
  store i32 %17, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %16
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.mxs_auart_port* @to_auart_port(%struct.uart_port*) #1

declare dso_local i32 @mxs_read(%struct.mxs_auart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
