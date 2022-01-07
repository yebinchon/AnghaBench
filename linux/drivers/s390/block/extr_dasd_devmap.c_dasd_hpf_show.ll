; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_hpf_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_hpf_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*)* }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@dasd_nofcx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dasd_hpf_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_hpf_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dasd_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call i32 @to_ccwdev(%struct.device* %10)
  %12 = call %struct.dasd_device* @dasd_device_from_cdev(i32 %11)
  store %struct.dasd_device* %12, %struct.dasd_device** %8, align 8
  %13 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %14 = call i64 @IS_ERR(%struct.dasd_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %28, align 8
  %30 = icmp ne i32 (%struct.dasd_device*)* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %33 = call i32 @dasd_put_device(%struct.dasd_device* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i32, i32* @dasd_nofcx, align 4
  %37 = call i32 @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %4, align 4
  br label %52

38:                                               ; preds = %24
  %39 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %40 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %42, align 8
  %44 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %45 = call i32 %43(%struct.dasd_device* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %47 = call i32 @dasd_put_device(%struct.dasd_device* %46)
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @snprintf(i8* %48, i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %38, %31, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
