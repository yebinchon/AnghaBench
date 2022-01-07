; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.uart_port }
%struct.uart_port = type { i32, i32, i32 }

@UPF_FOURPORT = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_MCR_OUT1 = common dso_local global i8 0, align 1
@UART_MCR_OUT2 = common dso_local global i8 0, align 1
@UART_MCR_DTR = common dso_local global i8 0, align 1
@UART_MCR_RTS = common dso_local global i8 0, align 1
@UART_LSR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@UART_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @autoconfig_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autoconfig_irq(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  store %struct.uart_port* %11, %struct.uart_port** %3, align 8
  store i8 0, i8* %6, align 1
  store i32 0, i32* %7, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UPF_FOURPORT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 4064
  %23 = or i32 %22, 31
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call zeroext i8 @inb_p(i32 %24)
  store i8 %25, i8* %6, align 1
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @outb_p(i8 zeroext -128, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call zeroext i8 @inb_p(i32 %28)
  br label %30

30:                                               ; preds = %18, %1
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = call i64 @uart_console(%struct.uart_port* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (...) @console_lock()
  br label %36

36:                                               ; preds = %34, %30
  %37 = call i64 (...) @probe_irq_on()
  %38 = call i32 @probe_irq_off(i64 %37)
  %39 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %40 = call zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port* %39)
  store i8 %40, i8* %4, align 1
  %41 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %42 = load i32, i32* @UART_IER, align 4
  %43 = call zeroext i8 @serial_in(%struct.uart_8250_port* %41, i32 %42)
  store i8 %43, i8* %5, align 1
  %44 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %45 = load i8, i8* @UART_MCR_OUT1, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @UART_MCR_OUT2, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %46, %48
  %50 = trunc i32 %49 to i8
  %51 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %44, i8 zeroext %50)
  %52 = call i64 (...) @probe_irq_on()
  store i64 %52, i64* %8, align 8
  %53 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %54 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %53, i8 zeroext 0)
  %55 = call i32 @udelay(i32 10)
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @UPF_FOURPORT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %36
  %63 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %64 = load i8, i8* @UART_MCR_DTR, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @UART_MCR_RTS, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %65, %67
  %69 = trunc i32 %68 to i8
  %70 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %63, i8 zeroext %69)
  br label %83

71:                                               ; preds = %36
  %72 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %73 = load i8, i8* @UART_MCR_DTR, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @UART_MCR_RTS, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %74, %76
  %78 = load i8, i8* @UART_MCR_OUT2, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %77, %79
  %81 = trunc i32 %80 to i8
  %82 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %72, i8 zeroext %81)
  br label %83

83:                                               ; preds = %71, %62
  %84 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %85 = load i32, i32* @UART_IER, align 4
  %86 = call i32 @serial_out(%struct.uart_8250_port* %84, i32 %85, i8 zeroext 15)
  %87 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %88 = load i32, i32* @UART_LSR, align 4
  %89 = call zeroext i8 @serial_in(%struct.uart_8250_port* %87, i32 %88)
  %90 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %91 = load i32, i32* @UART_RX, align 4
  %92 = call zeroext i8 @serial_in(%struct.uart_8250_port* %90, i32 %91)
  %93 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %94 = load i32, i32* @UART_IIR, align 4
  %95 = call zeroext i8 @serial_in(%struct.uart_8250_port* %93, i32 %94)
  %96 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %97 = load i32, i32* @UART_MSR, align 4
  %98 = call zeroext i8 @serial_in(%struct.uart_8250_port* %96, i32 %97)
  %99 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %100 = load i32, i32* @UART_TX, align 4
  %101 = call i32 @serial_out(%struct.uart_8250_port* %99, i32 %100, i8 zeroext -1)
  %102 = call i32 @udelay(i32 20)
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @probe_irq_off(i64 %103)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %106 = load i8, i8* %4, align 1
  %107 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %105, i8 zeroext %106)
  %108 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %109 = load i32, i32* @UART_IER, align 4
  %110 = load i8, i8* %5, align 1
  %111 = call i32 @serial_out(%struct.uart_8250_port* %108, i32 %109, i8 zeroext %110)
  %112 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %113 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @UPF_FOURPORT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %83
  %119 = load i8, i8* %6, align 1
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @outb_p(i8 zeroext %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %83
  %123 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %124 = call i64 @uart_console(%struct.uart_port* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 (...) @console_unlock()
  br label %128

128:                                              ; preds = %126, %122
  %129 = load i32, i32* %9, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* %9, align 4
  br label %134

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %133, %131
  %135 = phi i32 [ %132, %131 ], [ 0, %133 ]
  %136 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %137 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  ret void
}

declare dso_local zeroext i8 @inb_p(i32) #1

declare dso_local i32 @outb_p(i8 zeroext, i32) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @probe_irq_off(i64) #1

declare dso_local i64 @probe_irq_on(...) #1

declare dso_local zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port*) #1

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial8250_out_MCR(%struct.uart_8250_port*, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i8 zeroext) #1

declare dso_local i32 @console_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
