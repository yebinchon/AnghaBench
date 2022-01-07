; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_uart_err_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_uart_err_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eg20t_port = type { %struct.TYPE_6__*, %struct.uart_port }
%struct.TYPE_6__ = type { i32 }
%struct.uart_port = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tty_struct = type { i32 }

@PCH_UART_LSR_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Error data in FIFO\0A\00", align 1
@UART_LSR_FE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"  Framing Error\0A\00", align 1
@UART_LSR_PE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"  Parity Error\0A\00", align 1
@UART_LSR_OE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"  Overrun Error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eg20t_port*, i32)* @pch_uart_err_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_uart_err_ir(%struct.eg20t_port* %0, i32 %1) #0 {
  %3 = alloca %struct.eg20t_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca [5 x i8*], align 16
  %8 = alloca i32, align 4
  store %struct.eg20t_port* %0, %struct.eg20t_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %10 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %9, i32 0, i32 1
  store %struct.uart_port* %10, %struct.uart_port** %5, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call %struct.tty_struct* @tty_port_tty_get(i32* %14)
  store %struct.tty_struct* %15, %struct.tty_struct** %6, align 8
  %16 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false)
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PCH_UART_LSR_ERR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %24
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @UART_LSR_FE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %39
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %40, align 8
  br label %41

41:                                               ; preds = %31, %26
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @UART_LSR_PE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %54
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %55, align 8
  br label %56

56:                                               ; preds = %46, %41
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @UART_LSR_OE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %69
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %70, align 8
  br label %71

71:                                               ; preds = %61, %56
  %72 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %73 = icmp eq %struct.tty_struct* %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %91, %74
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %83 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @dev_err(i32* %85, i8* %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %75

94:                                               ; preds = %75
  br label %98

95:                                               ; preds = %71
  %96 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %97 = call i32 @tty_kref_put(%struct.tty_struct* %96)
  br label %98

98:                                               ; preds = %95, %94
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
