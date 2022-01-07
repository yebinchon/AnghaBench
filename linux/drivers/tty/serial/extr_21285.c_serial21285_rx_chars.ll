; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_21285.c_serial21285_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_21285.c_serial21285_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@CSR_UARTFLG = common dso_local global i32* null, align 8
@CSR_UARTDR = common dso_local global i32* null, align 8
@TTY_NORMAL = common dso_local global i32 0, align 4
@CSR_RXSTAT = common dso_local global i32* null, align 8
@RXSTAT_DUMMY_READ = common dso_local global i32 0, align 4
@RXSTAT_ANYERR = common dso_local global i32 0, align 4
@RXSTAT_PARITY = common dso_local global i32 0, align 4
@RXSTAT_FRAME = common dso_local global i32 0, align 4
@RXSTAT_OVERRUN = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @serial21285_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial21285_rx_chars(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.uart_port*
  store %struct.uart_port* %12, %struct.uart_port** %5, align 8
  store i32 256, i32* %10, align 4
  %13 = load i32*, i32** @CSR_UARTFLG, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %98, %2
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %10, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %10, align 4
  %22 = icmp ne i32 %20, 0
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %107

25:                                               ; preds = %23
  %26 = load i32*, i32** @CSR_UARTDR, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32*, i32** @CSR_RXSTAT, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RXSTAT_DUMMY_READ, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @RXSTAT_ANYERR, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %98

43:                                               ; preds = %25
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @RXSTAT_PARITY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %66

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @RXSTAT_FRAME, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %54
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @RXSTAT_OVERRUN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @RXSTAT_PARITY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @TTY_PARITY, align 4
  store i32 %88, i32* %8, align 4
  br label %97

89:                                               ; preds = %77
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @RXSTAT_FRAME, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @TTY_FRAME, align 4
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %94, %89
  br label %97

97:                                               ; preds = %96, %87
  br label %98

98:                                               ; preds = %97, %25
  %99 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @RXSTAT_OVERRUN, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @uart_insert_char(%struct.uart_port* %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32*, i32** @CSR_UARTFLG, align 8
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %6, align 4
  br label %15

107:                                              ; preds = %23
  %108 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = call i32 @tty_flip_buffer_push(i32* %111)
  %113 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %113
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
