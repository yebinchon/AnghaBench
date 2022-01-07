; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_decode_rx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_decode_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@TEGRA_UART_LSR_ANY = common dso_local global i64 0, align 8
@UART_LSR_OE = common dso_local global i64 0, align 8
@TTY_OVERRUN = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [20 x i8] c"Got overrun errors\0A\00", align 1
@UART_LSR_PE = common dso_local global i64 0, align 8
@TTY_PARITY = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Got Parity errors\0A\00", align 1
@UART_LSR_FE = common dso_local global i64 0, align 8
@TTY_FRAME = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Got frame errors\0A\00", align 1
@UART_LSR_BI = common dso_local global i64 0, align 8
@UART_LSR_DR = common dso_local global i64 0, align 8
@UART_LSR_FIFOE = common dso_local global i64 0, align 8
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Got Break\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.tegra_uart_port*, i64)* @tegra_uart_decode_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @tegra_uart_decode_rx_error(%struct.tegra_uart_port* %0, i64 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.tegra_uart_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %7, i8* %6, align 1
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @TEGRA_UART_LSR_ANY, align 8
  %10 = and i64 %8, %9
  %11 = call i64 @unlikely(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %119

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @UART_LSR_OE, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i8, i8* @TTY_OVERRUN, align 1
  store i8 %19, i8* %6, align 1
  %20 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %112

31:                                               ; preds = %13
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @UART_LSR_PE, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load i8, i8* @TTY_PARITY, align 1
  store i8 %37, i8* %6, align 1
  %38 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %111

49:                                               ; preds = %31
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @UART_LSR_FE, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i8, i8* @TTY_FRAME, align 1
  store i8 %55, i8* %6, align 1
  %56 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %57 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %63 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %110

67:                                               ; preds = %49
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @UART_LSR_BI, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %109

72:                                               ; preds = %67
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @UART_LSR_DR, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @UART_LSR_FIFOE, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %84 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %85 = call i32 @tegra_uart_fifo_reset(%struct.tegra_uart_port* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %77, %72
  %87 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %88 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @UART_LSR_BI, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i8, i8* @TTY_BREAK, align 1
  store i8 %95, i8* %3, align 1
  br label %121

96:                                               ; preds = %86
  %97 = load i8, i8* @TTY_BREAK, align 1
  store i8 %97, i8* %6, align 1
  %98 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %99 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %105 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_dbg(i32 %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %96, %67
  br label %110

110:                                              ; preds = %109, %54
  br label %111

111:                                              ; preds = %110, %36
  br label %112

112:                                              ; preds = %111, %18
  %113 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %114 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %113, i32 0, i32 0
  %115 = load i64, i64* %5, align 8
  %116 = load i64, i64* @UART_LSR_OE, align 8
  %117 = load i8, i8* %6, align 1
  %118 = call i32 @uart_insert_char(%struct.TYPE_4__* %114, i64 %115, i64 %116, i32 0, i8 signext %117)
  br label %119

119:                                              ; preds = %112, %2
  %120 = load i8, i8* %6, align 1
  store i8 %120, i8* %3, align 1
  br label %121

121:                                              ; preds = %119, %94
  %122 = load i8, i8* %3, align 1
  ret i8 %122
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tegra_uart_fifo_reset(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_4__*, i64, i64, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
