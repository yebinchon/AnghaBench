; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32* }

@UA_EMI_REC = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @digicolor_uart_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digicolor_uart_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call i64 @digicolor_uart_tx_full(%struct.uart_port* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %105

13:                                               ; preds = %1
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %13
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UA_EMI_REC, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writeb_relaxed(i64 %25, i64 %30)
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  br label %100

39:                                               ; preds = %13
  %40 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %41 = call i64 @uart_circ_empty(%struct.circ_buf* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %45 = call i64 @uart_tx_stopped(%struct.uart_port* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %39
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = call i32 @digicolor_uart_stop_tx(%struct.uart_port* %48)
  br label %100

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %90, %50
  %52 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %53 = call i64 @uart_circ_empty(%struct.circ_buf* %52)
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %91

56:                                               ; preds = %51
  %57 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %58 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UA_EMI_REC, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writeb(i32 %64, i64 %69)
  %71 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %72 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  %75 = load i32, i32* @UART_XMIT_SIZE, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = and i64 %74, %77
  %79 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %80 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %87 = call i64 @digicolor_uart_tx_full(%struct.uart_port* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %56
  br label %91

90:                                               ; preds = %56
  br label %51

91:                                               ; preds = %89, %51
  %92 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %93 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %92)
  %94 = load i64, i64* @WAKEUP_CHARS, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %98 = call i32 @uart_write_wakeup(%struct.uart_port* %97)
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %99, %47, %22
  %101 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 0
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %100, %12
  ret void
}

declare dso_local i64 @digicolor_uart_tx_full(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb_relaxed(i64, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @digicolor_uart_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
