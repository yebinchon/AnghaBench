; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i64 }
%struct.ktermios = type { i32, i32 }

@AML_UART_CONTROL = common dso_local global i64 0, align 8
@AML_UART_DATA_LEN_MASK = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@AML_UART_DATA_LEN_8BIT = common dso_local global i32 0, align 4
@AML_UART_DATA_LEN_7BIT = common dso_local global i32 0, align 4
@AML_UART_DATA_LEN_6BIT = common dso_local global i32 0, align 4
@AML_UART_DATA_LEN_5BIT = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@AML_UART_PARITY_EN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@AML_UART_PARITY_TYPE = common dso_local global i32 0, align 4
@AML_UART_STOP_BIT_LEN_MASK = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@AML_UART_STOP_BIT_2SB = common dso_local global i32 0, align 4
@AML_UART_STOP_BIT_1SB = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@AML_UART_TWO_WIRE_EN = common dso_local global i32 0, align 4
@AML_UART_TX_FIFO_WERR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@AML_UART_PARITY_ERR = common dso_local global i32 0, align 4
@AML_UART_FRAME_ERR = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @meson_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 2
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %17 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AML_UART_CONTROL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @AML_UART_DATA_LEN_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @CSIZE, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %51 [
    i32 128, label %35
    i32 129, label %39
    i32 130, label %43
    i32 131, label %47
  ]

35:                                               ; preds = %3
  %36 = load i32, i32* @AML_UART_DATA_LEN_8BIT, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %51

39:                                               ; preds = %3
  %40 = load i32, i32* @AML_UART_DATA_LEN_7BIT, align 4
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %51

43:                                               ; preds = %3
  %44 = load i32, i32* @AML_UART_DATA_LEN_6BIT, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %51

47:                                               ; preds = %3
  %48 = load i32, i32* @AML_UART_DATA_LEN_5BIT, align 4
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %3, %47, %43, %39, %35
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PARENB, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @AML_UART_PARITY_EN, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %65

60:                                               ; preds = %51
  %61 = load i32, i32* @AML_UART_PARITY_EN, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PARODD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @AML_UART_PARITY_TYPE, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %79

74:                                               ; preds = %65
  %75 = load i32, i32* @AML_UART_PARITY_TYPE, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = load i32, i32* @AML_UART_STOP_BIT_LEN_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @CSTOPB, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i32, i32* @AML_UART_STOP_BIT_2SB, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %96

92:                                               ; preds = %79
  %93 = load i32, i32* @AML_UART_STOP_BIT_1SB, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @CRTSCTS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i32, i32* @AML_UART_TWO_WIRE_EN, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %110

106:                                              ; preds = %96
  %107 = load i32, i32* @AML_UART_TWO_WIRE_EN, align 4
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %113 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AML_UART_CONTROL, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  %118 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %119 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %120 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %121 = call i32 @uart_get_baud_rate(%struct.uart_port* %118, %struct.ktermios* %119, %struct.ktermios* %120, i32 50, i32 4000000)
  store i32 %121, i32* %9, align 4
  %122 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @meson_uart_change_speed(%struct.uart_port* %122, i32 %123)
  %125 = load i32, i32* @AML_UART_TX_FIFO_WERR, align 4
  %126 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %127 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @INPCK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %110
  %133 = load i32, i32* @AML_UART_PARITY_ERR, align 4
  %134 = load i32, i32* @AML_UART_FRAME_ERR, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %137 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %132, %110
  %141 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %142 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @IGNPAR, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %140
  %148 = load i32, i32* @AML_UART_PARITY_ERR, align 4
  %149 = load i32, i32* @AML_UART_FRAME_ERR, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %152 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %147, %140
  %156 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %157 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %158 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @uart_update_timeout(%struct.uart_port* %156, i32 %159, i32 %160)
  %162 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %163 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %162, i32 0, i32 2
  %164 = load i64, i64* %10, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32* %163, i64 %164)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @meson_uart_change_speed(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
