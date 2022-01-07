; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_add_link_to_gendisk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_add_link_to_gendisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.dasd_devmap* }
%struct.dasd_devmap = type { i32 }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dasd_devmap_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_add_link_to_gendisk(%struct.gendisk* %0, %struct.dasd_device* %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_devmap*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store %struct.dasd_device* %1, %struct.dasd_device** %4, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @dev_name(i32* %9)
  %11 = call %struct.dasd_devmap* @dasd_find_busid(i32 %10)
  store %struct.dasd_devmap* %11, %struct.dasd_devmap** %5, align 8
  %12 = load %struct.dasd_devmap*, %struct.dasd_devmap** %5, align 8
  %13 = call i64 @IS_ERR(%struct.dasd_devmap* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %22

16:                                               ; preds = %2
  %17 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %18 = load %struct.dasd_devmap*, %struct.dasd_devmap** %5, align 8
  %19 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %20 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %19, i32 0, i32 0
  store %struct.dasd_devmap* %18, %struct.dasd_devmap** %20, align 8
  %21 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  br label %22

22:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.dasd_devmap* @dasd_find_busid(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
