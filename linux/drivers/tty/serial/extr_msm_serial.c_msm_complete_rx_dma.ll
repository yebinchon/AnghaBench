; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_complete_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_complete_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_port = type { i32, %struct.msm_dma, %struct.uart_port }
%struct.msm_dma = type { i32, i64*, i32, i32, i32 }
%struct.uart_port = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@UARTDM_DMEN = common dso_local global i32 0, align 4
@UART_SR = common dso_local global i32 0, align 4
@UART_SR_OVERRUN = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@UART_CR_CMD_RESET_ERR = common dso_local global i32 0, align 4
@UART_CR = common dso_local global i32 0, align 4
@UARTDM_RX_TOTAL_SNAP = common dso_local global i32 0, align 4
@UARTDM_RX_SIZE = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@UART_SR_RX_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @msm_complete_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_complete_rx_dma(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.msm_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca %struct.msm_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.msm_port*
  store %struct.msm_port* %14, %struct.msm_port** %3, align 8
  %15 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %16 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %15, i32 0, i32 2
  store %struct.uart_port* %16, %struct.uart_port** %4, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.tty_port* %20, %struct.tty_port** %5, align 8
  %21 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %22 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %21, i32 0, i32 1
  store %struct.msm_dma* %22, %struct.msm_dma** %6, align 8
  store i32 0, i32* %7, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 1
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %28 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %168

32:                                               ; preds = %1
  %33 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %34 = load i32, i32* @UARTDM_DMEN, align 4
  %35 = call i32 @msm_read(%struct.uart_port* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %37 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @UARTDM_DMEN, align 4
  %45 = call i32 @msm_write(%struct.uart_port* %42, i32 %43, i32 %44)
  %46 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %47 = load i32, i32* @UART_SR, align 4
  %48 = call i32 @msm_read(%struct.uart_port* %46, i32 %47)
  %49 = load i32, i32* @UART_SR_OVERRUN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %32
  %53 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %59 = load i8, i8* @TTY_OVERRUN, align 1
  %60 = call i32 @tty_insert_flip_char(%struct.tty_port* %58, i64 0, i8 signext %59)
  %61 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %62 = load i32, i32* @UART_CR_CMD_RESET_ERR, align 4
  %63 = load i32, i32* @UART_CR, align 4
  %64 = call i32 @msm_write(%struct.uart_port* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %52, %32
  %66 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %67 = load i32, i32* @UARTDM_RX_TOTAL_SNAP, align 4
  %68 = call i32 @msm_read(%struct.uart_port* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, %69
  store i32 %74, i32* %72, align 8
  %75 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %76 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %75, i32 0, i32 4
  store i32 0, i32* %76, align 8
  %77 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %81 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @UARTDM_RX_SIZE, align 4
  %84 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %85 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dma_unmap_single(i32 %79, i32 %82, i32 %83, i32 %86)
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %162, %65
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %165

92:                                               ; preds = %88
  %93 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %93, i8* %12, align 1
  %94 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %95 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %92
  %99 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %100 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %98
  %108 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load i8, i8* @TTY_BREAK, align 1
  store i8 %113, i8* %12, align 1
  %114 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %115 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %117 = call i64 @uart_handle_break(%struct.uart_port* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %162

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %98, %92
  %122 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %123 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @UART_SR_RX_BREAK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %121
  %129 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %129, i8* %12, align 1
  br label %130

130:                                              ; preds = %128, %121
  %131 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 1
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  %135 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %136 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %137 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @uart_handle_sysrq_char(%struct.uart_port* %135, i64 %142)
  store i32 %143, i32* %9, align 4
  %144 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %145 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %144, i32 0, i32 1
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %145, i64 %146)
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %130
  %151 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %152 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %153 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i8, i8* %12, align 1
  %160 = call i32 @tty_insert_flip_char(%struct.tty_port* %151, i64 %158, i8 signext %159)
  br label %161

161:                                              ; preds = %150, %130
  br label %162

162:                                              ; preds = %161, %119
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %88

165:                                              ; preds = %88
  %166 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %167 = call i32 @msm_start_rx_dma(%struct.msm_port* %166)
  br label %168

168:                                              ; preds = %165, %31
  %169 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %170 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %169, i32 0, i32 1
  %171 = load i64, i64* %10, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %177 = call i32 @tty_flip_buffer_push(%struct.tty_port* %176)
  br label %178

178:                                              ; preds = %175, %168
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i64, i8 signext) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @uart_handle_sysrq_char(%struct.uart_port*, i64) #1

declare dso_local i32 @msm_start_rx_dma(%struct.msm_port*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
