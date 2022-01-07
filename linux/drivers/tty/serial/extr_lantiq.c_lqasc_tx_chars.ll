; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@LTQ_ASC_FSTAT = common dso_local global i64 0, align 8
@ASCFSTAT_TXFREEMASK = common dso_local global i32 0, align 4
@ASCFSTAT_TXFREEOFF = common dso_local global i32 0, align 4
@LTQ_ASC_TBUF = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @lqasc_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lqasc_tx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.circ_buf* %7, %struct.circ_buf** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = call i64 @uart_tx_stopped(%struct.uart_port* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = call i32 @lqasc_stop_tx(%struct.uart_port* %12)
  br label %98

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %54, %32, %14
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LTQ_ASC_FSTAT, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @__raw_readl(i64 %20)
  %22 = load i32, i32* @ASCFSTAT_TXFREEMASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @ASCFSTAT_TXFREEOFF, align 4
  %25 = ashr i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %90

27:                                               ; preds = %15
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LTQ_ASC_TBUF, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writeb(i64 %35, i64 %40)
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  br label %15

49:                                               ; preds = %27
  %50 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %51 = call i64 @uart_circ_empty(%struct.circ_buf* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %90

54:                                               ; preds = %49
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %60, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @LTQ_ASC_TBUF, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writeb(i64 %68, i64 %73)
  %75 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %76 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  %79 = load i32, i32* @UART_XMIT_SIZE, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = and i64 %78, %81
  %83 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %84 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %15

90:                                               ; preds = %53, %15
  %91 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %92 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %91)
  %93 = load i64, i64* @WAKEUP_CHARS, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %97 = call i32 @uart_write_wakeup(%struct.uart_port* %96)
  br label %98

98:                                               ; preds = %11, %95, %90
  ret void
}

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @lqasc_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @writeb(i64, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
