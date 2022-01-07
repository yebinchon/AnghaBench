; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32* }
%struct.dasd_device = type { %struct.dasd_block*, i32 }
%struct.dasd_block = type { i32 }

@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@DASD_FLAG_SAFE_OFFLINE_RUNNING = common dso_local global i32 0, align 4
@DASD_STATE_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_generic_remove(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_block*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  store i32* null, i32** %6, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = call %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device* %7)
  store %struct.dasd_device* %8, %struct.dasd_device** %3, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = call i64 @IS_ERR(%struct.dasd_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %14 = call i32 @dasd_remove_sysfs_files(%struct.ccw_device* %13)
  br label %49

15:                                               ; preds = %1
  %16 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %17 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %18 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %17, i32 0, i32 1
  %19 = call i64 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %23 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %24 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %23, i32 0, i32 1
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %29 = call i32 @dasd_put_device(%struct.dasd_device* %28)
  %30 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %31 = call i32 @dasd_remove_sysfs_files(%struct.ccw_device* %30)
  br label %49

32:                                               ; preds = %21, %15
  %33 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %34 = load i32, i32* @DASD_STATE_NEW, align 4
  %35 = call i32 @dasd_set_target_state(%struct.dasd_device* %33, i32 %34)
  %36 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %37 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %36, i32 0, i32 0
  %38 = load %struct.dasd_block*, %struct.dasd_block** %37, align 8
  store %struct.dasd_block* %38, %struct.dasd_block** %4, align 8
  %39 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %40 = call i32 @dasd_delete_device(%struct.dasd_device* %39)
  %41 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %42 = icmp ne %struct.dasd_block* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %45 = call i32 @dasd_free_block(%struct.dasd_block* %44)
  br label %46

46:                                               ; preds = %43, %32
  %47 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %48 = call i32 @dasd_remove_sysfs_files(%struct.ccw_device* %47)
  br label %49

49:                                               ; preds = %46, %27, %12
  ret void
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @dasd_remove_sysfs_files(%struct.ccw_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_set_target_state(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_delete_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_free_block(%struct.dasd_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
