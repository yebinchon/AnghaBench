; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_delete_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_delete_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.ccw_device*, i32 }
%struct.ccw_device = type { i32 }
%struct.dasd_devmap = type { %struct.dasd_device* }

@dasd_devmap_lock = common dso_local global i32 0, align 4
@dasd_delete_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_delete_device(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.dasd_devmap*, align 8
  %5 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 0
  %8 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 0
  %10 = call i32 @dev_name(i32* %9)
  %11 = call %struct.dasd_devmap* @dasd_find_busid(i32 %10)
  store %struct.dasd_devmap* %11, %struct.dasd_devmap** %4, align 8
  %12 = load %struct.dasd_devmap*, %struct.dasd_devmap** %4, align 8
  %13 = call i32 @IS_ERR(%struct.dasd_devmap* %12)
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %16 = load %struct.dasd_devmap*, %struct.dasd_devmap** %4, align 8
  %17 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %16, i32 0, i32 0
  %18 = load %struct.dasd_device*, %struct.dasd_device** %17, align 8
  %19 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %20 = icmp ne %struct.dasd_device* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  %23 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %24 = call i32 @dasd_put_device(%struct.dasd_device* %23)
  br label %68

25:                                               ; preds = %1
  %26 = load %struct.dasd_devmap*, %struct.dasd_devmap** %4, align 8
  %27 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %26, i32 0, i32 0
  store %struct.dasd_device* null, %struct.dasd_device** %27, align 8
  %28 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  %29 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %30 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %29, i32 0, i32 0
  %31 = load %struct.ccw_device*, %struct.ccw_device** %30, align 8
  %32 = call i32 @get_ccwdev_lock(%struct.ccw_device* %31)
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_lock_irqsave(i32 %32, i64 %33)
  %35 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %36 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %35, i32 0, i32 0
  %37 = load %struct.ccw_device*, %struct.ccw_device** %36, align 8
  %38 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %37, i32 0, i32 0
  %39 = call i32 @dev_set_drvdata(i32* %38, i32* null)
  %40 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 0
  %42 = load %struct.ccw_device*, %struct.ccw_device** %41, align 8
  %43 = call i32 @get_ccwdev_lock(%struct.ccw_device* %42)
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32 %43, i64 %44)
  %46 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %47 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %46, i32 0, i32 1
  %48 = call i32 @atomic_sub(i32 3, i32* %47)
  %49 = load i32, i32* @dasd_delete_wq, align 4
  %50 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %51 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %50, i32 0, i32 1
  %52 = call i64 @atomic_read(i32* %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @wait_event(i32 %49, i32 %54)
  %56 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %57 = call i32 @dasd_generic_free_discipline(%struct.dasd_device* %56)
  %58 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %59 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %58, i32 0, i32 0
  %60 = load %struct.ccw_device*, %struct.ccw_device** %59, align 8
  store %struct.ccw_device* %60, %struct.ccw_device** %3, align 8
  %61 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %62 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %61, i32 0, i32 0
  store %struct.ccw_device* null, %struct.ccw_device** %62, align 8
  %63 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %64 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %63, i32 0, i32 0
  %65 = call i32 @put_device(i32* %64)
  %66 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %67 = call i32 @dasd_free_device(%struct.dasd_device* %66)
  br label %68

68:                                               ; preds = %25, %21
  ret void
}

declare dso_local %struct.dasd_devmap* @dasd_find_busid(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dasd_generic_free_discipline(%struct.dasd_device*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @dasd_free_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
