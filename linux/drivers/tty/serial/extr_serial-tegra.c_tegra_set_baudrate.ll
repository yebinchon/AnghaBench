; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_set_baudrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_set_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i32, i64, i64, %struct.TYPE_4__, i32, i8*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"clk_set_rate() failed for rate %lu\0A\00", align 1
@UART_LCR_DLAB = common dso_local global i64 0, align 8
@UART_LCR = common dso_local global i32 0, align 4
@UART_TX = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_SCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_uart_port*, i32)* @tegra_set_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_set_baudrate(%struct.tegra_uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

17:                                               ; preds = %2
  %18 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %18, i32 0, i32 7
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = mul i32 %25, 16
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @tegra_get_tolerance_rate(%struct.tegra_uart_port* %36, i32 %37, i64 %38)
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %35, %24
  %41 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @clk_set_rate(i32 %43, i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %130

56:                                               ; preds = %40
  %57 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @clk_get_rate(i32 %59)
  %61 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %62 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  store i32 1, i32* %7, align 4
  %63 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %64 = call i32 @tegra_check_rate_in_range(%struct.tegra_uart_port* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  br label %130

69:                                               ; preds = %56
  br label %80

70:                                               ; preds = %17
  %71 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @clk_get_rate(i32 %73)
  %75 = ptrtoint i8* %74 to i64
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = mul i32 %77, 16
  %79 = call i32 @DIV_ROUND_CLOSEST(i64 %76, i32 %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %70, %69
  %81 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %82 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %87 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* @UART_LCR_DLAB, align 8
  %90 = load i64, i64* %8, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %8, align 8
  %92 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i32, i32* @UART_LCR, align 4
  %95 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %92, i64 %93, i32 %94)
  %96 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 255
  %99 = zext i32 %98 to i64
  %100 = load i32, i32* @UART_TX, align 4
  %101 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %96, i64 %99, i32 %100)
  %102 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = lshr i32 %103, 8
  %105 = and i32 %104, 255
  %106 = zext i32 %105 to i64
  %107 = load i32, i32* @UART_IER, align 4
  %108 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %102, i64 %106, i32 %107)
  %109 = load i64, i64* @UART_LCR_DLAB, align 8
  %110 = xor i64 %109, -1
  %111 = load i64, i64* %8, align 8
  %112 = and i64 %111, %110
  store i64 %112, i64* %8, align 8
  %113 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i32, i32* @UART_LCR, align 4
  %116 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %113, i64 %114, i32 %115)
  %117 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %118 = load i32, i32* @UART_SCR, align 4
  %119 = call i32 @tegra_uart_read(%struct.tegra_uart_port* %117, i32 %118)
  %120 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %121 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %127 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %129 = call i32 @tegra_uart_wait_sym_time(%struct.tegra_uart_port* %128, i32 2)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %80, %67, %48, %16
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @tegra_get_tolerance_rate(%struct.tegra_uart_port*, i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i8* @clk_get_rate(i32) #1

declare dso_local i32 @tegra_check_rate_in_range(%struct.tegra_uart_port*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tegra_uart_write(%struct.tegra_uart_port*, i64, i32) #1

declare dso_local i32 @tegra_uart_read(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tegra_uart_wait_sym_time(%struct.tegra_uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
