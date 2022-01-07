; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_access_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_access_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccw_device = type { i32 }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*)* }

@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dasd_access_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_access_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ccw_device*, align 8
  %9 = alloca %struct.dasd_device*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.ccw_device* @to_ccwdev(%struct.device* %11)
  store %struct.ccw_device* %12, %struct.ccw_device** %8, align 8
  %13 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %14 = call %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device* %13)
  store %struct.dasd_device* %14, %struct.dasd_device** %9, align 8
  %15 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %16 = call i64 @IS_ERR(%struct.dasd_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %20 = call i32 @PTR_ERR(%struct.dasd_device* %19)
  store i32 %20, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %48

29:                                               ; preds = %21
  %30 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %31 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %33, align 8
  %35 = icmp ne i32 (%struct.dasd_device*)* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %47

39:                                               ; preds = %29
  %40 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %43, align 8
  %45 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %46 = call i32 %44(%struct.dasd_device* %45)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %39, %36
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %50 = call i32 @dasd_put_device(%struct.dasd_device* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %59

55:                                               ; preds = %48
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %53, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_device*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
