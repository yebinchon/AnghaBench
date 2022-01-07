; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eg20t_port = type { %struct.uart_port }
%struct.uart_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32*, i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%d characters. Remained %d characters.(%lu)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eg20t_port*, i32)* @pop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop_tx(%struct.eg20t_port* %0, i32 %1) #0 {
  %3 = alloca %struct.eg20t_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.circ_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.eg20t_port* %0, %struct.eg20t_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %11 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %10, i32 0, i32 0
  store %struct.uart_port* %11, %struct.uart_port** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.circ_buf* %15, %struct.circ_buf** %7, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %17 = call i64 @uart_tx_stopped(%struct.uart_port* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %21 = call i64 @uart_circ_empty(%struct.circ_buf* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %2
  br label %79

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %76, %28
  %30 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %31 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %34 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @UART_XMIT_SIZE, align 4
  %37 = call i32 @CIRC_CNT_TO_END(i32 %32, i64 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @min(i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %44 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %45 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %48 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @pch_uart_hal_write(%struct.eg20t_port* %43, i32* %50, i32 %51)
  %53 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %55, %57
  %59 = load i32, i32* @UART_XMIT_SIZE, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = and i64 %58, %61
  %63 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %29
  %69 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %70 = call i64 @uart_circ_empty(%struct.circ_buf* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %73, %74
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  br i1 %77, label %29, label %78

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %27
  %80 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %81 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* @jiffies, align 4
  %89 = call i32 @dev_dbg(i32 %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %87, i32 %88)
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @CIRC_CNT_TO_END(i32, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pch_uart_hal_write(%struct.eg20t_port*, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
