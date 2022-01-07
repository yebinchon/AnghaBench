; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_copy_data_from_queue_to_uart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_copy_data_from_queue_to_uart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }

@CH_STOP = common dso_local global i32 0, align 4
@CH_BREAK_SENDING = common dso_local global i32 0, align 4
@CH_TX_FIFO_EMPTY = common dso_local global i32 0, align 4
@CH_TX_FIFO_LWM = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @cls_copy_data_from_queue_to_uart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cls_copy_data_from_queue_to_uart(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.circ_buf*, align 8
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %9 = icmp ne %struct.jsm_channel* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %119

11:                                               ; preds = %1
  %12 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %13 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.circ_buf* %16, %struct.circ_buf** %7, align 8
  %17 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %18 = call i64 @uart_circ_empty(%struct.circ_buf* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %119

21:                                               ; preds = %11
  %22 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %23 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CH_STOP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %30 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CH_BREAK_SENDING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %21
  br label %119

36:                                               ; preds = %28
  %37 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %38 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %41 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %119

46:                                               ; preds = %36
  store i32 32, i32* %4, align 4
  %47 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %48 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @UART_XMIT_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %49, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %3, align 8
  %54 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %55 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @min(i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %62, %46
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %70 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %69, i32 0, i32 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @writeb(i32 %68, i32* %72)
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 1
  %76 = load i32, i32* @UART_XMIT_SIZE, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = and i64 %75, %78
  store i64 %79, i64* %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %4, align 4
  %82 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %83 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load i64, i64* %6, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %59

88:                                               ; preds = %59
  %89 = load i64, i64* %3, align 8
  %90 = load i32, i32* @UART_XMIT_SIZE, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = and i64 %89, %92
  %94 = trunc i64 %93 to i32
  %95 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %96 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %99 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %88
  %103 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %104 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %108 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %102, %88
  %112 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %113 = call i64 @uart_circ_empty(%struct.circ_buf* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %117 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %116, i32 0, i32 2
  %118 = call i32 @uart_write_wakeup(%struct.TYPE_6__* %117)
  br label %119

119:                                              ; preds = %10, %20, %35, %45, %115, %111
  ret void
}

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
