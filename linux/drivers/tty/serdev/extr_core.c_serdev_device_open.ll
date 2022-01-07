; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.serdev_controller* }
%struct.serdev_controller = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.serdev_controller*)*, i32 (%struct.serdev_controller*)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serdev_device_open(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.serdev_controller*, align 8
  %5 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %6 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %7 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %6, i32 0, i32 0
  %8 = load %struct.serdev_controller*, %struct.serdev_controller** %7, align 8
  store %struct.serdev_controller* %8, %struct.serdev_controller** %4, align 8
  %9 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %10 = icmp ne %struct.serdev_controller* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %13 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.serdev_controller*)*, i32 (%struct.serdev_controller*)** %15, align 8
  %17 = icmp ne i32 (%struct.serdev_controller*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %11
  %22 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %23 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.serdev_controller*)*, i32 (%struct.serdev_controller*)** %25, align 8
  %27 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %28 = call i32 %26(%struct.serdev_controller* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %61

33:                                               ; preds = %21
  %34 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %35 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %34, i32 0, i32 1
  %36 = call i32 @pm_runtime_get_sync(i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %41 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %40, i32 0, i32 1
  %42 = call i32 @pm_runtime_put_noidle(i32* %41)
  br label %44

43:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %61

44:                                               ; preds = %39
  %45 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %46 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (%struct.serdev_controller*)*, i32 (%struct.serdev_controller*)** %48, align 8
  %50 = icmp ne i32 (%struct.serdev_controller*)* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %53 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (%struct.serdev_controller*)*, i32 (%struct.serdev_controller*)** %55, align 8
  %57 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %58 = call i32 %56(%struct.serdev_controller* %57)
  br label %59

59:                                               ; preds = %51, %44
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %43, %31, %18
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
