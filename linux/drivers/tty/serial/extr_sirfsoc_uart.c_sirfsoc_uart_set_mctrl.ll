; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sirfsoc_uart_port = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, %struct.sirfsoc_register }
%struct.sirfsoc_register = type { i32, i32, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@SIRFUART_AFC_CTRL_RX_THD = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@SIRF_REAL_UART = common dso_local global i64 0, align 8
@SIRFUART_LOOP_BACK = common dso_local global i32 0, align 4
@SIRFSOC_USP_LOOP_BACK_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sirfsoc_uart_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_uart_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sirfsoc_uart_port*, align 8
  %6 = alloca %struct.sirfsoc_register*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %10)
  store %struct.sirfsoc_uart_port* %11, %struct.sirfsoc_uart_port** %5, align 8
  %12 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.sirfsoc_register* %15, %struct.sirfsoc_register** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TIOCM_RTS, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @SIRFUART_AFC_CTRL_RX_THD, align 4
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @TIOCM_LOOP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  %31 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %32 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SIRF_REAL_UART, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %40 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %41 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %45 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rd_regl(%struct.uart_port* %43, i32 %46)
  %48 = load i32, i32* @SIRFUART_LOOP_BACK, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @wr_regl(%struct.uart_port* %39, i32 %42, i32 %49)
  br label %64

51:                                               ; preds = %30
  %52 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %53 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %54 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %58 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rd_regl(%struct.uart_port* %56, i32 %59)
  %61 = load i32, i32* @SIRFSOC_USP_LOOP_BACK_CTRL, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @wr_regl(%struct.uart_port* %52, i32 %55, i32 %62)
  br label %64

64:                                               ; preds = %51, %38
  br label %102

65:                                               ; preds = %24
  %66 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %67 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SIRF_REAL_UART, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %65
  %74 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %75 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %76 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %79 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %80 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @rd_regl(%struct.uart_port* %78, i32 %81)
  %83 = load i32, i32* @SIRFUART_LOOP_BACK, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = call i32 @wr_regl(%struct.uart_port* %74, i32 %77, i32 %85)
  br label %101

87:                                               ; preds = %65
  %88 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %89 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %90 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %93 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %94 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @rd_regl(%struct.uart_port* %92, i32 %95)
  %97 = load i32, i32* @SIRFSOC_USP_LOOP_BACK_CTRL, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = call i32 @wr_regl(%struct.uart_port* %88, i32 %91, i32 %99)
  br label %101

101:                                              ; preds = %87, %73
  br label %102

102:                                              ; preds = %101, %64
  %103 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %104 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %109 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107, %102
  br label %151

113:                                              ; preds = %107
  %114 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %115 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SIRF_REAL_UART, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %113
  %122 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %123 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %124 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @rd_regl(%struct.uart_port* %122, i32 %125)
  %127 = and i32 %126, -256
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %132 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %133 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @wr_regl(%struct.uart_port* %131, i32 %134, i32 %135)
  br label %151

137:                                              ; preds = %113
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %142 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @gpio_set_value(i32 %143, i32 1)
  br label %150

145:                                              ; preds = %137
  %146 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %147 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @gpio_set_value(i32 %148, i32 0)
  br label %150

150:                                              ; preds = %145, %140
  br label %151

151:                                              ; preds = %112, %150, %121
  ret void
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
