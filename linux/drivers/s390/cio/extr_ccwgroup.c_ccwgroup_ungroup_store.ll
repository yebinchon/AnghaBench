; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_ungroup_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_ungroup_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccwgroup_device = type { i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@CCWGROUP_OFFLINE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ccwgroup_ungroup_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccwgroup_ungroup_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ccwgroup_device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device* %12)
  store %struct.ccwgroup_device* %13, %struct.ccwgroup_device** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %10, align 8
  %15 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %14, i32 0, i32 1
  %16 = call i64 @atomic_cmpxchg(i32* %15, i32 0, i32 1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %53

21:                                               ; preds = %4
  %22 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %10, align 8
  %23 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CCWGROUP_OFFLINE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %42

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %33 = call i64 @device_remove_file_self(%struct.device* %31, %struct.device_attribute* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %10, align 8
  %37 = call i32 @ccwgroup_ungroup(%struct.ccwgroup_device* %36)
  br label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %27
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %10, align 8
  %47 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %46, i32 0, i32 1
  %48 = call i32 @atomic_set(i32* %47, i32 0)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %53

50:                                               ; preds = %42
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %45, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device*) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i64 @device_remove_file_self(%struct.device*, %struct.device_attribute*) #1

declare dso_local i32 @ccwgroup_ungroup(%struct.ccwgroup_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
