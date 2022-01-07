; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap8250_update_mdr1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap8250_update_mdr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }
%struct.omap8250_priv = type { i32, i32 }

@UART_ERRATA_i202_MDR1_ACCESS = common dso_local global i32 0, align 4
@UART_OMAP_MDR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, %struct.omap8250_priv*)* @omap8250_update_mdr1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap8250_update_mdr1(%struct.uart_8250_port* %0, %struct.omap8250_priv* %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.omap8250_priv*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store %struct.omap8250_priv* %1, %struct.omap8250_priv** %4, align 8
  %5 = load %struct.omap8250_priv*, %struct.omap8250_priv** %4, align 8
  %6 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @UART_ERRATA_i202_MDR1_ACCESS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %13 = load %struct.omap8250_priv*, %struct.omap8250_priv** %4, align 8
  %14 = call i32 @omap_8250_mdr1_errataset(%struct.uart_8250_port* %12, %struct.omap8250_priv* %13)
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %17 = load i32, i32* @UART_OMAP_MDR1, align 4
  %18 = load %struct.omap8250_priv*, %struct.omap8250_priv** %4, align 8
  %19 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @serial_out(%struct.uart_8250_port* %16, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @omap_8250_mdr1_errataset(%struct.uart_8250_port*, %struct.omap8250_priv*) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
