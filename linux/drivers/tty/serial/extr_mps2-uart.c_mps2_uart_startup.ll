; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.mps2_uart_port = type { i32, i32, i32 }

@UARTn_CTRL = common dso_local global i32 0, align 4
@UARTn_CTRL_RX_GRP = common dso_local global i32 0, align 4
@UARTn_CTRL_TX_GRP = common dso_local global i32 0, align 4
@UART_PORT_COMBINED_IRQ = common dso_local global i32 0, align 4
@mps2_uart_combinedirq = common dso_local global i32 0, align 4
@combined = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to register combinedirq (%d)\0A\00", align 1
@mps2_uart_oerrirq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@overrun = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register oerrirq (%d)\0A\00", align 1
@mps2_uart_rxirq = common dso_local global i32 0, align 4
@rx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register rxirq (%d)\0A\00", align 1
@mps2_uart_txirq = common dso_local global i32 0, align 4
@tx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to register txirq (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mps2_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps2_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.mps2_uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.mps2_uart_port* @to_mps2_port(%struct.uart_port* %7)
  store %struct.mps2_uart_port* %8, %struct.mps2_uart_port** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = load i32, i32* @UARTn_CTRL, align 4
  %11 = call i32 @mps2_uart_read8(%struct.uart_port* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @UARTn_CTRL_RX_GRP, align 4
  %13 = load i32, i32* @UARTn_CTRL_TX_GRP, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @UARTn_CTRL, align 4
  %21 = call i32 @mps2_uart_write8(%struct.uart_port* %18, i32 %19, i32 %20)
  %22 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %4, align 8
  %23 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UART_PORT_COMBINED_IRQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %1
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @mps2_uart_combinedirq, align 4
  %33 = load i32, i32* @combined, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @MAKE_NAME(i32 %34)
  %36 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %4, align 8
  %37 = call i32 @request_irq(i32 %31, i32 %32, i32 0, i32 %35, %struct.mps2_uart_port* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %128

47:                                               ; preds = %28
  br label %105

48:                                               ; preds = %1
  %49 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @mps2_uart_oerrirq, align 4
  %53 = load i32, i32* @IRQF_SHARED, align 4
  %54 = load i32, i32* @overrun, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @MAKE_NAME(i32 %55)
  %57 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %4, align 8
  %58 = call i32 @request_irq(i32 %51, i32 %52, i32 %53, i32 %56, %struct.mps2_uart_port* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %48
  %62 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %128

68:                                               ; preds = %48
  %69 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %4, align 8
  %70 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @mps2_uart_rxirq, align 4
  %73 = load i32, i32* @rx, align 4
  %74 = sub nsw i32 0, %73
  %75 = call i32 @MAKE_NAME(i32 %74)
  %76 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %4, align 8
  %77 = call i32 @request_irq(i32 %71, i32 %72, i32 0, i32 %75, %struct.mps2_uart_port* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %68
  %81 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %121

86:                                               ; preds = %68
  %87 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %4, align 8
  %88 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @mps2_uart_txirq, align 4
  %91 = load i32, i32* @tx, align 4
  %92 = sub nsw i32 0, %91
  %93 = call i32 @MAKE_NAME(i32 %92)
  %94 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %4, align 8
  %95 = call i32 @request_irq(i32 %89, i32 %90, i32 0, i32 %93, %struct.mps2_uart_port* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %86
  %99 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %115

104:                                              ; preds = %86
  br label %105

105:                                              ; preds = %104, %47
  %106 = load i32, i32* @UARTn_CTRL_RX_GRP, align 4
  %107 = load i32, i32* @UARTn_CTRL_TX_GRP, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @UARTn_CTRL, align 4
  %114 = call i32 @mps2_uart_write8(%struct.uart_port* %111, i32 %112, i32 %113)
  store i32 0, i32* %2, align 4
  br label %128

115:                                              ; preds = %98
  %116 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %4, align 8
  %117 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %4, align 8
  %120 = call i32 @free_irq(i32 %118, %struct.mps2_uart_port* %119)
  br label %121

121:                                              ; preds = %115, %80
  %122 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %123 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %4, align 8
  %126 = call i32 @free_irq(i32 %124, %struct.mps2_uart_port* %125)
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %121, %105, %61, %40
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.mps2_uart_port* @to_mps2_port(%struct.uart_port*) #1

declare dso_local i32 @mps2_uart_read8(%struct.uart_port*, i32) #1

declare dso_local i32 @mps2_uart_write8(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.mps2_uart_port*) #1

declare dso_local i32 @MAKE_NAME(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.mps2_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
