; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_get_hwmctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_get_hwmctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i64 }

@TIOCM_DSR = common dso_local global i32 0, align 4
@USR1 = common dso_local global i32 0, align 4
@USR2 = common dso_local global i32 0, align 4
@USR1_RTSS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@USR2_DCDIN = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@USR2_RIIN = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_port*)* @imx_uart_get_hwmctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_get_hwmctrl(%struct.imx_port* %0) #0 {
  %2 = alloca %struct.imx_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %2, align 8
  %6 = load i32, i32* @TIOCM_DSR, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %8 = load i32, i32* @USR1, align 4
  %9 = call i32 @imx_uart_readl(%struct.imx_port* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %11 = load i32, i32* @USR2, align 4
  %12 = call i32 @imx_uart_readl(%struct.imx_port* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @USR1_RTSS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @TIOCM_CTS, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @USR2_DCDIN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @TIOCM_CAR, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %32 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %37 = load i32, i32* @USR2, align 4
  %38 = call i32 @imx_uart_readl(%struct.imx_port* %36, i32 %37)
  %39 = load i32, i32* @USR2_RIIN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @TIOCM_RI, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %35
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
