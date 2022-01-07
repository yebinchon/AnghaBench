; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pnx8xxx_uart.c_pnx8xxx_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pnx8xxx_uart.c_pnx8xxx_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnx8xxx_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i64, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@PNX8XXX_FIFO = common dso_local global i32 0, align 4
@PNX8XXX_ISTAT = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_RXFIFO = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_RXFE = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_RXPAR = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_RXBRK = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_RXOVRN = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@PNX8XXX_LCR = common dso_local global i32 0, align 4
@PNX8XXX_UART_LCR_RX_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnx8xxx_port*)* @pnx8xxx_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnx8xxx_rx_chars(%struct.pnx8xxx_port* %0) #0 {
  %2 = alloca %struct.pnx8xxx_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pnx8xxx_port* %0, %struct.pnx8xxx_port** %2, align 8
  %6 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %7 = load i32, i32* @PNX8XXX_FIFO, align 4
  %8 = call i32 @serial_in(%struct.pnx8xxx_port* %6, i32 %7)
  %9 = call i32 @FIFO_TO_SM(i32 %8)
  %10 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %11 = load i32, i32* @PNX8XXX_ISTAT, align 4
  %12 = call i32 @serial_in(%struct.pnx8xxx_port* %10, i32 %11)
  %13 = call i32 @ISTAT_TO_SM(i32 %12)
  %14 = or i32 %9, %13
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %153, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PNX8XXX_UART_FIFO_RXFIFO, align 4
  %18 = call i32 @FIFO_TO_SM(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %171

21:                                               ; preds = %15
  %22 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %23 = load i32, i32* @PNX8XXX_FIFO, align 4
  %24 = call i32 @serial_in(%struct.pnx8xxx_port* %22, i32 %23)
  %25 = and i32 %24, 255
  store i32 %25, i32* %4, align 4
  %26 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %27 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @PNX8XXX_UART_FIFO_RXFE, align 4
  %35 = load i32, i32* @PNX8XXX_UART_FIFO_RXPAR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PNX8XXX_UART_FIFO_RXBRK, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @FIFO_TO_SM(i32 %38)
  %40 = load i32, i32* @PNX8XXX_UART_INT_RXOVRN, align 4
  %41 = call i32 @ISTAT_TO_SM(i32 %40)
  %42 = or i32 %39, %41
  %43 = and i32 %33, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %137

45:                                               ; preds = %21
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @PNX8XXX_UART_FIFO_RXBRK, align 4
  %48 = call i32 @FIFO_TO_SM(i32 %47)
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load i32, i32* @PNX8XXX_UART_FIFO_RXFE, align 4
  %53 = call i32 @FIFO_TO_SM(i32 %52)
  %54 = load i32, i32* @PNX8XXX_UART_FIFO_RXPAR, align 4
  %55 = call i32 @FIFO_TO_SM(i32 %54)
  %56 = or i32 %53, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %61 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %67 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %66, i32 0, i32 0
  %68 = call i64 @uart_handle_break(%struct.TYPE_8__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %51
  br label %153

71:                                               ; preds = %51
  br label %100

72:                                               ; preds = %45
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @PNX8XXX_UART_FIFO_RXPAR, align 4
  %75 = call i32 @FIFO_TO_SM(i32 %74)
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %80 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %99

85:                                               ; preds = %72
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @PNX8XXX_UART_FIFO_RXFE, align 4
  %88 = call i32 @FIFO_TO_SM(i32 %87)
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %93 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %85
  br label %99

99:                                               ; preds = %98, %78
  br label %100

100:                                              ; preds = %99, %71
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @PNX8XXX_UART_INT_RXOVRN, align 4
  %103 = call i32 @ISTAT_TO_SM(i32 %102)
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %108 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %106, %100
  %114 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %115 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @PNX8XXX_UART_FIFO_RXPAR, align 4
  %122 = call i32 @FIFO_TO_SM(i32 %121)
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load i32, i32* @TTY_PARITY, align 4
  store i32 %126, i32* %5, align 4
  br label %136

127:                                              ; preds = %113
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @PNX8XXX_UART_FIFO_RXFE, align 4
  %130 = call i32 @FIFO_TO_SM(i32 %129)
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @TTY_FRAME, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %127
  br label %136

136:                                              ; preds = %135, %125
  br label %137

137:                                              ; preds = %136, %21
  %138 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %139 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %138, i32 0, i32 0
  %140 = load i32, i32* %4, align 4
  %141 = call i64 @uart_handle_sysrq_char(%struct.TYPE_8__* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %153

144:                                              ; preds = %137
  %145 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %146 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %145, i32 0, i32 0
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @PNX8XXX_UART_INT_RXOVRN, align 4
  %149 = call i32 @ISTAT_TO_SM(i32 %148)
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @uart_insert_char(%struct.TYPE_8__* %146, i32 %147, i32 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %144, %143, %70
  %154 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %155 = load i32, i32* @PNX8XXX_LCR, align 4
  %156 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %157 = load i32, i32* @PNX8XXX_LCR, align 4
  %158 = call i32 @serial_in(%struct.pnx8xxx_port* %156, i32 %157)
  %159 = load i32, i32* @PNX8XXX_UART_LCR_RX_NEXT, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @serial_out(%struct.pnx8xxx_port* %154, i32 %155, i32 %160)
  %162 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %163 = load i32, i32* @PNX8XXX_FIFO, align 4
  %164 = call i32 @serial_in(%struct.pnx8xxx_port* %162, i32 %163)
  %165 = call i32 @FIFO_TO_SM(i32 %164)
  %166 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %167 = load i32, i32* @PNX8XXX_ISTAT, align 4
  %168 = call i32 @serial_in(%struct.pnx8xxx_port* %166, i32 %167)
  %169 = call i32 @ISTAT_TO_SM(i32 %168)
  %170 = or i32 %165, %169
  store i32 %170, i32* %3, align 4
  br label %15

171:                                              ; preds = %15
  %172 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %173 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = call i32 @spin_unlock(i32* %174)
  %176 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %177 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = call i32 @tty_flip_buffer_push(i32* %180)
  %182 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %183 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = call i32 @spin_lock(i32* %184)
  ret void
}

declare dso_local i32 @FIFO_TO_SM(i32) #1

declare dso_local i32 @serial_in(%struct.pnx8xxx_port*, i32) #1

declare dso_local i32 @ISTAT_TO_SM(i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @serial_out(%struct.pnx8xxx_port*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
