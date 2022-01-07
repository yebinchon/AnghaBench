; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_use_diag_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_use_diag_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_devmap = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@dasd_devmap_lock = common dso_local global i32 0, align 4
@DASD_FEATURE_USERAW = common dso_local global i32 0, align 4
@DASD_FEATURE_USEDIAG = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_use_diag_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dasd_use_diag_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dasd_devmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @to_ccwdev(%struct.device* %13)
  %15 = call %struct.dasd_devmap* @dasd_devmap_from_cdev(i32 %14)
  store %struct.dasd_devmap* %15, %struct.dasd_devmap** %10, align 8
  %16 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %17 = call i64 @IS_ERR(%struct.dasd_devmap* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %21 = call i64 @PTR_ERR(%struct.dasd_devmap* %20)
  store i64 %21, i64* %5, align 8
  br label %69

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @kstrtouint(i8* %23, i32 0, i32* %11)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %22
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %69

32:                                               ; preds = %26
  %33 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %12, align 8
  %35 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %36 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %32
  %40 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %41 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DASD_FEATURE_USERAW, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @DASD_FEATURE_USEDIAG, align 4
  %51 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %52 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %62

55:                                               ; preds = %46
  %56 = load i32, i32* @DASD_FEATURE_USEDIAG, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %59 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %49
  br label %66

63:                                               ; preds = %39, %32
  %64 = load i64, i64* @EPERM, align 8
  %65 = sub i64 0, %64
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %63, %62
  %67 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  %68 = load i64, i64* %12, align 8
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %66, %29, %19
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local %struct.dasd_devmap* @dasd_devmap_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_devmap*) #1

declare dso_local i64 @PTR_ERR(%struct.dasd_devmap*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
