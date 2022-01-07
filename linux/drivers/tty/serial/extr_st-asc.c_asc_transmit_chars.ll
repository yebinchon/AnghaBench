; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i8, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i8*, i64 }

@ASC_TXBUF = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @asc_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asc_transmit_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = call i32 @asc_hw_txroom(%struct.uart_port* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  store i8 %23, i8* %5, align 1
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  store i8 0, i8* %25, align 8
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load i32, i32* @ASC_TXBUF, align 4
  %28 = load i8, i8* %5, align 1
  %29 = call i32 @asc_out(%struct.uart_port* %26, i32 %27, i8 zeroext %28)
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = call i32 @asc_hw_txroom(%struct.uart_port* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %20, %14, %1
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = call i64 @uart_tx_stopped(%struct.uart_port* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = call i32 @asc_disable_tx_interrupts(%struct.uart_port* %42)
  br label %111

44:                                               ; preds = %37
  %45 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %46 = call i64 @uart_circ_empty(%struct.circ_buf* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = call i32 @asc_disable_tx_interrupts(%struct.uart_port* %49)
  br label %111

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %111

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %94, %55
  %57 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %58 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %5, align 1
  %65 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %66 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  %69 = load i32, i32* @UART_XMIT_SIZE, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = and i64 %68, %71
  %73 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %74 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %76 = load i32, i32* @ASC_TXBUF, align 4
  %77 = load i8, i8* %5, align 1
  %78 = call i32 @asc_out(%struct.uart_port* %75, i32 %76, i8 zeroext %77)
  %79 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %56
  %87 = load i32, i32* %4, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %91 = call i64 @uart_circ_empty(%struct.circ_buf* %90)
  %92 = icmp ne i64 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %89, %86
  %95 = phi i1 [ false, %86 ], [ %93, %89 ]
  br i1 %95, label %56, label %96

96:                                               ; preds = %94
  %97 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %98 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %97)
  %99 = load i64, i64* @WAKEUP_CHARS, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %103 = call i32 @uart_write_wakeup(%struct.uart_port* %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %106 = call i64 @uart_circ_empty(%struct.circ_buf* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %110 = call i32 @asc_disable_tx_interrupts(%struct.uart_port* %109)
  br label %111

111:                                              ; preds = %41, %48, %54, %108, %104
  ret void
}

declare dso_local i32 @asc_hw_txroom(%struct.uart_port*) #1

declare dso_local i32 @asc_out(%struct.uart_port*, i32, i8 zeroext) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @asc_disable_tx_interrupts(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
