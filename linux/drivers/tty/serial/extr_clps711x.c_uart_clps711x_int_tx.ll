; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_int_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_int_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i64, i32, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }
%struct.clps711x_port = type { i32, i64 }

@UARTDR_OFFSET = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@SYSFLG_OFFSET = common dso_local global i32 0, align 4
@SYSFLG_UTXFF = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @uart_clps711x_int_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_clps711x_int_tx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.clps711x_port*, align 8
  %8 = alloca %struct.circ_buf*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.uart_port*
  store %struct.uart_port* %11, %struct.uart_port** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.clps711x_port* @dev_get_drvdata(i32 %14)
  store %struct.clps711x_port* %15, %struct.clps711x_port** %7, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.circ_buf* %19, %struct.circ_buf** %8, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %2
  %25 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UARTDR_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writew(i64 %27, i64 %32)
  %34 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %3, align 4
  br label %121

42:                                               ; preds = %2
  %43 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %44 = call i64 @uart_circ_empty(%struct.circ_buf* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %48 = call i64 @uart_tx_stopped(%struct.uart_port* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46, %42
  %51 = load %struct.clps711x_port*, %struct.clps711x_port** %7, align 8
  %52 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @disable_irq_nosync(i32 %58)
  %60 = load %struct.clps711x_port*, %struct.clps711x_port** %7, align 8
  %61 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %63, i32* %3, align 4
  br label %121

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %110, %64
  %66 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %67 = call i64 @uart_circ_empty(%struct.circ_buf* %66)
  %68 = icmp ne i64 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %70, label %111

70:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  %71 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %72 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %75 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @UARTDR_OFFSET, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writew(i64 %78, i64 %83)
  %85 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %86 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  %89 = load i32, i32* @UART_XMIT_SIZE, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = and i64 %88, %91
  %93 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %94 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.clps711x_port*, %struct.clps711x_port** %7, align 8
  %101 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SYSFLG_OFFSET, align 4
  %104 = call i32 @regmap_read(i32 %102, i32 %103, i32* %9)
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @SYSFLG_UTXFF, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %70
  br label %111

110:                                              ; preds = %70
  br label %65

111:                                              ; preds = %109, %65
  %112 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %113 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %112)
  %114 = load i64, i64* @WAKEUP_CHARS, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %118 = call i32 @uart_write_wakeup(%struct.uart_port* %117)
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %62, %24
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.clps711x_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @writew(i64, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
