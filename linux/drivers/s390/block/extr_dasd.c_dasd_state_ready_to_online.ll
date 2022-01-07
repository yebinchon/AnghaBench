; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_state_ready_to_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_state_ready_to_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__*, %struct.gendisk* }
%struct.TYPE_5__ = type { %struct.gendisk* }
%struct.gendisk = type { i32 }
%struct.disk_part_iter = type { i32 }
%struct.hd_struct = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@DASD_STATE_ONLINE = common dso_local global i32 0, align 4
@DASD_FEATURE_USERAW = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@DISK_PITER_INCL_PART0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_state_ready_to_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_state_ready_to_online(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.disk_part_iter, align 4
  %6 = alloca %struct.hd_struct*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %7 = load i32, i32* @DASD_STATE_ONLINE, align 4
  %8 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %9 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %58

14:                                               ; preds = %1
  %15 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = call i32 @dasd_schedule_block_bh(%struct.TYPE_8__* %17)
  %19 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DASD_FEATURE_USERAW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %14
  %26 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %27 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.gendisk*, %struct.gendisk** %29, align 8
  store %struct.gendisk* %30, %struct.gendisk** %4, align 8
  %31 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %32 = call %struct.TYPE_7__* @disk_to_dev(%struct.gendisk* %31)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* @KOBJ_CHANGE, align 4
  %35 = call i32 @kobject_uevent(i32* %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %59

36:                                               ; preds = %14
  %37 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.gendisk*, %struct.gendisk** %42, align 8
  store %struct.gendisk* %43, %struct.gendisk** %4, align 8
  %44 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %45 = load i32, i32* @DISK_PITER_INCL_PART0, align 4
  %46 = call i32 @disk_part_iter_init(%struct.disk_part_iter* %5, %struct.gendisk* %44, i32 %45)
  br label %47

47:                                               ; preds = %50, %36
  %48 = call %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter* %5)
  store %struct.hd_struct* %48, %struct.hd_struct** %6, align 8
  %49 = icmp ne %struct.hd_struct* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %52 = call %struct.TYPE_6__* @part_to_dev(%struct.hd_struct* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* @KOBJ_CHANGE, align 4
  %55 = call i32 @kobject_uevent(i32* %53, i32 %54)
  br label %47

56:                                               ; preds = %47
  %57 = call i32 @disk_part_iter_exit(%struct.disk_part_iter* %5)
  br label %58

58:                                               ; preds = %56, %1
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %25
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @dasd_schedule_block_bh(%struct.TYPE_8__*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @disk_part_iter_init(%struct.disk_part_iter*, %struct.gendisk*, i32) #1

declare dso_local %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter*) #1

declare dso_local %struct.TYPE_6__* @part_to_dev(%struct.hd_struct*) #1

declare dso_local i32 @disk_part_iter_exit(%struct.disk_part_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
