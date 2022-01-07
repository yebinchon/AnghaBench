; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c___serial_lpc32xx_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c___serial_lpc32xx_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@LPC32XX_HSU_TX_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @__serial_lpc32xx_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__serial_lpc32xx_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @LPC32XX_HSUART_FIFO(i32 %20)
  %22 = call i32 @writel(i32 %17, i32 %21)
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  br label %112

30:                                               ; preds = %1
  %31 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %32 = call i64 @uart_circ_empty(%struct.circ_buf* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = call i64 @uart_tx_stopped(%struct.uart_port* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30
  br label %92

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %82, %39
  %41 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @LPC32XX_HSUART_LEVEL(i32 %43)
  %45 = call i32 @readl(i32 %44)
  %46 = call i32 @LPC32XX_HSU_TX_LEV(i32 %45)
  %47 = icmp slt i32 %46, 64
  br i1 %47, label %48, label %83

48:                                               ; preds = %40
  %49 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %50 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %53 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @LPC32XX_HSUART_FIFO(i32 %60)
  %62 = call i32 @writel(i32 %57, i32 %61)
  %63 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  %67 = load i32, i32* @UART_XMIT_SIZE, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = and i64 %66, %69
  %71 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %72 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %79 = call i64 @uart_circ_empty(%struct.circ_buf* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %48
  br label %83

82:                                               ; preds = %48
  br label %40

83:                                               ; preds = %81, %40
  %84 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %85 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %84)
  %86 = load i64, i64* @WAKEUP_CHARS, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %90 = call i32 @uart_write_wakeup(%struct.uart_port* %89)
  br label %91

91:                                               ; preds = %88, %83
  br label %92

92:                                               ; preds = %91, %38
  %93 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %94 = call i64 @uart_circ_empty(%struct.circ_buf* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @LPC32XX_HSUART_CTRL(i32 %99)
  %101 = call i32 @readl(i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* @LPC32XX_HSU_TX_INT_EN, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @LPC32XX_HSUART_CTRL(i32 %109)
  %111 = call i32 @writel(i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %13, %96, %92
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC32XX_HSUART_FIFO(i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @LPC32XX_HSU_TX_LEV(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @LPC32XX_HSUART_LEVEL(i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @LPC32XX_HSUART_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
