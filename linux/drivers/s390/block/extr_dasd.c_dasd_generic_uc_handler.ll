; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_uc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_uc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.irb = type { i32 }
%struct.dasd_device = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*, i32*, %struct.irb*)*, i32 (%struct.dasd_device*, %struct.irb*, i8*)* }

@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"uc\00", align 1
@UC_TODO_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_uc_handler(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = call %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device* %6)
  store %struct.dasd_device* %7, %struct.dasd_device** %5, align 8
  %8 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %9 = call i64 @IS_ERR(%struct.dasd_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %63

12:                                               ; preds = %2
  %13 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %14 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %15 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %14, i32 0, i32 3
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %12
  %19 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %28 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dasd_device*, i32*, %struct.irb*)*, i32 (%struct.dasd_device*, i32*, %struct.irb*)** %30, align 8
  %32 = icmp ne i32 (%struct.dasd_device*, i32*, %struct.irb*)* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26, %18, %12
  %34 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %35 = call i32 @dasd_put_device(%struct.dasd_device* %34)
  br label %63

36:                                               ; preds = %26
  %37 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.dasd_device*, %struct.irb*, i8*)*, i32 (%struct.dasd_device*, %struct.irb*, i8*)** %40, align 8
  %42 = icmp ne i32 (%struct.dasd_device*, %struct.irb*, i8*)* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %45 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32 (%struct.dasd_device*, %struct.irb*, i8*)*, i32 (%struct.dasd_device*, %struct.irb*, i8*)** %47, align 8
  %49 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %50 = load %struct.irb*, %struct.irb** %4, align 8
  %51 = call i32 %48(%struct.dasd_device* %49, %struct.irb* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %43, %36
  %53 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %54 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.dasd_device*, i32*, %struct.irb*)*, i32 (%struct.dasd_device*, i32*, %struct.irb*)** %56, align 8
  %58 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %59 = load %struct.irb*, %struct.irb** %4, align 8
  %60 = call i32 %57(%struct.dasd_device* %58, i32* null, %struct.irb* %59)
  %61 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %62 = call i32 @dasd_put_device(%struct.dasd_device* %61)
  br label %63

63:                                               ; preds = %52, %33, %11
  %64 = load i32, i32* @UC_TODO_RETRY, align 4
  ret i32 %64
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
