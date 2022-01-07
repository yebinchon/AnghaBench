; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efm32_uart_port = type { %struct.uart_port }
%struct.uart_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@UARTn_STATUS = common dso_local global i32 0, align 4
@UARTn_STATUS_RXDATAV = common dso_local global i32 0, align 4
@UARTn_RXDATAX = common dso_local global i32 0, align 4
@SW_UARTn_RXDATAX_BERR = common dso_local global i32 0, align 4
@UARTn_RXDATAX_FERR = common dso_local global i32 0, align 4
@UARTn_RXDATAX_RXDATA__MASK = common dso_local global i32 0, align 4
@UARTn_RXDATAX_PERR = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efm32_uart_port*)* @efm32_uart_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efm32_uart_rx_chars(%struct.efm32_uart_port* %0) #0 {
  %2 = alloca %struct.efm32_uart_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efm32_uart_port* %0, %struct.efm32_uart_port** %2, align 8
  %6 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %6, i32 0, i32 0
  store %struct.uart_port* %7, %struct.uart_port** %3, align 8
  br label %8

8:                                                ; preds = %129, %108, %49, %1
  %9 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %2, align 8
  %10 = load i32, i32* @UARTn_STATUS, align 4
  %11 = call i32 @efm32_uart_read32(%struct.efm32_uart_port* %9, i32 %10)
  %12 = load i32, i32* @UARTn_STATUS_RXDATAV, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %130

15:                                               ; preds = %8
  %16 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %2, align 8
  %17 = load i32, i32* @UARTn_RXDATAX, align 4
  %18 = call i32 @efm32_uart_read32(%struct.efm32_uart_port* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %19 = load i32, i32* @SW_UARTn_RXDATAX_BERR, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @UARTn_RXDATAX_FERR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %15
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @UARTn_RXDATAX_RXDATA__MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @SW_UARTn_RXDATAX_BERR, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = call i64 @uart_handle_break(%struct.uart_port* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %8

50:                                               ; preds = %37
  br label %75

51:                                               ; preds = %32, %15
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @UARTn_RXDATAX_PERR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %74

62:                                               ; preds = %51
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @UARTn_RXDATAX_FERR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %62
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %50
  %76 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @SW_UARTn_RXDATAX_BERR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @TTY_BREAK, align 4
  store i32 %86, i32* %5, align 4
  br label %112

87:                                               ; preds = %75
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @UARTn_RXDATAX_PERR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @TTY_PARITY, align 4
  store i32 %93, i32* %5, align 4
  br label %111

94:                                               ; preds = %87
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @UARTn_RXDATAX_FERR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @TTY_FRAME, align 4
  store i32 %100, i32* %5, align 4
  br label %110

101:                                              ; preds = %94
  %102 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @UARTn_RXDATAX_RXDATA__MASK, align 4
  %105 = and i32 %103, %104
  %106 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %8

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %99
  br label %111

111:                                              ; preds = %110, %92
  br label %112

112:                                              ; preds = %111, %85
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %113, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %121 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @UARTn_RXDATAX_RXDATA__MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @tty_insert_flip_char(i32* %123, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %119, %112
  br label %8

130:                                              ; preds = %8
  ret void
}

declare dso_local i32 @efm32_uart_read32(%struct.efm32_uart_port*, i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
