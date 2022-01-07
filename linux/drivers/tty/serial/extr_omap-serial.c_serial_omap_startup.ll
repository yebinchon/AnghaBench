; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_omap_port = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@serial_omap_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"serial_omap_startup+%d\0A\00", align 1
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@OMAP_UART_WER_MOD_WKUP = common dso_local global i32 0, align 4
@OMAP_UART_WER_HAS_TX_WAKEUP = common dso_local global i32 0, align 4
@OMAP_UART_TX_WAKEUP_EN = common dso_local global i32 0, align 4
@UART_OMAP_WER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @serial_omap_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_omap_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_omap_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %7)
  store %struct.uart_omap_port* %8, %struct.uart_omap_port** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %10 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @serial_omap_irq, align 4
  %14 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %15 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %19 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %22 = call i32 @request_irq(i32 %12, i32 %13, i32 %17, i32 %20, %struct.uart_omap_port* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %160

27:                                               ; preds = %1
  %28 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %29 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %34 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %37 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @dev_pm_set_dedicated_wake_irq(i32 %35, i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %44 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %48 = call i32 @free_irq(i32 %46, %struct.uart_omap_port* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %160

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %53 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %57 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %62 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pm_runtime_get_sync(i32 %63)
  %65 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %66 = call i32 @serial_omap_clear_fifos(%struct.uart_omap_port* %65)
  %67 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %68 = load i32, i32* @UART_LSR, align 4
  %69 = call i32 @serial_in(%struct.uart_omap_port* %67, i32 %68)
  %70 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %71 = load i32, i32* @UART_LSR, align 4
  %72 = call i32 @serial_in(%struct.uart_omap_port* %70, i32 %71)
  %73 = load i32, i32* @UART_LSR_DR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %51
  %77 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %78 = load i32, i32* @UART_RX, align 4
  %79 = call i32 @serial_in(%struct.uart_omap_port* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %51
  %81 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %82 = load i32, i32* @UART_IIR, align 4
  %83 = call i32 @serial_in(%struct.uart_omap_port* %81, i32 %82)
  %84 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %85 = load i32, i32* @UART_MSR, align 4
  %86 = call i32 @serial_in(%struct.uart_omap_port* %84, i32 %85)
  %87 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %88 = load i32, i32* @UART_LCR, align 4
  %89 = load i32, i32* @UART_LCR_WLEN8, align 4
  %90 = call i32 @serial_out(%struct.uart_omap_port* %87, i32 %88, i32 %89)
  %91 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %92 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load i32, i32* @TIOCM_OUT2, align 4
  %97 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %98 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  %102 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %103 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %102, i32 0, i32 6
  %104 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %105 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @serial_omap_set_mctrl(%struct.TYPE_2__* %103, i32 %107)
  %109 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %110 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %115 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %114, i32 0, i32 5
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* @UART_IER_RLSI, align 4
  %117 = load i32, i32* @UART_IER_RDI, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %120 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %122 = load i32, i32* @UART_IER, align 4
  %123 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %124 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @serial_out(%struct.uart_omap_port* %121, i32 %122, i32 %125)
  %127 = load i32, i32* @OMAP_UART_WER_MOD_WKUP, align 4
  %128 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %129 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %131 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @OMAP_UART_WER_HAS_TX_WAKEUP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %80
  %137 = load i32, i32* @OMAP_UART_TX_WAKEUP_EN, align 4
  %138 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %139 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %80
  %143 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %144 = load i32, i32* @UART_OMAP_WER, align 4
  %145 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %146 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @serial_out(%struct.uart_omap_port* %143, i32 %144, i32 %147)
  %149 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %150 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @pm_runtime_mark_last_busy(i32 %151)
  %153 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %154 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @pm_runtime_put_autosuspend(i32 %155)
  %157 = load i32, i32* @jiffies, align 4
  %158 = load %struct.uart_omap_port*, %struct.uart_omap_port** %4, align 8
  %159 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %142, %42, %25
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_omap_port*) #1

declare dso_local i32 @dev_pm_set_dedicated_wake_irq(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.uart_omap_port*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @serial_omap_clear_fifos(%struct.uart_omap_port*) #1

declare dso_local i32 @serial_in(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_omap_port*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_omap_set_mctrl(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
