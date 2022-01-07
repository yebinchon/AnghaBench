; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @apbuart_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apbuart_tx_chars(%struct.uart_port* %0) #0 {
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
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @UART_PUT_CHAR(%struct.uart_port* %14, i64 %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  br label %92

26:                                               ; preds = %1
  %27 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %28 = call i64 @uart_circ_empty(%struct.circ_buf* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = call i64 @uart_tx_stopped(%struct.uart_port* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = call i32 @apbuart_stop_tx(%struct.uart_port* %35)
  br label %92

37:                                               ; preds = %30
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %73, %37
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %45 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %48 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @UART_PUT_CHAR(%struct.uart_port* %43, i64 %51)
  %53 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  %57 = load i32, i32* @UART_XMIT_SIZE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = and i64 %56, %59
  %61 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %62 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %69 = call i64 @uart_circ_empty(%struct.circ_buf* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %42
  br label %77

72:                                               ; preds = %42
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %4, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %42, label %77

77:                                               ; preds = %73, %71
  %78 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %79 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %78)
  %80 = load i64, i64* @WAKEUP_CHARS, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %84 = call i32 @uart_write_wakeup(%struct.uart_port* %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %87 = call i64 @uart_circ_empty(%struct.circ_buf* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %91 = call i32 @apbuart_stop_tx(%struct.uart_port* %90)
  br label %92

92:                                               ; preds = %13, %34, %89, %85
  ret void
}

declare dso_local i32 @UART_PUT_CHAR(%struct.uart_port*, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @apbuart_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
