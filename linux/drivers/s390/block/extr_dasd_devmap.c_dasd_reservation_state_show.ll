; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_reservation_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_reservation_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@DASD_FLAG_IS_RESERVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"reserved\0A\00", align 1
@DASD_FLAG_LOCK_STOLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"lost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dasd_reservation_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_reservation_state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dasd_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call i32 @to_ccwdev(%struct.device* %10)
  %12 = call %struct.dasd_device* @dasd_device_from_cdev(i32 %11)
  store %struct.dasd_device* %12, %struct.dasd_device** %8, align 8
  %13 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %14 = call i64 @IS_ERR(%struct.dasd_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %4, align 4
  br label %49

20:                                               ; preds = %3
  %21 = load i32, i32* @DASD_FLAG_IS_RESERVED, align 4
  %22 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i32 @snprintf(i8* %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %9, align 4
  br label %45

30:                                               ; preds = %20
  %31 = load i32, i32* @DASD_FLAG_LOCK_STOLEN, align 4
  %32 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %33 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i32 @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %39, i32* %9, align 4
  br label %44

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = call i32 @snprintf(i8* %41, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %47 = call i32 @dasd_put_device(%struct.dasd_device* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
