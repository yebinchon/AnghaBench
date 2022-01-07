; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dw8250_data = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw8250_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw8250_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dw8250_data*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.dw8250_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.dw8250_data* %6, %struct.dw8250_data** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @pm_runtime_get_sync(%struct.device* %9)
  %11 = load %struct.dw8250_data*, %struct.dw8250_data** %3, align 8
  %12 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @serial8250_unregister_port(i32 %14)
  %16 = load %struct.dw8250_data*, %struct.dw8250_data** %3, align 8
  %17 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @reset_control_assert(i32 %18)
  %20 = load %struct.dw8250_data*, %struct.dw8250_data** %3, align 8
  %21 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IS_ERR(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.dw8250_data*, %struct.dw8250_data** %3, align 8
  %27 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable_unprepare(i32 %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.dw8250_data*, %struct.dw8250_data** %3, align 8
  %32 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IS_ERR(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.dw8250_data*, %struct.dw8250_data** %3, align 8
  %38 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_disable_unprepare(i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @pm_runtime_disable(%struct.device* %42)
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @pm_runtime_put_noidle(%struct.device* %44)
  ret i32 0
}

declare dso_local %struct.dw8250_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @serial8250_unregister_port(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
