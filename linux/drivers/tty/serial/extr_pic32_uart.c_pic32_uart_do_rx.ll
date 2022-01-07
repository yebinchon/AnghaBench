; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_do_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_do_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.pic32_sport = type { i32 }

@PIC32_UART_RX_FIFO_DEPTH = common dso_local global i32 0, align 4
@PIC32_UART_STA = common dso_local global i32 0, align 4
@PIC32_UART_STA_OERR = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@PIC32_UART_STA_URXDA = common dso_local global i32 0, align 4
@PIC32_UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@PIC32_UART_STA_PERR = common dso_local global i32 0, align 4
@PIC32_UART_STA_FERR = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pic32_uart_do_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_uart_do_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.pic32_sport*, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call %struct.pic32_sport* @to_pic32_sport(%struct.uart_port* %9)
  store %struct.pic32_sport* %10, %struct.pic32_sport** %3, align 8
  %11 = load i32, i32* @PIC32_UART_RX_FIFO_DEPTH, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.tty_port* %18, %struct.tty_port** %4, align 8
  br label %19

19:                                               ; preds = %135, %1
  %20 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %21 = load i32, i32* @PIC32_UART_STA, align 4
  %22 = call i32 @pic32_uart_readl(%struct.pic32_sport* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PIC32_UART_STA_OERR, align 4
  %25 = and i32 %23, %24
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %19
  %29 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %30 = load i32, i32* @PIC32_UART_STA, align 4
  %31 = call i32 @PIC32_CLR(i32 %30)
  %32 = load i32, i32* @PIC32_UART_STA_OERR, align 4
  %33 = call i32 @pic32_uart_writel(%struct.pic32_sport* %29, i32 %31, i32 %32)
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %40 = load i8, i8* @TTY_OVERRUN, align 1
  %41 = call i32 @tty_insert_flip_char(%struct.tty_port* %39, i32 0, i8 signext %40)
  br label %42

42:                                               ; preds = %28, %19
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @PIC32_UART_STA_URXDA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %139

48:                                               ; preds = %42
  %49 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %50 = load i32, i32* @PIC32_UART_RX, align 4
  %51 = call i32 @pic32_uart_readl(%struct.pic32_sport* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %57, i8* %8, align 1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 255
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @PIC32_UART_STA_PERR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @PIC32_UART_STA_FERR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %64, %48
  %70 = phi i1 [ true, %48 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %116

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @PIC32_UART_STA_PERR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @PIC32_UART_STA_FERR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %85
  %97 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @PIC32_UART_STA_FERR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i8, i8* @TTY_FRAME, align 1
  store i8 %107, i8* %8, align 1
  br label %108

108:                                              ; preds = %106, %96
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @PIC32_UART_STA_PERR, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i8, i8* @TTY_PARITY, align 1
  store i8 %114, i8* %8, align 1
  br label %115

115:                                              ; preds = %113, %108
  br label %116

116:                                              ; preds = %115, %69
  %117 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %135

122:                                              ; preds = %116
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %125 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %123, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i8, i8* %8, align 1
  %133 = call i32 @tty_insert_flip_char(%struct.tty_port* %130, i32 %131, i8 signext %132)
  br label %134

134:                                              ; preds = %129, %122
  br label %135

135:                                              ; preds = %134, %121
  %136 = load i32, i32* %5, align 4
  %137 = add i32 %136, -1
  store i32 %137, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %19, label %139

139:                                              ; preds = %135, %47
  %140 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 2
  %142 = call i32 @spin_unlock(i32* %141)
  %143 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %144 = call i32 @tty_flip_buffer_push(%struct.tty_port* %143)
  ret void
}

declare dso_local %struct.pic32_sport* @to_pic32_sport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pic32_uart_readl(%struct.pic32_sport*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pic32_uart_writel(%struct.pic32_sport*, i32, i32) #1

declare dso_local i32 @PIC32_CLR(i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i8 signext) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
