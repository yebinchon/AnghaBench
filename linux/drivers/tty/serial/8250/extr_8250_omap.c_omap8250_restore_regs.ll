; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap8250_restore_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap8250_restore_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, i32, i32, %struct.TYPE_4__, i32, %struct.uart_8250_dma* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, %struct.omap8250_priv* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.omap8250_priv = type { i32, i32, i32, i32, i32 }
%struct.uart_8250_dma = type { i64 }

@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_B = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@UART_EFR_ECB = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_A = common dso_local global i32 0, align 4
@UART_MCR_TCRTLR = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_TI752_TCR = common dso_local global i32 0, align 4
@UART_TI752_TLR = common dso_local global i32 0, align 4
@TX_TRIGGER = common dso_local global i32 0, align 4
@UART_TI752_TLR_TX = common dso_local global i32 0, align 4
@RX_TRIGGER = common dso_local global i32 0, align 4
@UART_TI752_TLR_RX = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_XON1 = common dso_local global i32 0, align 4
@UART_XOFF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @omap8250_restore_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap8250_restore_regs(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.omap8250_priv*, align 8
  %4 = alloca %struct.uart_8250_dma*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load %struct.omap8250_priv*, %struct.omap8250_priv** %7, align 8
  store %struct.omap8250_priv* %8, %struct.omap8250_priv** %3, align 8
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %9, i32 0, i32 5
  %11 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %10, align 8
  store %struct.uart_8250_dma* %11, %struct.uart_8250_dma** %4, align 8
  %12 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %13 = icmp ne %struct.uart_8250_dma* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %16 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.omap8250_priv*, %struct.omap8250_priv** %3, align 8
  %21 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %136

22:                                               ; preds = %14, %1
  %23 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %24 = load i32, i32* @UART_LCR, align 4
  %25 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %26 = call i32 @serial_out(%struct.uart_8250_port* %23, i32 %24, i32 %25)
  %27 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %28 = load i32, i32* @UART_EFR, align 4
  %29 = load i32, i32* @UART_EFR_ECB, align 4
  %30 = call i32 @serial_out(%struct.uart_8250_port* %27, i32 %28, i32 %29)
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %32 = load i32, i32* @UART_LCR, align 4
  %33 = load i32, i32* @UART_LCR_CONF_MODE_A, align 4
  %34 = call i32 @serial_out(%struct.uart_8250_port* %31, i32 %32, i32 %33)
  %35 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %36 = load i32, i32* @UART_MCR_TCRTLR, align 4
  %37 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %35, i32 %36)
  %38 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %39 = load i32, i32* @UART_FCR, align 4
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %41 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @serial_out(%struct.uart_8250_port* %38, i32 %39, i32 %42)
  %44 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %45 = load %struct.omap8250_priv*, %struct.omap8250_priv** %3, align 8
  %46 = call i32 @omap8250_update_scr(%struct.uart_8250_port* %44, %struct.omap8250_priv* %45)
  %47 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %48 = load i32, i32* @UART_LCR, align 4
  %49 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %50 = call i32 @serial_out(%struct.uart_8250_port* %47, i32 %48, i32 %49)
  %51 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %52 = load i32, i32* @UART_TI752_TCR, align 4
  %53 = call i32 @OMAP_UART_TCR_RESTORE(i32 16)
  %54 = call i32 @OMAP_UART_TCR_HALT(i32 52)
  %55 = or i32 %53, %54
  %56 = call i32 @serial_out(%struct.uart_8250_port* %51, i32 %52, i32 %55)
  %57 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %58 = load i32, i32* @UART_TI752_TLR, align 4
  %59 = load i32, i32* @TX_TRIGGER, align 4
  %60 = call i32 @TRIGGER_TLR_MASK(i32 %59)
  %61 = load i32, i32* @UART_TI752_TLR_TX, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* @RX_TRIGGER, align 4
  %64 = call i32 @TRIGGER_TLR_MASK(i32 %63)
  %65 = load i32, i32* @UART_TI752_TLR_RX, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %62, %66
  %68 = call i32 @serial_out(%struct.uart_8250_port* %57, i32 %58, i32 %67)
  %69 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %70 = load i32, i32* @UART_LCR, align 4
  %71 = call i32 @serial_out(%struct.uart_8250_port* %69, i32 %70, i32 0)
  %72 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %73 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %72, i32 %75)
  %77 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %78 = load i32, i32* @UART_IER, align 4
  %79 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %80 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @serial_out(%struct.uart_8250_port* %77, i32 %78, i32 %81)
  %83 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %84 = load i32, i32* @UART_LCR, align 4
  %85 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %86 = call i32 @serial_out(%struct.uart_8250_port* %83, i32 %84, i32 %85)
  %87 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %88 = load %struct.omap8250_priv*, %struct.omap8250_priv** %3, align 8
  %89 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @serial_dl_write(%struct.uart_8250_port* %87, i32 %90)
  %92 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %93 = load i32, i32* @UART_EFR, align 4
  %94 = load %struct.omap8250_priv*, %struct.omap8250_priv** %3, align 8
  %95 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @serial_out(%struct.uart_8250_port* %92, i32 %93, i32 %96)
  %98 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %99 = load i32, i32* @UART_LCR, align 4
  %100 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %101 = call i32 @serial_out(%struct.uart_8250_port* %98, i32 %99, i32 %100)
  %102 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %103 = load i32, i32* @UART_XON1, align 4
  %104 = load %struct.omap8250_priv*, %struct.omap8250_priv** %3, align 8
  %105 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @serial_out(%struct.uart_8250_port* %102, i32 %103, i32 %106)
  %108 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %109 = load i32, i32* @UART_XOFF1, align 4
  %110 = load %struct.omap8250_priv*, %struct.omap8250_priv** %3, align 8
  %111 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @serial_out(%struct.uart_8250_port* %108, i32 %109, i32 %112)
  %114 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %115 = load i32, i32* @UART_LCR, align 4
  %116 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %117 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @serial_out(%struct.uart_8250_port* %114, i32 %115, i32 %118)
  %120 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %121 = load %struct.omap8250_priv*, %struct.omap8250_priv** %3, align 8
  %122 = call i32 @omap8250_update_mdr1(%struct.uart_8250_port* %120, %struct.omap8250_priv* %121)
  %123 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %124 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %127, align 8
  %129 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %130 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %129, i32 0, i32 3
  %131 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %132 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 %128(%struct.TYPE_4__* %130, i32 %134)
  br label %136

136:                                              ; preds = %22, %19
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial8250_out_MCR(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @omap8250_update_scr(%struct.uart_8250_port*, %struct.omap8250_priv*) #1

declare dso_local i32 @OMAP_UART_TCR_RESTORE(i32) #1

declare dso_local i32 @OMAP_UART_TCR_HALT(i32) #1

declare dso_local i32 @TRIGGER_TLR_MASK(i32) #1

declare dso_local i32 @serial_dl_write(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @omap8250_update_mdr1(%struct.uart_8250_port*, %struct.omap8250_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
