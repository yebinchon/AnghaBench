; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap8250_update_scr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap8250_update_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }
%struct.omap8250_priv = type { i32 }

@UART_OMAP_SCR = common dso_local global i32 0, align 4
@OMAP_UART_SCR_DMAMODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, %struct.omap8250_priv*)* @omap8250_update_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap8250_update_scr(%struct.uart_8250_port* %0, %struct.omap8250_priv* %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.omap8250_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store %struct.omap8250_priv* %1, %struct.omap8250_priv** %4, align 8
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %7 = load i32, i32* @UART_OMAP_SCR, align 4
  %8 = call i32 @serial_in(%struct.uart_8250_port* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.omap8250_priv*, %struct.omap8250_priv** %4, align 8
  %11 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.omap8250_priv*, %struct.omap8250_priv** %4, align 8
  %17 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @OMAP_UART_SCR_DMAMODE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %24 = load i32, i32* @UART_OMAP_SCR, align 4
  %25 = load %struct.omap8250_priv*, %struct.omap8250_priv** %4, align 8
  %26 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OMAP_UART_SCR_DMAMODE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @serial_out(%struct.uart_8250_port* %23, i32 %24, i32 %30)
  br label %32

32:                                               ; preds = %22, %15
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %34 = load i32, i32* @UART_OMAP_SCR, align 4
  %35 = load %struct.omap8250_priv*, %struct.omap8250_priv** %4, align 8
  %36 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @serial_out(%struct.uart_8250_port* %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %14
  ret void
}

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
