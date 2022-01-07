; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.efm32_uart_port = type { i32 }

@CRTSCTS = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UARTn_FRAME_STOPBITS_TWO = common dso_local global i32 0, align 4
@UARTn_FRAME_STOPBITS_ONE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UARTn_FRAME_PARITY_ODD = common dso_local global i32 0, align 4
@UARTn_FRAME_PARITY_EVEN = common dso_local global i32 0, align 4
@UARTn_FRAME_PARITY_NONE = common dso_local global i32 0, align 4
@UARTn_CMD_TXDIS = common dso_local global i32 0, align 4
@UARTn_CMD_RXDIS = common dso_local global i32 0, align 4
@UARTn_CMD = common dso_local global i32 0, align 4
@UARTn_RXDATAX_RXDATA__MASK = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UARTn_RXDATAX_FERR = common dso_local global i32 0, align 4
@UARTn_RXDATAX_PERR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@SW_UARTn_RXDATAX_BERR = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@UARTn_CTRL_TXBIL = common dso_local global i32 0, align 4
@UARTn_CTRL = common dso_local global i32 0, align 4
@UARTn_FRAME = common dso_local global i32 0, align 4
@UARTn_CLKDIV = common dso_local global i32 0, align 4
@UARTn_CMD_TXEN = common dso_local global i32 0, align 4
@UARTn_CMD_RXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @efm32_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efm32_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.efm32_uart_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = call %struct.efm32_uart_port* @to_efm_port(%struct.uart_port* %12)
  store %struct.efm32_uart_port* %13, %struct.efm32_uart_port** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @CRTSCTS, align 4
  %15 = load i32, i32* @CMSPAR, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %19 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %24 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %25 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DIV_ROUND_CLOSEST(i32 %27, i32 131072)
  %29 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DIV_ROUND_CLOSEST(i32 %31, i32 16)
  %33 = call i32 @uart_get_baud_rate(%struct.uart_port* %22, %struct.ktermios* %23, %struct.ktermios* %24, i32 %28, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %35 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CSIZE, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %55 [
    i32 131, label %39
    i32 130, label %43
    i32 129, label %47
    i32 128, label %51
  ]

39:                                               ; preds = %3
  %40 = call i32 @UARTn_FRAME_DATABITS(i32 5)
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %55

43:                                               ; preds = %3
  %44 = call i32 @UARTn_FRAME_DATABITS(i32 6)
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %55

47:                                               ; preds = %3
  %48 = call i32 @UARTn_FRAME_DATABITS(i32 7)
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  br label %55

51:                                               ; preds = %3
  %52 = call i32 @UARTn_FRAME_DATABITS(i32 8)
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %3, %51, %47, %43, %39
  %56 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %57 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CSTOPB, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @UARTn_FRAME_STOPBITS_TWO, align 4
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %70

66:                                               ; preds = %55
  %67 = load i32, i32* @UARTn_FRAME_STOPBITS_ONE, align 4
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %72 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PARENB, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %70
  %78 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %79 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PARODD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @UARTn_FRAME_PARITY_ODD, align 4
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %92

88:                                               ; preds = %77
  %89 = load i32, i32* @UARTn_FRAME_PARITY_EVEN, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %88, %84
  br label %97

93:                                               ; preds = %70
  %94 = load i32, i32* @UARTn_FRAME_PARITY_NONE, align 4
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %92
  %98 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 4, %100
  %102 = load i32, i32* %9, align 4
  %103 = mul i32 16, %102
  %104 = call i32 @DIV_ROUND_CLOSEST(i32 %101, i32 %103)
  %105 = sub nsw i32 %104, 4
  %106 = shl i32 %105, 6
  store i32 %106, i32* %10, align 4
  %107 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 3
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @spin_lock_irqsave(i32* %108, i64 %109)
  %111 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %7, align 8
  %112 = load i32, i32* @UARTn_CMD_TXDIS, align 4
  %113 = load i32, i32* @UARTn_CMD_RXDIS, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @UARTn_CMD, align 4
  %116 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %111, i32 %114, i32 %115)
  %117 = load i32, i32* @UARTn_RXDATAX_RXDATA__MASK, align 4
  %118 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %119 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %121 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @INPCK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %97
  %127 = load i32, i32* @UARTn_RXDATAX_FERR, align 4
  %128 = load i32, i32* @UARTn_RXDATAX_PERR, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %131 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %126, %97
  %135 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %136 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @IGNBRK, align 4
  %139 = load i32, i32* @BRKINT, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @PARMRK, align 4
  %142 = or i32 %140, %141
  %143 = and i32 %137, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %134
  %146 = load i32, i32* @SW_UARTn_RXDATAX_BERR, align 4
  %147 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %148 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %134
  %152 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %153 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %152, i32 0, i32 2
  store i32 0, i32* %153, align 4
  %154 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %155 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IGNPAR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %151
  %161 = load i32, i32* @UARTn_RXDATAX_FERR, align 4
  %162 = load i32, i32* @UARTn_RXDATAX_PERR, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %165 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %160, %151
  %169 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %170 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IGNBRK, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load i32, i32* @SW_UARTn_RXDATAX_BERR, align 4
  %177 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %178 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %175, %168
  %182 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %183 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %184 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @uart_update_timeout(%struct.uart_port* %182, i32 %185, i32 %186)
  %188 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %7, align 8
  %189 = load i32, i32* @UARTn_CTRL_TXBIL, align 4
  %190 = load i32, i32* @UARTn_CTRL, align 4
  %191 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %188, i32 %189, i32 %190)
  %192 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %7, align 8
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* @UARTn_FRAME, align 4
  %195 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %192, i32 %193, i32 %194)
  %196 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %7, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @UARTn_CLKDIV, align 4
  %199 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %196, i32 %197, i32 %198)
  %200 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %7, align 8
  %201 = load i32, i32* @UARTn_CMD_TXEN, align 4
  %202 = load i32, i32* @UARTn_CMD_RXEN, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @UARTn_CMD, align 4
  %205 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %200, i32 %203, i32 %204)
  %206 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %207 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %206, i32 0, i32 3
  %208 = load i64, i64* %8, align 8
  %209 = call i32 @spin_unlock_irqrestore(i32* %207, i64 %208)
  ret void
}

declare dso_local %struct.efm32_uart_port* @to_efm_port(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @UARTn_FRAME_DATABITS(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @efm32_uart_write32(%struct.efm32_uart_port*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
