; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max310x_port = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_7__*, i32)* }

@max310x_uart = common dso_local global i32 0, align 4
@max310x_lines = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @max310x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max310x_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.max310x_port*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.max310x_port* @dev_get_drvdata(%struct.device* %5)
  store %struct.max310x_port* %6, %struct.max310x_port** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %72, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.max310x_port*, %struct.max310x_port** %3, align 8
  %10 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %7
  %16 = load %struct.max310x_port*, %struct.max310x_port** %3, align 8
  %17 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = call i32 @cancel_work_sync(i32* %22)
  %24 = load %struct.max310x_port*, %struct.max310x_port** %3, align 8
  %25 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = call i32 @cancel_work_sync(i32* %30)
  %32 = load %struct.max310x_port*, %struct.max310x_port** %3, align 8
  %33 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = call i32 @cancel_work_sync(i32* %38)
  %40 = load %struct.max310x_port*, %struct.max310x_port** %3, align 8
  %41 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @uart_remove_one_port(i32* @max310x_uart, %struct.TYPE_7__* %46)
  %48 = load %struct.max310x_port*, %struct.max310x_port** %3, align 8
  %49 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @max310x_lines, align 4
  %58 = call i32 @clear_bit(i32 %56, i32 %57)
  %59 = load %struct.max310x_port*, %struct.max310x_port** %3, align 8
  %60 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %62, align 8
  %64 = load %struct.max310x_port*, %struct.max310x_port** %3, align 8
  %65 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 %63(%struct.TYPE_7__* %70, i32 0)
  br label %72

72:                                               ; preds = %15
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %7

75:                                               ; preds = %7
  %76 = load %struct.max310x_port*, %struct.max310x_port** %3, align 8
  %77 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @clk_disable_unprepare(i32 %78)
  ret i32 0
}

declare dso_local %struct.max310x_port* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
