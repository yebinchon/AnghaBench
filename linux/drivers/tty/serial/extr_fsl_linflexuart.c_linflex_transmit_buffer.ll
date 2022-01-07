; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_transmit_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_transmit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i8*, i64 }

@BDRL = common dso_local global i64 0, align 8
@UARTSR = common dso_local global i64 0, align 8
@LINFLEXD_UARTSR_DTFTFF = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @linflex_transmit_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linflex_transmit_buffer(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  br label %10

10:                                               ; preds = %43, %1
  %11 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %12 = call i64 @uart_circ_empty(%struct.circ_buf* %11)
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %68

15:                                               ; preds = %10
  %16 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %17 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %20 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %4, align 1
  %24 = load i8, i8* %4, align 1
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BDRL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writeb(i8 zeroext %24, i64 %29)
  br label %31

31:                                               ; preds = %42, %15
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UARTSR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i64 @readl(i64 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* @LINFLEXD_UARTSR_DTFTFF, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* @LINFLEXD_UARTSR_DTFTFF, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %31

43:                                               ; preds = %31
  %44 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %45 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  %48 = load i32, i32* @UART_XMIT_SIZE, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = and i64 %47, %50
  %52 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %53 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @LINFLEXD_UARTSR_DTFTFF, align 8
  %61 = or i64 %59, %60
  %62 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @UARTSR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i64 %61, i64 %66)
  br label %10

68:                                               ; preds = %10
  %69 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %70 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %69)
  %71 = load i64, i64* @WAKEUP_CHARS, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %75 = call i32 @uart_write_wakeup(%struct.uart_port* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %78 = call i64 @uart_circ_empty(%struct.circ_buf* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %82 = call i32 @linflex_stop_tx(%struct.uart_port* %81)
  br label %83

83:                                               ; preds = %80, %76
  ret void
}

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @linflex_stop_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
