; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_handle_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32* }
%struct.sc16is7xx_port = type { i32* }

@SC16IS7XX_THR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_TXLVL_REG = common dso_local global i32 0, align 4
@SC16IS7XX_FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"chip reports %d free bytes in TX fifo, but it only has %d\00", align 1
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sc16is7xx_handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc16is7xx_handle_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sc16is7xx_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.sc16is7xx_port* @dev_get_drvdata(i32 %10)
  store %struct.sc16is7xx_port* %11, %struct.sc16is7xx_port** %3, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.circ_buf* %15, %struct.circ_buf** %4, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @unlikely(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = load i32, i32* @SC16IS7XX_THR_REG, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @sc16is7xx_port_write(%struct.uart_port* %22, i32 %23, i64 %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  br label %125

35:                                               ; preds = %1
  %36 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %37 = call i64 @uart_circ_empty(%struct.circ_buf* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = call i64 @uart_tx_stopped(%struct.uart_port* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  br label %125

44:                                               ; preds = %39
  %45 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %46 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %117

50:                                               ; preds = %44
  %51 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %52 = load i32, i32* @SC16IS7XX_TXLVL_REG, align 4
  %53 = call i32 @sc16is7xx_port_read(%struct.uart_port* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SC16IS7XX_FIFO_SIZE, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SC16IS7XX_FIFO_SIZE, align 4
  %63 = call i32 @dev_err_ratelimited(i32 %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %57, %50
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %75
  store i64 %80, i64* %78, align 8
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %110, %72
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  %86 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %87 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %90 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %95 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %101 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  %104 = load i32, i32* @UART_XMIT_SIZE, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = and i64 %103, %106
  %108 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %109 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %85
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %81

113:                                              ; preds = %81
  %114 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @sc16is7xx_fifo_write(%struct.uart_port* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %44
  %118 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %119 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %118)
  %120 = load i32, i32* @WAKEUP_CHARS, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %124 = call i32 @uart_write_wakeup(%struct.uart_port* %123)
  br label %125

125:                                              ; preds = %21, %43, %122, %117
  ret void
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @sc16is7xx_port_write(%struct.uart_port*, i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sc16is7xx_port_read(%struct.uart_port*, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, i32) #1

declare dso_local i32 @sc16is7xx_fifo_write(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
