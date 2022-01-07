; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_jtaguart.c_altera_jtaguart_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_jtaguart.c_altera_jtaguart_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_jtaguart = type { i64, %struct.uart_port }
%struct.uart_port = type { i64, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@ALTERA_JTAGUART_DATA_REG = common dso_local global i64 0, align 8
@ALTERA_JTAGUART_CONTROL_REG = common dso_local global i64 0, align 8
@ALTERA_JTAGUART_CONTROL_WSPACE_MSK = common dso_local global i32 0, align 4
@ALTERA_JTAGUART_CONTROL_WSPACE_OFF = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i32 0, align 4
@ALTERA_JTAGUART_CONTROL_WE_MSK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_jtaguart*)* @altera_jtaguart_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_jtaguart_tx_chars(%struct.altera_jtaguart* %0) #0 {
  %2 = alloca %struct.altera_jtaguart*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.altera_jtaguart* %0, %struct.altera_jtaguart** %2, align 8
  %7 = load %struct.altera_jtaguart*, %struct.altera_jtaguart** %2, align 8
  %8 = getelementptr inbounds %struct.altera_jtaguart, %struct.altera_jtaguart* %7, i32 0, i32 1
  store %struct.uart_port* %8, %struct.uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.circ_buf* %12, %struct.circ_buf** %4, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ALTERA_JTAGUART_DATA_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i64 %20, i64 %25)
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %124

34:                                               ; preds = %1
  %35 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %36 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ugt i32 %37, 0
  br i1 %38, label %39, label %105

39:                                               ; preds = %34
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ALTERA_JTAGUART_CONTROL_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  %46 = load i32, i32* @ALTERA_JTAGUART_CONTROL_WSPACE_MSK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @ALTERA_JTAGUART_CONTROL_WSPACE_OFF, align 4
  %49 = lshr i32 %47, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %39
  %56 = load i32, i32* %6, align 4
  %57 = icmp ugt i32 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %66, %58
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, -1
  store i32 %64, i32* %6, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %62
  %67 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %68 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %71 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ALTERA_JTAGUART_DATA_REG, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i64 %74, i64 %79)
  %81 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %82 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  %85 = load i32, i32* @UART_XMIT_SIZE, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = and i64 %84, %87
  %89 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %90 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %62

96:                                               ; preds = %62
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @WAKEUP_CHARS, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %102 = call i32 @uart_write_wakeup(%struct.uart_port* %101)
  br label %103

103:                                              ; preds = %100, %96
  br label %104

104:                                              ; preds = %103, %55
  br label %105

105:                                              ; preds = %104, %34
  %106 = load i32, i32* %5, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  %109 = load i64, i64* @ALTERA_JTAGUART_CONTROL_WE_MSK, align 8
  %110 = xor i64 %109, -1
  %111 = load %struct.altera_jtaguart*, %struct.altera_jtaguart** %2, align 8
  %112 = getelementptr inbounds %struct.altera_jtaguart, %struct.altera_jtaguart* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = and i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load %struct.altera_jtaguart*, %struct.altera_jtaguart** %2, align 8
  %116 = getelementptr inbounds %struct.altera_jtaguart, %struct.altera_jtaguart* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %119 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ALTERA_JTAGUART_CONTROL_REG, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i64 %117, i64 %122)
  br label %124

124:                                              ; preds = %17, %108, %105
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
