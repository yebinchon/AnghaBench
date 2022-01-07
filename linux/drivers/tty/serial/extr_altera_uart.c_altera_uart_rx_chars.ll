; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_uart.c_altera_uart_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_uart.c_altera_uart_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_uart = type { %struct.uart_port }
%struct.uart_port = type { i16, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@ALTERA_UART_STATUS_REG = common dso_local global i32 0, align 4
@ALTERA_UART_STATUS_RRDY_MSK = common dso_local global i16 0, align 2
@ALTERA_UART_RXDATA_REG = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@ALTERA_UART_STATUS_E_MSK = common dso_local global i16 0, align 2
@ALTERA_UART_STATUS_BRK_MSK = common dso_local global i16 0, align 2
@ALTERA_UART_STATUS_PE_MSK = common dso_local global i16 0, align 2
@ALTERA_UART_STATUS_ROE_MSK = common dso_local global i16 0, align 2
@ALTERA_UART_STATUS_FE_MSK = common dso_local global i16 0, align 2
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_uart*)* @altera_uart_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_uart_rx_chars(%struct.altera_uart* %0) #0 {
  %2 = alloca %struct.altera_uart*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.altera_uart* %0, %struct.altera_uart** %2, align 8
  %7 = load %struct.altera_uart*, %struct.altera_uart** %2, align 8
  %8 = getelementptr inbounds %struct.altera_uart, %struct.altera_uart* %7, i32 0, i32 0
  store %struct.uart_port* %8, %struct.uart_port** %3, align 8
  br label %9

9:                                                ; preds = %144, %143, %56, %1
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = load i32, i32* @ALTERA_UART_STATUS_REG, align 4
  %12 = call i8* @altera_uart_readl(%struct.uart_port* %10, i32 %11)
  %13 = ptrtoint i8* %12 to i16
  store i16 %13, i16* %6, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @ALTERA_UART_STATUS_RRDY_MSK, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %151

19:                                               ; preds = %9
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = load i32, i32* @ALTERA_UART_RXDATA_REG, align 4
  %22 = call i8* @altera_uart_readl(%struct.uart_port* %20, i32 %21)
  %23 = ptrtoint i8* %22 to i8
  store i8 %23, i8* %4, align 1
  %24 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %24, i8* %5, align 1
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load i16, i16* %6, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* @ALTERA_UART_STATUS_E_MSK, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %138

36:                                               ; preds = %19
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = load i16, i16* %6, align 2
  %39 = load i32, i32* @ALTERA_UART_STATUS_REG, align 4
  %40 = call i32 @altera_uart_writel(%struct.uart_port* %37, i16 zeroext %38, i32 %39)
  %41 = load i16, i16* %6, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* @ALTERA_UART_STATUS_BRK_MSK, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %36
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %54 = call i64 @uart_handle_break(%struct.uart_port* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %9

57:                                               ; preds = %47
  br label %100

58:                                               ; preds = %36
  %59 = load i16, i16* %6, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* @ALTERA_UART_STATUS_PE_MSK, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %99

71:                                               ; preds = %58
  %72 = load i16, i16* %6, align 2
  %73 = zext i16 %72 to i32
  %74 = load i16, i16* @ALTERA_UART_STATUS_ROE_MSK, align 2
  %75 = zext i16 %74 to i32
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %98

84:                                               ; preds = %71
  %85 = load i16, i16* %6, align 2
  %86 = zext i16 %85 to i32
  %87 = load i16, i16* @ALTERA_UART_STATUS_FE_MSK, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %93 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %84
  br label %98

98:                                               ; preds = %97, %78
  br label %99

99:                                               ; preds = %98, %65
  br label %100

100:                                              ; preds = %99, %57
  %101 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 0
  %103 = load i16, i16* %102, align 8
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* %6, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, %104
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %6, align 2
  %109 = load i16, i16* %6, align 2
  %110 = zext i16 %109 to i32
  %111 = load i16, i16* @ALTERA_UART_STATUS_BRK_MSK, align 2
  %112 = zext i16 %111 to i32
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %100
  %116 = load i8, i8* @TTY_BREAK, align 1
  store i8 %116, i8* %5, align 1
  br label %137

117:                                              ; preds = %100
  %118 = load i16, i16* %6, align 2
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* @ALTERA_UART_STATUS_PE_MSK, align 2
  %121 = zext i16 %120 to i32
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i8, i8* @TTY_PARITY, align 1
  store i8 %125, i8* %5, align 1
  br label %136

126:                                              ; preds = %117
  %127 = load i16, i16* %6, align 2
  %128 = zext i16 %127 to i32
  %129 = load i16, i16* @ALTERA_UART_STATUS_FE_MSK, align 2
  %130 = zext i16 %129 to i32
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i8, i8* @TTY_FRAME, align 1
  store i8 %134, i8* %5, align 1
  br label %135

135:                                              ; preds = %133, %126
  br label %136

136:                                              ; preds = %135, %124
  br label %137

137:                                              ; preds = %136, %115
  br label %138

138:                                              ; preds = %137, %19
  %139 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %140 = load i8, i8* %4, align 1
  %141 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %139, i8 zeroext %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %9

144:                                              ; preds = %138
  %145 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %146 = load i16, i16* %6, align 2
  %147 = load i16, i16* @ALTERA_UART_STATUS_ROE_MSK, align 2
  %148 = load i8, i8* %4, align 1
  %149 = load i8, i8* %5, align 1
  %150 = call i32 @uart_insert_char(%struct.uart_port* %145, i16 zeroext %146, i16 zeroext %147, i8 zeroext %148, i8 zeroext %149)
  br label %9

151:                                              ; preds = %9
  %152 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %153 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %152, i32 0, i32 1
  %154 = call i32 @spin_unlock(i32* %153)
  %155 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 2
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = call i32 @tty_flip_buffer_push(i32* %158)
  %160 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %161 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %160, i32 0, i32 1
  %162 = call i32 @spin_lock(i32* %161)
  ret void
}

declare dso_local i8* @altera_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @altera_uart_writel(%struct.uart_port*, i16 zeroext, i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i8 zeroext) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
