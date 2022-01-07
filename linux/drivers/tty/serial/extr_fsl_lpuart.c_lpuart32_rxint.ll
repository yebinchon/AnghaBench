; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_rxint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_rxint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@UARTFIFO = common dso_local global i32 0, align 4
@UARTFIFO_RXEMPT = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i32 0, align 4
@UARTSTAT = common dso_local global i32 0, align 4
@UARTDATA = common dso_local global i32 0, align 4
@UARTSTAT_PE = common dso_local global i64 0, align 8
@UARTSTAT_OR = common dso_local global i64 0, align 8
@UARTSTAT_FE = common dso_local global i64 0, align 8
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart32_rxint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart32_rxint(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %10 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.tty_port* %13, %struct.tty_port** %5, align 8
  %14 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %15 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  br label %19

19:                                               ; preds = %142, %112, %52, %1
  %20 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %21 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %20, i32 0, i32 0
  %22 = load i32, i32* @UARTFIFO, align 4
  %23 = call i64 @lpuart32_read(%struct.TYPE_7__* %21, i32 %22)
  %24 = load i64, i64* @UARTFIFO_RXEMPT, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %147

28:                                               ; preds = %19
  %29 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %29, i32* %3, align 4
  %30 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %31 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %37 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %36, i32 0, i32 0
  %38 = load i32, i32* @UARTSTAT, align 4
  %39 = call i64 @lpuart32_read(%struct.TYPE_7__* %37, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %41 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %40, i32 0, i32 0
  %42 = load i32, i32* @UARTDATA, align 4
  %43 = call i64 @lpuart32_read(%struct.TYPE_7__* %41, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = and i64 %44, 1023
  store i64 %45, i64* %7, align 8
  %46 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %47 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i8
  %50 = call i64 @uart_handle_sysrq_char(%struct.TYPE_7__* %47, i8 zeroext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %28
  br label %19

53:                                               ; preds = %28
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @UARTSTAT_PE, align 8
  %56 = load i64, i64* @UARTSTAT_OR, align 8
  %57 = or i64 %55, %56
  %58 = load i64, i64* @UARTSTAT_FE, align 8
  %59 = or i64 %57, %58
  %60 = and i64 %54, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %142

62:                                               ; preds = %53
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @UARTSTAT_PE, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %69 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %87

74:                                               ; preds = %62
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @UARTSTAT_FE, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %81 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79, %74
  br label %87

87:                                               ; preds = %86, %67
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @UARTSTAT_OR, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %94 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %92, %87
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %102 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = and i64 %100, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i32, i32* %4, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %4, align 4
  %110 = icmp ugt i32 %109, 100
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %148

112:                                              ; preds = %107
  br label %19

113:                                              ; preds = %99
  %114 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %115 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = and i64 %118, %117
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @UARTSTAT_PE, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = load i32, i32* @TTY_PARITY, align 4
  store i32 %125, i32* %3, align 4
  br label %134

126:                                              ; preds = %113
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* @UARTSTAT_FE, align 8
  %129 = and i64 %127, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* @TTY_FRAME, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %126
  br label %134

134:                                              ; preds = %133, %124
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* @UARTSTAT_OR, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @TTY_OVERRUN, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %134
  br label %142

142:                                              ; preds = %141, %53
  %143 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @tty_insert_flip_char(%struct.tty_port* %143, i64 %144, i32 %145)
  br label %19

147:                                              ; preds = %19
  br label %148

148:                                              ; preds = %147, %111
  %149 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %150 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  %154 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %155 = call i32 @tty_flip_buffer_push(%struct.tty_port* %154)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @lpuart32_read(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_7__*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
