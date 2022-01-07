; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RIO_DEVICE_RUNNING = common dso_local global i32 0, align 4
@rio_global_list_lock = common dso_local global i32 0, align 4
@rio_devices = common dso_local global i32 0, align 4
@RIO_PEF_SWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_add_device(%struct.rio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rio_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rio_dev* %0, %struct.rio_dev** %3, align 8
  %5 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %6 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %5, i32 0, i32 6
  %7 = load i32, i32* @RIO_DEVICE_RUNNING, align 4
  %8 = call i32 @atomic_set(i32* %6, i32 %7)
  %9 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %9, i32 0, i32 5
  %11 = call i32 @device_register(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = call i32 @spin_lock(i32* @rio_global_list_lock)
  %18 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %19 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %18, i32 0, i32 4
  %20 = call i32 @list_add_tail(i32* %19, i32* @rio_devices)
  %21 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %16
  %26 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %27 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %26, i32 0, i32 3
  %28 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32 @list_add_tail(i32* %27, i32* %31)
  %33 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %34 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RIO_PEF_SWITCH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %25
  %40 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %45 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %43, i32* %47)
  br label %49

49:                                               ; preds = %39, %25
  br label %50

50:                                               ; preds = %49, %16
  %51 = call i32 @spin_unlock(i32* @rio_global_list_lock)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @device_register(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
