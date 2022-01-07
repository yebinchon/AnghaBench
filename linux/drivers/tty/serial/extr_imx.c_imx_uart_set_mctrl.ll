; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.imx_port = type { i32 }

@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@UCR2_CTS = common dso_local global i32 0, align 4
@UCR2_CTSC = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@UCR2_IRTS = common dso_local global i32 0, align 4
@UCR3 = common dso_local global i32 0, align 4
@UCR3_DSR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@UTS_LOOP = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @imx_uart_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = bitcast %struct.uart_port* %9 to %struct.imx_port*
  store %struct.imx_port* %10, %struct.imx_port** %5, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SER_RS485_ENABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %2
  %19 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %20 = load i32, i32* @UCR2, align 4
  %21 = call i32 @imx_uart_readl(%struct.imx_port* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @UCR2_CTS, align 4
  %23 = load i32, i32* @UCR2_CTSC, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TIOCM_RTS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %18
  %33 = load i32, i32* @UCR2_CTS, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @UCR2_IRTS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @UCR2_CTSC, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %32
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @UCR2, align 4
  %49 = call i32 @imx_uart_writel(%struct.imx_port* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %2
  %51 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %52 = load i32, i32* @UCR3, align 4
  %53 = call i32 @imx_uart_readl(%struct.imx_port* %51, i32 %52)
  %54 = load i32, i32* @UCR3_DSR, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @TIOCM_DTR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* @UCR3_DSR, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %50
  %66 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @UCR3, align 4
  %69 = call i32 @imx_uart_writel(%struct.imx_port* %66, i32 %67, i32 %68)
  %70 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %71 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %72 = call i32 @imx_uart_uts_reg(%struct.imx_port* %71)
  %73 = call i32 @imx_uart_readl(%struct.imx_port* %70, i32 %72)
  %74 = load i32, i32* @UTS_LOOP, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @TIOCM_LOOP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %65
  %82 = load i32, i32* @UTS_LOOP, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %65
  %86 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %89 = call i32 @imx_uart_uts_reg(%struct.imx_port* %88)
  %90 = call i32 @imx_uart_writel(%struct.imx_port* %86, i32 %87, i32 %89)
  %91 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %92 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @mctrl_gpio_set(i32 %93, i32 %94)
  ret void
}

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @imx_uart_uts_reg(%struct.imx_port*) #1

declare dso_local i32 @mctrl_gpio_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
