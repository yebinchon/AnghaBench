; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.msm_port = type { %struct.msm_dma }
%struct.msm_dma = type { i64 }

@UART_MR2 = common dso_local global i32 0, align 4
@UART_MR2_PARITY_MODE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_MR2_PARITY_MODE_ODD = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@UART_MR2_PARITY_MODE_SPACE = common dso_local global i32 0, align 4
@UART_MR2_PARITY_MODE_EVEN = common dso_local global i32 0, align 4
@UART_MR2_BITS_PER_CHAR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@UART_MR2_BITS_PER_CHAR_5 = common dso_local global i32 0, align 4
@UART_MR2_BITS_PER_CHAR_6 = common dso_local global i32 0, align 4
@UART_MR2_BITS_PER_CHAR_7 = common dso_local global i32 0, align 4
@UART_MR2_BITS_PER_CHAR_8 = common dso_local global i32 0, align 4
@UART_MR2_STOP_BIT_LEN_ONE = common dso_local global i32 0, align 4
@UART_MR2_STOP_BIT_LEN_TWO = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UART_MR1 = common dso_local global i32 0, align 4
@UART_MR1_CTS_CTL = common dso_local global i32 0, align 4
@UART_MR1_RX_RDY_CTL = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UART_SR_PAR_FRAME_ERR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART_SR_RX_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @msm_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.msm_port*, align 8
  %8 = alloca %struct.msm_dma*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %12)
  store %struct.msm_port* %13, %struct.msm_port** %7, align 8
  %14 = load %struct.msm_port*, %struct.msm_port** %7, align 8
  %15 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %14, i32 0, i32 0
  store %struct.msm_dma* %15, %struct.msm_dma** %8, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %21 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %26 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %27 = call i32 @msm_stop_dma(%struct.uart_port* %25, %struct.msm_dma* %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %30 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %31 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %32 = call i32 @uart_get_baud_rate(%struct.uart_port* %29, %struct.ktermios* %30, %struct.ktermios* %31, i32 300, i32 4000000)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @msm_set_baud_rate(%struct.uart_port* %33, i32 %34, i64* %9)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %37 = call i64 @tty_termios_baud_rate(%struct.ktermios* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %28
  %45 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %46 = load i32, i32* @UART_MR2, align 4
  %47 = call i32 @msm_read(%struct.uart_port* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @UART_MR2_PARITY_MODE, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %53 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PARENB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %44
  %59 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %60 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PARODD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @UART_MR2_PARITY_MODE_ODD, align 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %85

69:                                               ; preds = %58
  %70 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %71 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CMSPAR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @UART_MR2_PARITY_MODE_SPACE, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %84

80:                                               ; preds = %69
  %81 = load i32, i32* @UART_MR2_PARITY_MODE_EVEN, align 4
  %82 = load i32, i32* %11, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %65
  br label %86

86:                                               ; preds = %85, %44
  %87 = load i32, i32* @UART_MR2_BITS_PER_CHAR, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %92 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CSIZE, align 4
  %95 = and i32 %93, %94
  switch i32 %95, label %109 [
    i32 131, label %96
    i32 130, label %100
    i32 129, label %104
    i32 128, label %108
  ]

96:                                               ; preds = %86
  %97 = load i32, i32* @UART_MR2_BITS_PER_CHAR_5, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %113

100:                                              ; preds = %86
  %101 = load i32, i32* @UART_MR2_BITS_PER_CHAR_6, align 4
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %113

104:                                              ; preds = %86
  %105 = load i32, i32* @UART_MR2_BITS_PER_CHAR_7, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %113

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %86, %108
  %110 = load i32, i32* @UART_MR2_BITS_PER_CHAR_8, align 4
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %109, %104, %100, %96
  %114 = load i32, i32* @UART_MR2_STOP_BIT_LEN_ONE, align 4
  %115 = load i32, i32* @UART_MR2_STOP_BIT_LEN_TWO, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %11, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %11, align 4
  %120 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %121 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CSTOPB, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %113
  %127 = load i32, i32* @UART_MR2_STOP_BIT_LEN_TWO, align 4
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %134

130:                                              ; preds = %113
  %131 = load i32, i32* @UART_MR2_STOP_BIT_LEN_ONE, align 4
  %132 = load i32, i32* %11, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %130, %126
  %135 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @UART_MR2, align 4
  %138 = call i32 @msm_write(%struct.uart_port* %135, i32 %136, i32 %137)
  %139 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %140 = load i32, i32* @UART_MR1, align 4
  %141 = call i32 @msm_read(%struct.uart_port* %139, i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* @UART_MR1_CTS_CTL, align 4
  %143 = load i32, i32* @UART_MR1_RX_RDY_CTL, align 4
  %144 = or i32 %142, %143
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %11, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %11, align 4
  %148 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %149 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @CRTSCTS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %134
  %155 = load i32, i32* @UART_MR1_CTS_CTL, align 4
  %156 = load i32, i32* %11, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* @UART_MR1_RX_RDY_CTL, align 4
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %154, %134
  %162 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @UART_MR1, align 4
  %165 = call i32 @msm_write(%struct.uart_port* %162, i32 %163, i32 %164)
  %166 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %167 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  %168 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %169 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @INPCK, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %161
  %175 = load i32, i32* @UART_SR_PAR_FRAME_ERR, align 4
  %176 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %177 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %161
  %181 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %182 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @IGNBRK, align 4
  %185 = load i32, i32* @BRKINT, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @PARMRK, align 4
  %188 = or i32 %186, %187
  %189 = and i32 %183, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %180
  %192 = load i32, i32* @UART_SR_RX_BREAK, align 4
  %193 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %194 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %191, %180
  %198 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %199 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %200 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @uart_update_timeout(%struct.uart_port* %198, i32 %201, i32 %202)
  %204 = load %struct.msm_port*, %struct.msm_port** %7, align 8
  %205 = call i32 @msm_start_rx_dma(%struct.msm_port* %204)
  %206 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %207 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %206, i32 0, i32 0
  %208 = load i64, i64* %9, align 8
  %209 = call i32 @spin_unlock_irqrestore(i32* %207, i64 %208)
  ret void
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @msm_stop_dma(%struct.uart_port*, %struct.msm_dma*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @msm_set_baud_rate(%struct.uart_port*, i32, i64*) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @msm_start_rx_dma(%struct.msm_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
