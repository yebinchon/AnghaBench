; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/extr_vsoc.c_do_vsoc_cond_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/extr_vsoc.c_do_vsoc_cond_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vsoc_region_data* }
%struct.vsoc_region_data = type { i32 }
%struct.file = type { i32 }
%struct.vsoc_device_region = type { i64, i64 }

@vsoc_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @do_vsoc_cond_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_vsoc_cond_wake(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsoc_device_region*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vsoc_region_data*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.vsoc_device_region* @vsoc_region_from_filep(%struct.file* %9)
  store %struct.vsoc_device_region* %10, %struct.vsoc_device_region** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call i32 @file_inode(%struct.file* %11)
  %13 = call i32 @iminor(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vsoc_dev, i32 0, i32 0), align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.vsoc_region_data, %struct.vsoc_region_data* %14, i64 %16
  store %struct.vsoc_region_data* %17, %struct.vsoc_region_data** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, 3
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EADDRNOTAVAIL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.vsoc_device_region*, %struct.vsoc_device_region** %6, align 8
  %29 = getelementptr inbounds %struct.vsoc_device_region, %struct.vsoc_device_region* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = add i64 %31, 4
  %33 = load %struct.vsoc_device_region*, %struct.vsoc_device_region** %6, align 8
  %34 = getelementptr inbounds %struct.vsoc_device_region, %struct.vsoc_device_region* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @E2BIG, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %25
  %41 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** %8, align 8
  %42 = getelementptr inbounds %struct.vsoc_region_data, %struct.vsoc_region_data* %41, i32 0, i32 0
  %43 = call i32 @wake_up_interruptible_all(i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %37, %22
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.vsoc_device_region* @vsoc_region_from_filep(%struct.file*) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
