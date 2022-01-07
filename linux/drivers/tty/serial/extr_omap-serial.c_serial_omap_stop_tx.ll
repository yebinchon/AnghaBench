; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.uart_omap_port = type { i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@OMAP_UART_SCR_TX_EMPTY = common dso_local global i32 0, align 4
@UART_OMAP_SCR = common dso_local global i32 0, align 4
@SER_RS485_RTS_AFTER_SEND = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@SER_RS485_RX_DURING_TX = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_omap_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_stop_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_omap_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %5)
  store %struct.uart_omap_port* %6, %struct.uart_omap_port** %3, align 8
  %7 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SER_RS485_ENABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %85

18:                                               ; preds = %1
  %19 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OMAP_UART_SCR_TX_EMPTY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %18
  %26 = load i32, i32* @OMAP_UART_SCR_TX_EMPTY, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %33 = load i32, i32* @UART_OMAP_SCR, align 4
  %34 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @serial_out(%struct.uart_omap_port* %32, i32 %33, i32 %36)
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %4, align 4
  %47 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %48 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gpio_get_value(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %25
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @mdelay(i64 %63)
  br label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %67 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @gpio_set_value(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %25
  br label %84

72:                                               ; preds = %18
  %73 = load i32, i32* @OMAP_UART_SCR_TX_EMPTY, align 4
  %74 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %75 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %79 = load i32, i32* @UART_OMAP_SCR, align 4
  %80 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %81 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @serial_out(%struct.uart_omap_port* %78, i32 %79, i32 %82)
  br label %158

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %1
  %86 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %87 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @UART_IER_THRI, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load i32, i32* @UART_IER_THRI, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %96 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %100 = load i32, i32* @UART_IER, align 4
  %101 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %102 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @serial_out(%struct.uart_omap_port* %99, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %92, %85
  %106 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %107 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SER_RS485_ENABLED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %149

113:                                              ; preds = %105
  %114 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %149, label %121

121:                                              ; preds = %113
  %122 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %123 = load i32, i32* @UART_FCR, align 4
  %124 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %125 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @serial_out(%struct.uart_omap_port* %122, i32 %123, i32 %128)
  %130 = load i32, i32* @UART_IER_RLSI, align 4
  %131 = load i32, i32* @UART_IER_RDI, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %134 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* @UART_LSR_DR, align 4
  %138 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %139 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %137
  store i32 %142, i32* %140, align 4
  %143 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %144 = load i32, i32* @UART_IER, align 4
  %145 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %146 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @serial_out(%struct.uart_omap_port* %143, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %121, %113, %105
  %150 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %151 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @pm_runtime_mark_last_busy(i32 %152)
  %154 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %155 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @pm_runtime_put_autosuspend(i32 %156)
  br label %158

158:                                              ; preds = %149, %72
  ret void
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @serial_out(%struct.uart_omap_port*, i32, i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @mdelay(i64) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
