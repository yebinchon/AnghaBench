; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.mxs_auart_port = type { i32, i32, i32, i32 }

@AUART_CTRL0_CLKGATE = common dso_local global i32 0, align 4
@REG_CTRL0 = common dso_local global i32 0, align 4
@AUART_CTRL2_UARTEN = common dso_local global i32 0, align 4
@REG_CTRL2 = common dso_local global i32 0, align 4
@AUART_INTR_RXIEN = common dso_local global i32 0, align 4
@AUART_INTR_RTIEN = common dso_local global i32 0, align 4
@AUART_INTR_CTSMIEN = common dso_local global i32 0, align 4
@REG_INTR = common dso_local global i32 0, align 4
@MXS_AUART_FIFO_SIZE = common dso_local global i32 0, align 4
@AUART_LINECTRL_FEN = common dso_local global i32 0, align 4
@REG_LINECTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mxs_auart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_auart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxs_auart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.mxs_auart_port* @to_auart_port(%struct.uart_port* %6)
  store %struct.mxs_auart_port* %7, %struct.mxs_auart_port** %5, align 8
  %8 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %9 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = call i64 @uart_console(%struct.uart_port* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* @AUART_CTRL0_CLKGATE, align 4
  %22 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %23 = load i32, i32* @REG_CTRL0, align 4
  %24 = call i32 @mxs_clr(i32 %21, %struct.mxs_auart_port* %22, i32 %23)
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %27 = call i32 @mxs_auart_reset_assert(%struct.mxs_auart_port* %26)
  %28 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %29 = call i32 @mxs_auart_reset_deassert(%struct.mxs_auart_port* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @AUART_CTRL2_UARTEN, align 4
  %32 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %33 = load i32, i32* @REG_CTRL2, align 4
  %34 = call i32 @mxs_set(i32 %31, %struct.mxs_auart_port* %32, i32 %33)
  %35 = load i32, i32* @AUART_INTR_RXIEN, align 4
  %36 = load i32, i32* @AUART_INTR_RTIEN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AUART_INTR_CTSMIEN, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %41 = load i32, i32* @REG_INTR, align 4
  %42 = call i32 @mxs_write(i32 %39, %struct.mxs_auart_port* %40, i32 %41)
  %43 = load i32, i32* @MXS_AUART_FIFO_SIZE, align 4
  %44 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @AUART_LINECTRL_FEN, align 4
  %47 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %48 = load i32, i32* @REG_LINECTRL, align 4
  %49 = call i32 @mxs_set(i32 %46, %struct.mxs_auart_port* %47, i32 %48)
  %50 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %51 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %54 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %53, i32 0, i32 1
  %55 = call i32 @mctrl_gpio_get(i32 %52, i32* %54)
  %56 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %57 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %30, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.mxs_auart_port* @to_auart_port(%struct.uart_port*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @mxs_clr(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_auart_reset_assert(%struct.mxs_auart_port*) #1

declare dso_local i32 @mxs_auart_reset_deassert(%struct.mxs_auart_port*) #1

declare dso_local i32 @mxs_set(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_write(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mctrl_gpio_get(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
