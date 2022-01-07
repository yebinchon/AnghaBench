; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_do_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_do_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@UART_IR_REG = common dso_local global i32 0, align 4
@UART_IR_RXOVER = common dso_local global i32 0, align 4
@UART_CTL_REG = common dso_local global i32 0, align 4
@UART_CTL_RSTRXFIFO_MASK = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@UART_IR_RXNOTEMPTY = common dso_local global i32 0, align 4
@UART_FIFO_REG = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_FIFO_ANYERR_MASK = common dso_local global i32 0, align 4
@UART_FIFO_BRKDET_MASK = common dso_local global i32 0, align 4
@UART_FIFO_PARERR_MASK = common dso_local global i32 0, align 4
@UART_FIFO_FRAMEERR_MASK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @bcm_uart_do_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_uart_do_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.tty_port* %13, %struct.tty_port** %3, align 8
  store i32 32, i32* %4, align 4
  br label %14

14:                                               ; preds = %151, %1
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = load i32, i32* @UART_IR_REG, align 4
  %17 = call i32 @bcm_uart_readl(%struct.uart_port* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @UART_IR_RXOVER, align 4
  %20 = call i32 @UART_IR_STAT(i32 %19)
  %21 = and i32 %18, %20
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %14
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = load i32, i32* @UART_CTL_REG, align 4
  %27 = call i32 @bcm_uart_readl(%struct.uart_port* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @UART_CTL_RSTRXFIFO_MASK, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @UART_CTL_REG, align 4
  %34 = call i32 @bcm_uart_writel(%struct.uart_port* %31, i32 %32, i32 %33)
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %41 = load i8, i8* @TTY_OVERRUN, align 1
  %42 = call i32 @tty_insert_flip_char(%struct.tty_port* %40, i32 0, i8 signext %41)
  br label %43

43:                                               ; preds = %24, %14
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @UART_IR_RXNOTEMPTY, align 4
  %46 = call i32 @UART_IR_STAT(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %155

50:                                               ; preds = %43
  %51 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %52 = load i32, i32* @UART_FIFO_REG, align 4
  %53 = call i32 @bcm_uart_readl(%struct.uart_port* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  store i32 %53, i32* %7, align 4
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %59, i8* %8, align 1
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 255
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @UART_FIFO_ANYERR_MASK, align 4
  %64 = and i32 %62, %63
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %132

67:                                               ; preds = %50
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @UART_FIFO_BRKDET_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %79 = call i64 @uart_handle_break(%struct.uart_port* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %151

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %67
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @UART_FIFO_PARERR_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %90 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @UART_FIFO_FRAMEERR_MASK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %94
  %106 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %107 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @UART_FIFO_BRKDET_MASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i8, i8* @TTY_BREAK, align 1
  store i8 %116, i8* %8, align 1
  br label %117

117:                                              ; preds = %115, %105
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @UART_FIFO_FRAMEERR_MASK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i8, i8* @TTY_FRAME, align 1
  store i8 %123, i8* %8, align 1
  br label %124

124:                                              ; preds = %122, %117
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @UART_FIFO_PARERR_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i8, i8* @TTY_PARITY, align 1
  store i8 %130, i8* %8, align 1
  br label %131

131:                                              ; preds = %129, %124
  br label %132

132:                                              ; preds = %131, %50
  %133 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %151

138:                                              ; preds = %132
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %139, %142
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i8, i8* %8, align 1
  %149 = call i32 @tty_insert_flip_char(%struct.tty_port* %146, i32 %147, i8 signext %148)
  br label %150

150:                                              ; preds = %145, %138
  br label %151

151:                                              ; preds = %150, %137, %81
  %152 = load i32, i32* %4, align 4
  %153 = add i32 %152, -1
  store i32 %153, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %14, label %155

155:                                              ; preds = %151, %49
  %156 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %157 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %156, i32 0, i32 2
  %158 = call i32 @spin_unlock(i32* %157)
  %159 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %160 = call i32 @tty_flip_buffer_push(%struct.tty_port* %159)
  %161 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %162 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %161, i32 0, i32 2
  %163 = call i32 @spin_lock(i32* %162)
  ret void
}

declare dso_local i32 @bcm_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @UART_IR_STAT(i32) #1

declare dso_local i32 @bcm_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i8 signext) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
