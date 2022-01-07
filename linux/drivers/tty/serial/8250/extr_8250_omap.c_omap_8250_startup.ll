; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.omap8250_priv* }
%struct.omap8250_priv = type { i32, i32, i64 }
%struct.uart_8250_port = type { i32, %struct.TYPE_2__*, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.uart_8250_port*)* }

@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to request DMA\0A\00", align 1
@omap8250_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@OMAP_UART_WER_MOD_WKUP = common dso_local global i32 0, align 4
@OMAP_UART_WER_HAS_TX_WAKEUP = common dso_local global i32 0, align 4
@OMAP_UART_TX_WAKEUP_EN = common dso_local global i32 0, align 4
@UART_OMAP_WER = common dso_local global i32 0, align 4
@UART_CAP_RPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @omap_8250_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_8250_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca %struct.omap8250_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %7)
  store %struct.uart_8250_port* %8, %struct.uart_8250_port** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 2
  %11 = load %struct.omap8250_priv*, %struct.omap8250_priv** %10, align 8
  store %struct.omap8250_priv* %11, %struct.omap8250_priv** %5, align 8
  %12 = load %struct.omap8250_priv*, %struct.omap8250_priv** %5, align 8
  %13 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.omap8250_priv*, %struct.omap8250_priv** %5, align 8
  %21 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dev_pm_set_dedicated_wake_irq(i32 %19, i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %158

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pm_runtime_get_sync(i32 %32)
  %34 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %37 = load i32, i32* @UART_FCR, align 4
  %38 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %39 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @serial_out(%struct.uart_8250_port* %36, i32 %37, i32 %40)
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %43 = load i32, i32* @UART_LCR, align 4
  %44 = load i32, i32* @UART_LCR_WLEN8, align 4
  %45 = call i32 @serial_out(%struct.uart_8250_port* %42, i32 %43, i32 %44)
  %46 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %47 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %49 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = call i64 @uart_console(%struct.uart_port* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %29
  %54 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %55 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %54, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %55, align 8
  br label %56

56:                                               ; preds = %53, %29
  %57 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %58 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = icmp ne %struct.TYPE_2__* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %63 = call i32 @serial8250_request_dma(%struct.uart_8250_port* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_warn_ratelimited(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %72 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %71, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %72, align 8
  br label %73

73:                                               ; preds = %66, %61
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @omap8250_irq, align 4
  %79 = load i32, i32* @IRQF_SHARED, align 4
  %80 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_name(i32 %82)
  %84 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %85 = call i32 @request_irq(i32 %77, i32 %78, i32 %79, i32 %83, %struct.uart_port* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %144

89:                                               ; preds = %74
  %90 = load i32, i32* @UART_IER_RLSI, align 4
  %91 = load i32, i32* @UART_IER_RDI, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %94 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %96 = load i32, i32* @UART_IER, align 4
  %97 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %98 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @serial_out(%struct.uart_8250_port* %95, i32 %96, i32 %99)
  %101 = load i32, i32* @OMAP_UART_WER_MOD_WKUP, align 4
  %102 = load %struct.omap8250_priv*, %struct.omap8250_priv** %5, align 8
  %103 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.omap8250_priv*, %struct.omap8250_priv** %5, align 8
  %105 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @OMAP_UART_WER_HAS_TX_WAKEUP, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %89
  %111 = load i32, i32* @OMAP_UART_TX_WAKEUP_EN, align 4
  %112 = load %struct.omap8250_priv*, %struct.omap8250_priv** %5, align 8
  %113 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %89
  %117 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %118 = load i32, i32* @UART_OMAP_WER, align 4
  %119 = load %struct.omap8250_priv*, %struct.omap8250_priv** %5, align 8
  %120 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @serial_out(%struct.uart_8250_port* %117, i32 %118, i32 %121)
  %123 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %124 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = icmp ne %struct.TYPE_2__* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %116
  %128 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %129 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32 (%struct.uart_8250_port*)*, i32 (%struct.uart_8250_port*)** %131, align 8
  %133 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %134 = call i32 %132(%struct.uart_8250_port* %133)
  br label %135

135:                                              ; preds = %127, %116
  %136 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %137 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @pm_runtime_mark_last_busy(i32 %138)
  %140 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @pm_runtime_put_autosuspend(i32 %142)
  store i32 0, i32* %2, align 4
  br label %158

144:                                              ; preds = %88
  %145 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %146 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @pm_runtime_mark_last_busy(i32 %147)
  %149 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %150 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @pm_runtime_put_autosuspend(i32 %151)
  %153 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %154 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @dev_pm_clear_wake_irq(i32 %155)
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %144, %135, %26
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @dev_pm_set_dedicated_wake_irq(i32, i64) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @serial8250_request_dma(%struct.uart_8250_port*) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_port*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @dev_pm_clear_wake_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
