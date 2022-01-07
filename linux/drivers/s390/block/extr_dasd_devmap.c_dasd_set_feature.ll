; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_set_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_set_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_devmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dasd_devmap_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_set_feature(%struct.ccw_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dasd_devmap*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %10 = call %struct.dasd_devmap* @dasd_devmap_from_cdev(%struct.ccw_device* %9)
  store %struct.dasd_devmap* %10, %struct.dasd_devmap** %8, align 8
  %11 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %12 = call i64 @IS_ERR(%struct.dasd_devmap* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %16 = call i32 @PTR_ERR(%struct.dasd_devmap* %15)
  store i32 %16, i32* %4, align 4
  br label %49

17:                                               ; preds = %3
  %18 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %24 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %34

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %31 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %36 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %41 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %44 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %34
  %48 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.dasd_devmap* @dasd_devmap_from_cdev(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
