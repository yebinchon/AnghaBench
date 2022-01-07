; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vt8500_serial.c_handle_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vt8500_serial.c_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@VT8500_TXFIFO = common dso_local global i64 0, align 8
@VT8500_URFIDX = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.circ_buf* %7, %struct.circ_buf** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VT8500_TXFIFO, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writeb(i64 %15, i64 %20)
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %12, %1
  %30 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %31 = call i64 @uart_circ_empty(%struct.circ_buf* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = call i64 @uart_tx_stopped(%struct.uart_port* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = call i32 @vt8500_stop_tx(%struct.uart_port* %38)
  br label %97

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %52, %40
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = load i32, i32* @VT8500_URFIDX, align 4
  %44 = call i32 @vt8500_read(%struct.uart_port* %42, i32 %43)
  %45 = and i32 %44, 31
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %47, label %82

47:                                               ; preds = %41
  %48 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %49 = call i64 @uart_circ_empty(%struct.circ_buf* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %82

52:                                               ; preds = %47
  %53 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VT8500_TXFIFO, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writeb(i64 %60, i64 %65)
  %67 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %68 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  %71 = load i32, i32* @UART_XMIT_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = and i64 %70, %73
  %75 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %76 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %41

82:                                               ; preds = %51, %41
  %83 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %84 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %83)
  %85 = load i64, i64* @WAKEUP_CHARS, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %89 = call i32 @uart_write_wakeup(%struct.uart_port* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %92 = call i64 @uart_circ_empty(%struct.circ_buf* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %96 = call i32 @vt8500_stop_tx(%struct.uart_port* %95)
  br label %97

97:                                               ; preds = %37, %94, %90
  ret void
}

declare dso_local i32 @writeb(i64, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @vt8500_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @vt8500_read(%struct.uart_port*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
