; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.gb_bundle = type { i32 }
%struct.gb_loopback = type { i32, i32, i32, i32, i32, i32 }

@gb_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@loopback_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_bundle*)* @gb_loopback_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_loopback_disconnect(%struct.gb_bundle* %0) #0 {
  %2 = alloca %struct.gb_bundle*, align 8
  %3 = alloca %struct.gb_loopback*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %2, align 8
  %6 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %7 = call %struct.gb_loopback* @greybus_get_drvdata(%struct.gb_bundle* %6)
  store %struct.gb_loopback* %7, %struct.gb_loopback** %3, align 8
  %8 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %9 = call i32 @gb_pm_runtime_get_sync(%struct.gb_bundle* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %14 = call i32 @gb_pm_runtime_get_noresume(%struct.gb_bundle* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %17 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gb_connection_disable(i32 %18)
  %20 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %21 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IS_ERR_OR_NULL(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %27 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kthread_stop(i32 %28)
  br label %30

30:                                               ; preds = %25, %15
  %31 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %32 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %31, i32 0, i32 4
  %33 = call i32 @kfifo_free(i32* %32)
  %34 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %35 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gb_connection_latency_tag_disable(i32 %36)
  %38 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %39 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @debugfs_remove(i32 %40)
  %42 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %43 = call i32 @gb_loopback_async_wait_all(%struct.gb_loopback* %42)
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gb_dev, i32 0, i32 0), i64 %44)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gb_dev, i32 0, i32 1), align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gb_dev, i32 0, i32 1), align 4
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gb_dev, i32 0, i32 0), i64 %48)
  %50 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %51 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_unregister(i32 %52)
  %54 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %55 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ida_simple_remove(i32* @loopback_ida, i32 %56)
  %58 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %59 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gb_connection_destroy(i32 %60)
  %62 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %63 = call i32 @kfree(%struct.gb_loopback* %62)
  ret void
}

declare dso_local %struct.gb_loopback* @greybus_get_drvdata(%struct.gb_bundle*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(%struct.gb_bundle*) #1

declare dso_local i32 @gb_pm_runtime_get_noresume(%struct.gb_bundle*) #1

declare dso_local i32 @gb_connection_disable(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @gb_connection_latency_tag_disable(i32) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @gb_loopback_async_wait_all(%struct.gb_loopback*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @device_unregister(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @gb_connection_destroy(i32) #1

declare dso_local i32 @kfree(%struct.gb_loopback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
