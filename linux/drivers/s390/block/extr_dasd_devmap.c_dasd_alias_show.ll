; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_alias_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_alias_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*, %struct.dasd_uid*)* }
%struct.dasd_uid = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@UA_BASE_PAV_ALIAS = common dso_local global i64 0, align 8
@UA_HYPER_PAV_ALIAS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dasd_alias_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_alias_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dasd_device*, align 8
  %9 = alloca %struct.dasd_uid, align 8
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
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dasd_device*, %struct.dasd_uid*)*, i32 (%struct.dasd_device*, %struct.dasd_uid*)** %28, align 8
  %30 = icmp ne i32 (%struct.dasd_device*, %struct.dasd_uid*)* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %24
  %32 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %33 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dasd_device*, %struct.dasd_uid*)*, i32 (%struct.dasd_device*, %struct.dasd_uid*)** %35, align 8
  %37 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %38 = call i32 %36(%struct.dasd_device* %37, %struct.dasd_uid* %9)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UA_BASE_PAV_ALIAS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @UA_HYPER_PAV_ALIAS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45, %40
  %51 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %52 = call i32 @dasd_put_device(%struct.dasd_device* %51)
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %4, align 4
  br label %61

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %31, %24, %19
  %57 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %58 = call i32 @dasd_put_device(%struct.dasd_device* %57)
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %50, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
