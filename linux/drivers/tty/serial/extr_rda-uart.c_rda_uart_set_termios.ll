; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32 }
%struct.rda_uart_port = type { i32 }

@RDA_UART_CTRL = common dso_local global i32 0, align 4
@RDA_UART_CMD_SET = common dso_local global i32 0, align 4
@RDA_UART_CMD_CLR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"bit size not supported, using 7 bits\0A\00", align 1
@RDA_UART_DBITS_8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@RDA_UART_TX_SBITS_2 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@RDA_UART_PARITY_EN = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@RDA_UART_PARITY_MARK = common dso_local global i32 0, align 4
@RDA_UART_PARITY_SPACE = common dso_local global i32 0, align 4
@RDA_UART_PARITY_ODD = common dso_local global i32 0, align 4
@RDA_UART_PARITY_EVEN = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@RDA_UART_FLOW_CNT_EN = common dso_local global i32 0, align 4
@RDA_UART_RTS = common dso_local global i32 0, align 4
@RDA_UART_ENABLE = common dso_local global i32 0, align 4
@RDA_UART_DMA_EN = common dso_local global i32 0, align 4
@RDA_UART_IRQ_MASK = common dso_local global i32 0, align 4
@RDA_UART_IRQ_TRIGGERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @rda_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rda_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.rda_uart_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = call %struct.rda_uart_port* @to_rda_uart_port(%struct.uart_port* %15)
  store %struct.rda_uart_port* %16, %struct.rda_uart_port** %7, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 1
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %22 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %23 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 4
  %28 = call i32 @uart_get_baud_rate(%struct.uart_port* %21, %struct.ktermios* %22, %struct.ktermios* %23, i32 9600, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.rda_uart_port*, %struct.rda_uart_port** %7, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @rda_uart_change_baudrate(%struct.rda_uart_port* %29, i32 %30)
  %32 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %33 = load i32, i32* @RDA_UART_CTRL, align 4
  %34 = call i32 @rda_uart_read(%struct.uart_port* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %36 = load i32, i32* @RDA_UART_CMD_SET, align 4
  %37 = call i32 @rda_uart_read(%struct.uart_port* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %39 = load i32, i32* @RDA_UART_CMD_CLR, align 4
  %40 = call i32 @rda_uart_read(%struct.uart_port* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %42 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CSIZE, align 4
  %45 = and i32 %43, %44
  switch i32 %45, label %56 [
    i32 130, label %46
    i32 129, label %46
    i32 128, label %51
  ]

46:                                               ; preds = %3, %3
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_warn(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %3, %46
  %52 = load i32, i32* @RDA_UART_DBITS_8, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %60

56:                                               ; preds = %3
  %57 = load i32, i32* @RDA_UART_DBITS_8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %62 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CSTOPB, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @RDA_UART_TX_SBITS_2, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %76

71:                                               ; preds = %60
  %72 = load i32, i32* @RDA_UART_TX_SBITS_2, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %78 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PARENB, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %126

83:                                               ; preds = %76
  %84 = load i32, i32* @RDA_UART_PARITY_EN, align 4
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %88 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CMSPAR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %83
  %94 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %95 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PARODD, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* @RDA_UART_PARITY_MARK, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %108

104:                                              ; preds = %93
  %105 = load i32, i32* @RDA_UART_PARITY_SPACE, align 4
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %104, %100
  br label %125

109:                                              ; preds = %83
  %110 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %111 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PARODD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32, i32* @RDA_UART_PARITY_ODD, align 4
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %124

120:                                              ; preds = %109
  %121 = load i32, i32* @RDA_UART_PARITY_EVEN, align 4
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %108
  br label %131

126:                                              ; preds = %76
  %127 = load i32, i32* @RDA_UART_PARITY_EN, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %126, %125
  %132 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %133 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CRTSCTS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load i32, i32* @RDA_UART_FLOW_CNT_EN, align 4
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* @RDA_UART_RTS, align 4
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %10, align 4
  br label %153

145:                                              ; preds = %131
  %146 = load i32, i32* @RDA_UART_FLOW_CNT_EN, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %9, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* @RDA_UART_RTS, align 4
  %151 = load i32, i32* %11, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %145, %138
  %154 = load i32, i32* @RDA_UART_ENABLE, align 4
  %155 = load i32, i32* %9, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* @RDA_UART_DMA_EN, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %9, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %9, align 4
  %161 = call i32 @RDA_UART_AFC_LEVEL(i32 20)
  %162 = call i32 @RDA_UART_RX_TRIGGER(i32 16)
  %163 = or i32 %161, %162
  store i32 %163, i32* %12, align 4
  %164 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %165 = load i32, i32* @RDA_UART_IRQ_MASK, align 4
  %166 = call i32 @rda_uart_read(%struct.uart_port* %164, i32 %165)
  store i32 %166, i32* %14, align 4
  %167 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %168 = load i32, i32* @RDA_UART_IRQ_MASK, align 4
  %169 = call i32 @rda_uart_write(%struct.uart_port* %167, i32 0, i32 %168)
  %170 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @RDA_UART_IRQ_TRIGGERS, align 4
  %173 = call i32 @rda_uart_write(%struct.uart_port* %170, i32 %171, i32 %172)
  %174 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @RDA_UART_CTRL, align 4
  %177 = call i32 @rda_uart_write(%struct.uart_port* %174, i32 %175, i32 %176)
  %178 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @RDA_UART_CMD_SET, align 4
  %181 = call i32 @rda_uart_write(%struct.uart_port* %178, i32 %179, i32 %180)
  %182 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @RDA_UART_CMD_CLR, align 4
  %185 = call i32 @rda_uart_write(%struct.uart_port* %182, i32 %183, i32 %184)
  %186 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* @RDA_UART_IRQ_MASK, align 4
  %189 = call i32 @rda_uart_write(%struct.uart_port* %186, i32 %187, i32 %188)
  %190 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %191 = call i64 @tty_termios_baud_rate(%struct.ktermios* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %153
  %194 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %194, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %193, %153
  %199 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %200 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %201 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @uart_update_timeout(%struct.uart_port* %199, i32 %202, i32 %203)
  %205 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %206 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %205, i32 0, i32 1
  %207 = load i64, i64* %8, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* %206, i64 %207)
  ret void
}

declare dso_local %struct.rda_uart_port* @to_rda_uart_port(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @rda_uart_change_baudrate(%struct.rda_uart_port*, i32) #1

declare dso_local i32 @rda_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @RDA_UART_AFC_LEVEL(i32) #1

declare dso_local i32 @RDA_UART_RX_TRIGGER(i32) #1

declare dso_local i32 @rda_uart_write(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
