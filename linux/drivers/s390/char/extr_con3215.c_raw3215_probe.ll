; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { %struct.ccw_device* }
%struct.ccw_device = type { i32, i32 }

@raw3215 = common dso_local global %struct.raw3215_info** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@raw3215_irq = common dso_local global i32 0, align 4
@raw3215_device_lock = common dso_local global i32 0, align 4
@NR_3215 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @raw3215_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw3215_probe(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.raw3215_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %6 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %7 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %6, i64 0
  %8 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %9 = icmp ne %struct.raw3215_info* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %12 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %11, i64 0
  %13 = load %struct.raw3215_info*, %struct.raw3215_info** %12, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 1
  %16 = call %struct.raw3215_info* @dev_get_drvdata(i32* %15)
  %17 = icmp eq %struct.raw3215_info* %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %70

19:                                               ; preds = %10, %1
  %20 = call %struct.raw3215_info* (...) @raw3215_alloc_info()
  store %struct.raw3215_info* %20, %struct.raw3215_info** %4, align 8
  %21 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %22 = icmp eq %struct.raw3215_info* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %70

26:                                               ; preds = %19
  %27 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %28 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %29 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %28, i32 0, i32 0
  store %struct.ccw_device* %27, %struct.ccw_device** %29, align 8
  %30 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 1
  %32 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %33 = call i32 @dev_set_drvdata(i32* %31, %struct.raw3215_info* %32)
  %34 = load i32, i32* @raw3215_irq, align 4
  %35 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = call i32 @spin_lock(i32* @raw3215_device_lock)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %56, %26
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @NR_3215, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %43, i64 %45
  %47 = load %struct.raw3215_info*, %struct.raw3215_info** %46, align 8
  %48 = icmp ne %struct.raw3215_info* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %51 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %51, i64 %53
  store %struct.raw3215_info* %50, %struct.raw3215_info** %54, align 8
  br label %59

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %38

59:                                               ; preds = %49, %38
  %60 = call i32 @spin_unlock(i32* @raw3215_device_lock)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @NR_3215, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %66 = call i32 @raw3215_free_info(%struct.raw3215_info* %65)
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %64, %23, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.raw3215_info* @dev_get_drvdata(i32*) #1

declare dso_local %struct.raw3215_info* @raw3215_alloc_info(...) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.raw3215_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @raw3215_free_info(%struct.raw3215_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
