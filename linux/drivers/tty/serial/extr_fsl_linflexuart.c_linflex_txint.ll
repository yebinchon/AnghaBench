; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_txint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_txint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }

@BDRL = common dso_local global i64 0, align 8
@UARTSR = common dso_local global i64 0, align 8
@LINFLEXD_UARTSR_DTFTFF = common dso_local global i64 0, align 8
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @linflex_txint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linflex_txint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.circ_buf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uart_port*
  store %struct.uart_port* %10, %struct.uart_port** %5, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.circ_buf* %14, %struct.circ_buf** %6, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %2
  %24 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BDRL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writeb(i64 %26, i64 %31)
  br label %33

33:                                               ; preds = %44, %23
  %34 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UARTSR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i64 @readl(i64 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* @LINFLEXD_UARTSR_DTFTFF, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* @LINFLEXD_UARTSR_DTFTFF, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %33

45:                                               ; preds = %33
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @LINFLEXD_UARTSR_DTFTFF, align 8
  %48 = or i64 %46, %47
  %49 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UARTSR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i64 %48, i64 %53)
  br label %77

55:                                               ; preds = %2
  %56 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %57 = call i64 @uart_circ_empty(%struct.circ_buf* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %61 = call i64 @uart_tx_stopped(%struct.uart_port* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55
  %64 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %65 = call i32 @linflex_stop_tx(%struct.uart_port* %64)
  br label %77

66:                                               ; preds = %59
  %67 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %68 = call i32 @linflex_transmit_buffer(%struct.uart_port* %67)
  %69 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %70 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %69)
  %71 = load i64, i64* @WAKEUP_CHARS, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %75 = call i32 @uart_write_wakeup(%struct.uart_port* %74)
  br label %76

76:                                               ; preds = %73, %66
  br label %77

77:                                               ; preds = %76, %63, %45
  %78 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 0
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %82
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i64, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @linflex_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @linflex_transmit_buffer(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
