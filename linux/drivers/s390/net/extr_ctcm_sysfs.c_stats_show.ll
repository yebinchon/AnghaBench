; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_sysfs.c_stats_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_sysfs.c_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccwgroup_device = type { i64 }
%struct.ctcm_priv = type { i32 }

@CCWGROUP_ONLINE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ccwgroup_device*, align 8
  %9 = alloca %struct.ctcm_priv*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device* %10)
  store %struct.ccwgroup_device* %11, %struct.ccwgroup_device** %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.ctcm_priv* @dev_get_drvdata(%struct.device* %12)
  store %struct.ctcm_priv* %13, %struct.ctcm_priv** %9, align 8
  %14 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %15 = icmp ne %struct.ctcm_priv* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %8, align 8
  %18 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CCWGROUP_ONLINE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %27 = call i32 @ctcm_print_statistics(%struct.ctcm_priv* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device*) #1

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ctcm_print_statistics(%struct.ctcm_priv*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
