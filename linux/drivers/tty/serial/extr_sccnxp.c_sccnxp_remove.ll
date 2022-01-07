; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sccnxp_port = type { i32, %struct.TYPE_3__, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sccnxp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sccnxp_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sccnxp_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.sccnxp_port* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.sccnxp_port* %7, %struct.sccnxp_port** %5, align 8
  %8 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %9 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %16 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %19 = call i32 @devm_free_irq(i32* %14, i32 %17, %struct.sccnxp_port* %18)
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %22 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %21, i32 0, i32 3
  %23 = call i32 @del_timer_sync(i32* %22)
  br label %24

24:                                               ; preds = %20, %12
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %28 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %34 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %33, i32 0, i32 1
  %35 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %36 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @uart_remove_one_port(%struct.TYPE_3__* %34, i32* %40)
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %25

45:                                               ; preds = %25
  %46 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %47 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %46, i32 0, i32 1
  %48 = call i32 @uart_unregister_driver(%struct.TYPE_3__* %47)
  %49 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %50 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @IS_ERR(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %56 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @regulator_disable(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.sccnxp_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.sccnxp_port*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @uart_remove_one_port(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @uart_unregister_driver(%struct.TYPE_3__*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
