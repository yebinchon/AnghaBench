; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_ro_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_ro_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_devmap = type { i32, %struct.dasd_device* }
%struct.dasd_device = type { i32 }

@DASD_FEATURE_READONLY = common dso_local global i32 0, align 4
@dasd_devmap_lock = common dso_local global i32 0, align 4
@DASD_FLAG_DEVICE_RO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dasd_ro_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_ro_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dasd_devmap*, align 8
  %8 = alloca %struct.dasd_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @dev_name(%struct.device* %10)
  %12 = call %struct.dasd_devmap* @dasd_find_busid(i32 %11)
  store %struct.dasd_devmap* %12, %struct.dasd_devmap** %7, align 8
  %13 = load %struct.dasd_devmap*, %struct.dasd_devmap** %7, align 8
  %14 = call i64 @IS_ERR(%struct.dasd_devmap* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.dasd_devmap*, %struct.dasd_devmap** %7, align 8
  %19 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DASD_FEATURE_READONLY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %28 = load %struct.dasd_devmap*, %struct.dasd_devmap** %7, align 8
  %29 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %28, i32 0, i32 1
  %30 = load %struct.dasd_device*, %struct.dasd_device** %29, align 8
  store %struct.dasd_device* %30, %struct.dasd_device** %8, align 8
  %31 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %32 = icmp ne %struct.dasd_device* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %17
  %34 = load i32, i32* @DASD_FLAG_DEVICE_RO, align 4
  %35 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %36 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %35, i32 0, i32 0
  %37 = call i32 @test_bit(i32 %34, i32* %36)
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %33, %17
  %41 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %49 = call i32 @snprintf(i8* %43, i32 %44, i8* %48)
  ret i32 %49
}

declare dso_local %struct.dasd_devmap* @dasd_find_busid(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
