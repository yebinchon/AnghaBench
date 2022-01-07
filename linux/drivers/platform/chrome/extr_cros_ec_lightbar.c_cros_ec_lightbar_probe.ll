; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_cros_ec_lightbar_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_cros_ec_lightbar_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.cros_ec_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cros_ec_platform = type { i32 }

@CROS_EC_DEV_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cros_ec_lightbar_attr_group = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to create %s attributes. err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_ec_lightbar_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_lightbar_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cros_ec_dev*, align 8
  %5 = alloca %struct.cros_ec_platform*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cros_ec_dev* @dev_get_drvdata(i32 %11)
  store %struct.cros_ec_dev* %12, %struct.cros_ec_dev** %4, align 8
  %13 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %14 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cros_ec_platform* @dev_get_platdata(i32 %15)
  store %struct.cros_ec_platform* %16, %struct.cros_ec_platform** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.cros_ec_platform*, %struct.cros_ec_platform** %5, align 8
  %20 = getelementptr inbounds %struct.cros_ec_platform, %struct.cros_ec_platform* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CROS_EC_DEV_NAME, align 4
  %23 = call i64 @strcmp(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %51

28:                                               ; preds = %1
  %29 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %30 = call i32 @get_lightbar_version(%struct.cros_ec_dev* %29, i32* null, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %28
  %36 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %37 = call i32 @lb_manual_suspend_ctrl(%struct.cros_ec_dev* %36, i32 1)
  %38 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %39 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @sysfs_create_group(i32* %40, %struct.TYPE_5__* @cros_ec_lightbar_attr_group)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cros_ec_lightbar_attr_group, i32 0, i32 0), align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %35
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %32, %25
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.cros_ec_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.cros_ec_platform* @dev_get_platdata(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @get_lightbar_version(%struct.cros_ec_dev*, i32*, i32*) #1

declare dso_local i32 @lb_manual_suspend_ctrl(%struct.cros_ec_dev*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
