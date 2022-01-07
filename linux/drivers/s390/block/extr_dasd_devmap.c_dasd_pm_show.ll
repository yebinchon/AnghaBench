; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_pm_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_pm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_device = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%02x %02x %02x %02x %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dasd_pm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_pm_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dasd_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @to_ccwdev(%struct.device* %15)
  %17 = call %struct.dasd_device* @dasd_device_from_cdev(i32 %16)
  store %struct.dasd_device* %17, %struct.dasd_device** %8, align 8
  %18 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %19 = call i64 @IS_ERR(%struct.dasd_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %3
  %25 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %26 = call i32 @dasd_path_get_opm(%struct.dasd_device* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %28 = call i32 @dasd_path_get_nppm(%struct.dasd_device* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %30 = call i32 @dasd_path_get_cablepm(%struct.dasd_device* %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %32 = call i32 @dasd_path_get_cuirpm(%struct.dasd_device* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %34 = call i32 @dasd_path_get_hpfpm(%struct.dasd_device* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %36 = call i32 @dasd_path_get_ifccpm(%struct.dasd_device* %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %38 = call i32 @dasd_put_device(%struct.dasd_device* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %24, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @dasd_path_get_opm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_get_nppm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_get_cablepm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_get_cuirpm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_get_hpfpm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_get_ifccpm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
