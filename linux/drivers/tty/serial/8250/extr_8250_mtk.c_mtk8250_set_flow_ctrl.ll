; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mtk.c_mtk8250_set_flow_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mtk.c_mtk8250_set_flow_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.uart_port }
%struct.uart_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_B = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@UART_EFR_ECB = common dso_local global i32 0, align 4
@MTK_UART_ESCAPE_DAT = common dso_local global i32 0, align 4
@MTK_UART_ESCAPE_CHAR = common dso_local global i32 0, align 4
@MTK_UART_ESCAPE_EN = common dso_local global i32 0, align 4
@MTK_UART_EFR_HW_FC = common dso_local global i32 0, align 4
@MTK_UART_EFR_SW_FC_MASK = common dso_local global i32 0, align 4
@MTK_UART_IER_XOFFI = common dso_local global i32 0, align 4
@MTK_UART_IER_RTSI = common dso_local global i32 0, align 4
@MTK_UART_IER_CTSI = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@MTK_UART_EFR_XON1_XOFF1 = common dso_local global i32 0, align 4
@UART_XON1 = common dso_local global i32 0, align 4
@UART_XOFF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, i32)* @mtk8250_set_flow_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk8250_set_flow_ctrl(%struct.uart_8250_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 0
  store %struct.uart_port* %8, %struct.uart_port** %5, align 8
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %10 = load i32, i32* @UART_LCR, align 4
  %11 = call i32 @serial_in(%struct.uart_8250_port* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %13 = load i32, i32* @UART_LCR, align 4
  %14 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %15 = call i32 @serial_out(%struct.uart_8250_port* %12, i32 %13, i32 %14)
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %17 = load i32, i32* @UART_EFR, align 4
  %18 = load i32, i32* @UART_EFR_ECB, align 4
  %19 = call i32 @serial_out(%struct.uart_8250_port* %16, i32 %17, i32 %18)
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %21 = load i32, i32* @UART_LCR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @serial_out(%struct.uart_8250_port* %20, i32 %21, i32 %22)
  %24 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %25 = load i32, i32* @UART_LCR, align 4
  %26 = call i32 @serial_in(%struct.uart_8250_port* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %160 [
    i32 129, label %28
    i32 130, label %62
    i32 128, label %103
  ]

28:                                               ; preds = %2
  %29 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %30 = load i32, i32* @MTK_UART_ESCAPE_DAT, align 4
  %31 = load i32, i32* @MTK_UART_ESCAPE_CHAR, align 4
  %32 = call i32 @serial_out(%struct.uart_8250_port* %29, i32 %30, i32 %31)
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %34 = load i32, i32* @MTK_UART_ESCAPE_EN, align 4
  %35 = call i32 @serial_out(%struct.uart_8250_port* %33, i32 %34, i32 0)
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %37 = load i32, i32* @UART_LCR, align 4
  %38 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %39 = call i32 @serial_out(%struct.uart_8250_port* %36, i32 %37, i32 %38)
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %41 = load i32, i32* @UART_EFR, align 4
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %43 = load i32, i32* @UART_EFR, align 4
  %44 = call i32 @serial_in(%struct.uart_8250_port* %42, i32 %43)
  %45 = load i32, i32* @MTK_UART_EFR_HW_FC, align 4
  %46 = load i32, i32* @MTK_UART_EFR_SW_FC_MASK, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  %50 = call i32 @serial_out(%struct.uart_8250_port* %40, i32 %41, i32 %49)
  %51 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %52 = load i32, i32* @UART_LCR, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @serial_out(%struct.uart_8250_port* %51, i32 %52, i32 %53)
  %55 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %56 = load i32, i32* @MTK_UART_IER_XOFFI, align 4
  %57 = load i32, i32* @MTK_UART_IER_RTSI, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MTK_UART_IER_CTSI, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @mtk8250_disable_intrs(%struct.uart_8250_port* %55, i32 %60)
  br label %161

62:                                               ; preds = %2
  %63 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %64 = load i32, i32* @MTK_UART_ESCAPE_DAT, align 4
  %65 = load i32, i32* @MTK_UART_ESCAPE_CHAR, align 4
  %66 = call i32 @serial_out(%struct.uart_8250_port* %63, i32 %64, i32 %65)
  %67 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %68 = load i32, i32* @MTK_UART_ESCAPE_EN, align 4
  %69 = call i32 @serial_out(%struct.uart_8250_port* %67, i32 %68, i32 0)
  %70 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %71 = load i32, i32* @UART_MCR, align 4
  %72 = load i32, i32* @UART_MCR_RTS, align 4
  %73 = call i32 @serial_out(%struct.uart_8250_port* %70, i32 %71, i32 %72)
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %75 = load i32, i32* @UART_LCR, align 4
  %76 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %77 = call i32 @serial_out(%struct.uart_8250_port* %74, i32 %75, i32 %76)
  %78 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %79 = load i32, i32* @UART_EFR, align 4
  %80 = load i32, i32* @MTK_UART_EFR_HW_FC, align 4
  %81 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %82 = load i32, i32* @UART_EFR, align 4
  %83 = call i32 @serial_in(%struct.uart_8250_port* %81, i32 %82)
  %84 = load i32, i32* @MTK_UART_EFR_HW_FC, align 4
  %85 = load i32, i32* @MTK_UART_EFR_SW_FC_MASK, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %83, %87
  %89 = or i32 %80, %88
  %90 = call i32 @serial_out(%struct.uart_8250_port* %78, i32 %79, i32 %89)
  %91 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %92 = load i32, i32* @UART_LCR, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @serial_out(%struct.uart_8250_port* %91, i32 %92, i32 %93)
  %95 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %96 = load i32, i32* @MTK_UART_IER_XOFFI, align 4
  %97 = call i32 @mtk8250_disable_intrs(%struct.uart_8250_port* %95, i32 %96)
  %98 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %99 = load i32, i32* @MTK_UART_IER_CTSI, align 4
  %100 = load i32, i32* @MTK_UART_IER_RTSI, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @mtk8250_enable_intrs(%struct.uart_8250_port* %98, i32 %101)
  br label %161

103:                                              ; preds = %2
  %104 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %105 = load i32, i32* @MTK_UART_ESCAPE_DAT, align 4
  %106 = load i32, i32* @MTK_UART_ESCAPE_CHAR, align 4
  %107 = call i32 @serial_out(%struct.uart_8250_port* %104, i32 %105, i32 %106)
  %108 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %109 = load i32, i32* @MTK_UART_ESCAPE_EN, align 4
  %110 = call i32 @serial_out(%struct.uart_8250_port* %108, i32 %109, i32 1)
  %111 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %112 = load i32, i32* @UART_LCR, align 4
  %113 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %114 = call i32 @serial_out(%struct.uart_8250_port* %111, i32 %112, i32 %113)
  %115 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %116 = load i32, i32* @UART_EFR, align 4
  %117 = load i32, i32* @MTK_UART_EFR_XON1_XOFF1, align 4
  %118 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %119 = load i32, i32* @UART_EFR, align 4
  %120 = call i32 @serial_in(%struct.uart_8250_port* %118, i32 %119)
  %121 = load i32, i32* @MTK_UART_EFR_HW_FC, align 4
  %122 = load i32, i32* @MTK_UART_EFR_SW_FC_MASK, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = and i32 %120, %124
  %126 = or i32 %117, %125
  %127 = call i32 @serial_out(%struct.uart_8250_port* %115, i32 %116, i32 %126)
  %128 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %129 = load i32, i32* @UART_XON1, align 4
  %130 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %131 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @START_CHAR(i32 %135)
  %137 = call i32 @serial_out(%struct.uart_8250_port* %128, i32 %129, i32 %136)
  %138 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %139 = load i32, i32* @UART_XOFF1, align 4
  %140 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @STOP_CHAR(i32 %145)
  %147 = call i32 @serial_out(%struct.uart_8250_port* %138, i32 %139, i32 %146)
  %148 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %149 = load i32, i32* @UART_LCR, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @serial_out(%struct.uart_8250_port* %148, i32 %149, i32 %150)
  %152 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %153 = load i32, i32* @MTK_UART_IER_CTSI, align 4
  %154 = load i32, i32* @MTK_UART_IER_RTSI, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @mtk8250_disable_intrs(%struct.uart_8250_port* %152, i32 %155)
  %157 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %158 = load i32, i32* @MTK_UART_IER_XOFFI, align 4
  %159 = call i32 @mtk8250_enable_intrs(%struct.uart_8250_port* %157, i32 %158)
  br label %161

160:                                              ; preds = %2
  br label %161

161:                                              ; preds = %160, %103, %62, %28
  ret void
}

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @mtk8250_disable_intrs(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @mtk8250_enable_intrs(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @START_CHAR(i32) #1

declare dso_local i32 @STOP_CHAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
