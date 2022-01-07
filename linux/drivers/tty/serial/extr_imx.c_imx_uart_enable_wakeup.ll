; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_enable_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_enable_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i64 }

@UCR3 = common dso_local global i32 0, align 4
@USR1_AWAKE = common dso_local global i32 0, align 4
@USR1 = common dso_local global i32 0, align 4
@UCR3_AWAKEN = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@UCR1_RTSDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*, i32)* @imx_uart_enable_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_enable_wakeup(%struct.imx_port* %0, i32 %1) #0 {
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %8 = load i32, i32* @UCR3, align 4
  %9 = call i32 @imx_uart_readl(%struct.imx_port* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %14 = load i32, i32* @USR1_AWAKE, align 4
  %15 = load i32, i32* @USR1, align 4
  %16 = call i32 @imx_uart_writel(%struct.imx_port* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @UCR3_AWAKEN, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @UCR3_AWAKEN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %12
  %26 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @UCR3, align 4
  %29 = call i32 @imx_uart_writel(%struct.imx_port* %26, i32 %27, i32 %28)
  %30 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %31 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %25
  %35 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %36 = load i32, i32* @UCR1, align 4
  %37 = call i32 @imx_uart_readl(%struct.imx_port* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @UCR1_RTSDEN, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load i32, i32* @UCR1_RTSDEN, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @UCR1, align 4
  %53 = call i32 @imx_uart_writel(%struct.imx_port* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %25
  ret void
}

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
