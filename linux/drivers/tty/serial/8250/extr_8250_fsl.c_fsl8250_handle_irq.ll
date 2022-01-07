; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fsl.c_fsl8250_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fsl.c_fsl8250_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 (%struct.uart_port*, i32)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.uart_8250_port = type { i8, i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8 (%struct.TYPE_5__*, i32)*, i32 }

@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i8 0, align 1
@UART_RX = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i8 0, align 1
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i8 0, align 1
@UART_IER = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl8250_handle_irq(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uart_8250_port*, align 8
  %9 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %10)
  store %struct.uart_8250_port* %11, %struct.uart_8250_port** %8, align 8
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %18, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = load i32, i32* @UART_IIR, align 4
  %22 = call i32 %19(%struct.uart_port* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @UART_IIR_NO_INT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %29 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  store i32 0, i32* %2, align 4
  br label %167

33:                                               ; preds = %1
  %34 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %35 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 8
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @UART_LSR_BI, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = trunc i32 %40 to i8
  %42 = call i64 @unlikely(i8 zeroext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %33
  %45 = load i8, i8* @UART_LSR_BI, align 1
  %46 = zext i8 %45 to i32
  %47 = xor i32 %46, -1
  %48 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %49 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 8
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, %47
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 8
  %54 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %55, align 8
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = load i32, i32* @UART_RX, align 4
  %59 = call i32 %56(%struct.uart_port* %57, i32 %58)
  %60 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %61 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  store i32 1, i32* %2, align 4
  br label %167

65:                                               ; preds = %33
  %66 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %67 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i8 (%struct.TYPE_5__*, i32)*, i8 (%struct.TYPE_5__*, i32)** %68, align 8
  %70 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %71 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %70, i32 0, i32 3
  %72 = load i32, i32* @UART_LSR, align 4
  %73 = call zeroext i8 %69(%struct.TYPE_5__* %71, i32 %72)
  store i8 %73, i8* %5, align 1
  store i8 %73, i8* %4, align 1
  %74 = load i8, i8* %4, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @UART_LSR_DR, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @UART_LSR_BI, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %77, %79
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %65
  %84 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %85 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @UART_IER_RLSI, align 4
  %88 = load i32, i32* @UART_IER_RDI, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %94 = load i8, i8* %4, align 1
  %95 = call zeroext i8 @serial8250_rx_chars(%struct.uart_8250_port* %93, i8 zeroext %94)
  store i8 %95, i8* %4, align 1
  br label %96

96:                                               ; preds = %92, %83, %65
  %97 = load i8, i8* %5, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @UART_LSR_OE, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %147

103:                                              ; preds = %96
  %104 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %105 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %147

108:                                              ; preds = %103
  %109 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %110 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %109, i32 0, i32 0
  %111 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %110, align 8
  %112 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %113 = load i32, i32* @UART_IER, align 4
  %114 = call i32 %111(%struct.uart_port* %112, i32 %113)
  %115 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %116 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %118 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @UART_IER_RLSI, align 4
  %121 = load i32, i32* @UART_IER_RDI, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %119, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %108
  %126 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %127 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = bitcast {}** %129 to i32 (%struct.uart_port*)**
  %131 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %130, align 8
  %132 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %133 = call i32 %131(%struct.uart_port* %132)
  br label %138

134:                                              ; preds = %108
  %135 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %136 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %135, i32 0, i32 4
  %137 = call i32 @cancel_delayed_work(i32* %136)
  br label %138

138:                                              ; preds = %134, %125
  %139 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %140 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @msecs_to_jiffies(i64 %141)
  store i64 %142, i64* %9, align 8
  %143 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %144 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %143, i32 0, i32 4
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @schedule_delayed_work(i32* %144, i64 %145)
  br label %147

147:                                              ; preds = %138, %103, %96
  %148 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %149 = call i32 @serial8250_modem_status(%struct.uart_8250_port* %148)
  %150 = load i8, i8* %4, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8, i8* @UART_LSR_THRE, align 1
  %153 = zext i8 %152 to i32
  %154 = and i32 %151, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %158 = call i32 @serial8250_tx_chars(%struct.uart_8250_port* %157)
  br label %159

159:                                              ; preds = %156, %147
  %160 = load i8, i8* %5, align 1
  %161 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %162 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %161, i32 0, i32 0
  store i8 %160, i8* %162, align 8
  %163 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %164 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %163, i32 0, i32 3
  %165 = load i64, i64* %6, align 8
  %166 = call i32 @uart_unlock_and_check_sysrq(%struct.TYPE_5__* %164, i64 %165)
  store i32 1, i32* %2, align 4
  br label %167

167:                                              ; preds = %159, %44, %27
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i8 zeroext) #1

declare dso_local zeroext i8 @serial8250_rx_chars(%struct.uart_8250_port*, i8 zeroext) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @serial8250_modem_status(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_tx_chars(%struct.uart_8250_port*) #1

declare dso_local i32 @uart_unlock_and_check_sysrq(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
