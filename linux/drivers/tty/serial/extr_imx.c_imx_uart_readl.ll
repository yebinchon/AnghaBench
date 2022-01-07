; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UCR2_SRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_port*, i32)* @imx_uart_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_readl(%struct.imx_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_port*, align 8
  %5 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %44 [
    i32 132, label %7
    i32 131, label %11
    i32 130, label %32
    i32 129, label %36
    i32 128, label %40
  ]

7:                                                ; preds = %2
  %8 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %9 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  br label %52

11:                                               ; preds = %2
  %12 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %13 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UCR2_SRST, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %20 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @readl(i32 %24)
  %26 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %27 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %18, %11
  %29 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %30 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %52

32:                                               ; preds = %2
  %33 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %34 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %2
  %37 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %38 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %2
  %41 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %42 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %52

44:                                               ; preds = %2
  %45 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %46 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @readl(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %40, %36, %32, %28, %7
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
