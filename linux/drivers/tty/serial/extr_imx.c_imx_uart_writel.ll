; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*, i32, i32)* @imx_uart_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_writel(%struct.imx_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.imx_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %28 [
    i32 132, label %8
    i32 131, label %12
    i32 130, label %16
    i32 129, label %20
    i32 128, label %24
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %11 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  br label %29

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %15 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %19 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  br label %29

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %23 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %27 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %24, %20, %16, %12, %8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %32 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @writel(i32 %30, i64 %37)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
