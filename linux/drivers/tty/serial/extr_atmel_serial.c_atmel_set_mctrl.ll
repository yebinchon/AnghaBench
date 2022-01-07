; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atmel_uart_port = type { i32 }

@ATMEL_US_MR = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@ATMEL_US_TTGR = common dso_local global i32 0, align 4
@ATMEL_US_USMODE = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_RS485 = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_HWHS = common dso_local global i32 0, align 4
@ATMEL_US_RTSEN = common dso_local global i32 0, align 4
@ATMEL_US_RTSDIS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@ATMEL_US_DTREN = common dso_local global i32 0, align 4
@ATMEL_US_DTRDIS = common dso_local global i32 0, align 4
@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_CHMODE = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@ATMEL_US_CHMODE_LOC_LOOP = common dso_local global i32 0, align 4
@ATMEL_US_CHMODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @atmel_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atmel_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = load i32, i32* @ATMEL_US_MR, align 4
  %12 = call i32 @atmel_uart_readl(%struct.uart_port* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %13)
  store %struct.atmel_uart_port* %14, %struct.atmel_uart_port** %9, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SER_RS485_ENABLED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = load i32, i32* @ATMEL_US_TTGR, align 4
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @atmel_uart_writel(%struct.uart_port* %23, i32 %24, i32 %28)
  %30 = load i32, i32* @ATMEL_US_USMODE, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @ATMEL_US_USMODE_RS485, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %22, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ATMEL_US_USMODE, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @ATMEL_US_USMODE_HWHS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @ATMEL_US_RTSEN, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @ATMEL_US_RTSDIS, align 4
  store i32 %45, i32* %8, align 4
  br label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @ATMEL_US_RTSDIS, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @ATMEL_US_RTSEN, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @TIOCM_RTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %62

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @TIOCM_DTR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @ATMEL_US_DTREN, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @ATMEL_US_DTRDIS, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %77 = load i32, i32* @ATMEL_US_CR, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @atmel_uart_writel(%struct.uart_port* %76, i32 %77, i32 %78)
  %80 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %9, align 8
  %81 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @mctrl_gpio_set(i32 %82, i32 %83)
  %85 = load i32, i32* @ATMEL_US_CHMODE, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @TIOCM_LOOP, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %75
  %94 = load i32, i32* @ATMEL_US_CHMODE_LOC_LOOP, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %101

97:                                               ; preds = %75
  %98 = load i32, i32* @ATMEL_US_CHMODE_NORMAL, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %103 = load i32, i32* @ATMEL_US_MR, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @atmel_uart_writel(%struct.uart_port* %102, i32 %103, i32 %104)
  ret void
}

declare dso_local i32 @atmel_uart_readl(%struct.uart_port*, i32) #1

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @mctrl_gpio_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
