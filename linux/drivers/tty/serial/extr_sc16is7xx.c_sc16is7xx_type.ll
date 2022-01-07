; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }
%struct.sc16is7xx_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@PORT_SC16IS7XX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.uart_port*)* @sc16is7xx_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sc16is7xx_type(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sc16is7xx_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.sc16is7xx_port* @dev_get_drvdata(i32 %6)
  store %struct.sc16is7xx_port* %7, %struct.sc16is7xx_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PORT_SC16IS7XX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %15 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i8* [ %18, %13 ], [ null, %19 ]
  ret i8* %21
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
