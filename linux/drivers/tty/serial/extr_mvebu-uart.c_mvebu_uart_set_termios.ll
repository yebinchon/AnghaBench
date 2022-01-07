; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32 }

@STAT_OVR_ERR = common dso_local global i32 0, align 4
@STAT_TX_FIFO_FUL = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@STAT_FRM_ERR = common dso_local global i32 0, align 4
@STAT_PAR_ERR = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@STAT_BRK_ERR = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @mvebu_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 2
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = call i32 @STAT_RX_RDY(%struct.uart_port* %13)
  %15 = load i32, i32* @STAT_OVR_ERR, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = call i32 @STAT_TX_RDY(%struct.uart_port* %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* @STAT_TX_FIFO_FUL, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %25 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @INPCK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load i32, i32* @STAT_FRM_ERR, align 4
  %32 = load i32, i32* @STAT_PAR_ERR, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %3
  %39 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %42 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IGNPAR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load i32, i32* @STAT_FRM_ERR, align 4
  %49 = load i32, i32* @STAT_PAR_ERR, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @STAT_OVR_ERR, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %47, %38
  %58 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %59 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CREAD, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %66 = call i32 @STAT_RX_RDY(%struct.uart_port* %65)
  %67 = load i32, i32* @STAT_BRK_ERR, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %64, %57
  %74 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %75 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %76 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %77 = call i32 @uart_get_baud_rate(%struct.uart_port* %74, %struct.ktermios* %75, %struct.ktermios* %76, i32 0, i32 230400)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @mvebu_uart_baud_rate_set(%struct.uart_port* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %84 = icmp ne %struct.ktermios* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %87 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %88 = call i32 @uart_get_baud_rate(%struct.uart_port* %86, %struct.ktermios* %87, %struct.ktermios* null, i32 0, i32 230400)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %82
  br label %101

90:                                               ; preds = %73
  %91 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %91, i32 %92, i32 %93)
  %95 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %96 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %97 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @uart_update_timeout(%struct.uart_port* %95, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %90, %89
  %102 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %103 = icmp ne %struct.ktermios* %102, null
  br i1 %103, label %104, label %148

104:                                              ; preds = %101
  %105 = load i32, i32* @INPCK, align 4
  %106 = load i32, i32* @IGNPAR, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %109 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %113 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @INPCK, align 4
  %116 = load i32, i32* @IGNPAR, align 4
  %117 = or i32 %115, %116
  %118 = xor i32 %117, -1
  %119 = and i32 %114, %118
  %120 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %121 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* @CREAD, align 4
  %125 = load i32, i32* @CBAUD, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %128 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %132 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @CREAD, align 4
  %135 = load i32, i32* @CBAUD, align 4
  %136 = or i32 %134, %135
  %137 = xor i32 %136, -1
  %138 = and i32 %133, %137
  %139 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %140 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* @CS8, align 4
  %144 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %145 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %104, %101
  %149 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %150 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %149, i32 0, i32 2
  %151 = load i64, i64* %7, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @STAT_RX_RDY(%struct.uart_port*) #1

declare dso_local i32 @STAT_TX_RDY(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i64 @mvebu_uart_baud_rate_set(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
