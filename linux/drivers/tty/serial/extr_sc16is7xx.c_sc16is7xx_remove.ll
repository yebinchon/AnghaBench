; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sc16is7xx_port = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }

@sc16is7xx_uart = common dso_local global i32 0, align 4
@sc16is7xx_lines = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sc16is7xx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc16is7xx_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sc16is7xx_port*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.sc16is7xx_port* @dev_get_drvdata(%struct.device* %5)
  store %struct.sc16is7xx_port* %6, %struct.sc16is7xx_port** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %42, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %10 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %9, i32 0, i32 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %7
  %16 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %17 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %16, i32 0, i32 3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @uart_remove_one_port(i32* @sc16is7xx_uart, %struct.TYPE_7__* %22)
  %24 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %25 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clear_bit(i32 %32, i32* @sc16is7xx_lines)
  %34 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %35 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @sc16is7xx_power(%struct.TYPE_7__* %40, i32 0)
  br label %42

42:                                               ; preds = %15
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %7

45:                                               ; preds = %7
  %46 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %47 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %46, i32 0, i32 2
  %48 = call i32 @kthread_flush_worker(i32* %47)
  %49 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %50 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kthread_stop(i32 %51)
  %53 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %54 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @IS_ERR(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %45
  %59 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %60 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clk_disable_unprepare(i32 %61)
  br label %63

63:                                               ; preds = %58, %45
  ret i32 0
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sc16is7xx_power(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @kthread_flush_worker(i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
