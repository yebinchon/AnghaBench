; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_handle_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32, i64, i32 }

@MAX310X_THR_REG = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@MAX310X_TXFIFOLVL_REG = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @max310x_handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max310x_handle_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.circ_buf* %10, %struct.circ_buf** %3, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @unlikely(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = load i32, i32* @MAX310X_THR_REG, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @max310x_port_write(%struct.uart_port* %17, i32 %18, i64 %21)
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  br label %132

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
  br label %132

39:                                               ; preds = %34
  %40 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %41 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %43 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %46 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @UART_XMIT_SIZE, align 4
  %49 = call i32 @CIRC_CNT_TO_END(i32 %44, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %124

53:                                               ; preds = %39
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = load i32, i32* @MAX310X_TXFIFOLVL_REG, align 4
  %56 = call i32 @max310x_port_read(%struct.uart_port* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sub i32 %59, %60
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %4, align 4
  br label %69

67:                                               ; preds = %53
  %68 = load i32, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %76 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %77 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %80 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = zext i32 %81 to i64
  %83 = add nsw i64 %78, %82
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @max310x_batch_write(%struct.uart_port* %75, i64 %83, i32 %84)
  %86 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %87 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %88 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub i32 %90, %91
  %93 = call i32 @max310x_batch_write(%struct.uart_port* %86, i64 %89, i32 %92)
  br label %106

94:                                               ; preds = %69
  %95 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %96 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %97 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %100 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = zext i32 %101 to i64
  %103 = add nsw i64 %98, %102
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @max310x_batch_write(%struct.uart_port* %95, i64 %103, i32 %104)
  br label %106

106:                                              ; preds = %94, %74
  %107 = load i32, i32* %5, align 4
  %108 = zext i32 %107 to i64
  %109 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %110 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %108
  store i64 %113, i64* %111, align 8
  %114 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %115 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = add i32 %116, %117
  %119 = load i32, i32* @UART_XMIT_SIZE, align 4
  %120 = sub nsw i32 %119, 1
  %121 = and i32 %118, %120
  %122 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %123 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %106, %39
  %125 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %126 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %125)
  %127 = load i32, i32* @WAKEUP_CHARS, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %131 = call i32 @uart_write_wakeup(%struct.uart_port* %130)
  br label %132

132:                                              ; preds = %16, %38, %129, %124
  ret void
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @max310x_port_write(%struct.uart_port*, i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @CIRC_CNT_TO_END(i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @max310x_port_read(%struct.uart_port*, i32) #1

declare dso_local i32 @max310x_batch_write(%struct.uart_port*, i64, i32) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
