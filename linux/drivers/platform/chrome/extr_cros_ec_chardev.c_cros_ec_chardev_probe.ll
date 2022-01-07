; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_chardev.c_cros_ec_chardev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_chardev.c_cros_ec_chardev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cros_ec_dev = type { i32 }
%struct.cros_ec_platform = type { i32 }
%struct.chardev_data = type { %struct.TYPE_4__, %struct.cros_ec_dev* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@chardev_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_ec_chardev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_chardev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cros_ec_dev*, align 8
  %5 = alloca %struct.cros_ec_platform*, align 8
  %6 = alloca %struct.chardev_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cros_ec_dev* @dev_get_drvdata(i32 %10)
  store %struct.cros_ec_dev* %11, %struct.cros_ec_dev** %4, align 8
  %12 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %13 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.cros_ec_platform* @dev_get_platdata(i32 %14)
  store %struct.cros_ec_platform* %15, %struct.cros_ec_platform** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.chardev_data* @devm_kzalloc(%struct.TYPE_5__* %17, i32 32, i32 %18)
  store %struct.chardev_data* %19, %struct.chardev_data** %6, align 8
  %20 = load %struct.chardev_data*, %struct.chardev_data** %6, align 8
  %21 = icmp ne %struct.chardev_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %56

25:                                               ; preds = %1
  %26 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %27 = load %struct.chardev_data*, %struct.chardev_data** %6, align 8
  %28 = getelementptr inbounds %struct.chardev_data, %struct.chardev_data* %27, i32 0, i32 1
  store %struct.cros_ec_dev* %26, %struct.cros_ec_dev** %28, align 8
  %29 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %30 = load %struct.chardev_data*, %struct.chardev_data** %6, align 8
  %31 = getelementptr inbounds %struct.chardev_data, %struct.chardev_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 8
  %33 = load %struct.chardev_data*, %struct.chardev_data** %6, align 8
  %34 = getelementptr inbounds %struct.chardev_data, %struct.chardev_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32* @chardev_fops, i32** %35, align 8
  %36 = load %struct.cros_ec_platform*, %struct.cros_ec_platform** %5, align 8
  %37 = getelementptr inbounds %struct.cros_ec_platform, %struct.cros_ec_platform* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.chardev_data*, %struct.chardev_data** %6, align 8
  %40 = getelementptr inbounds %struct.chardev_data, %struct.chardev_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.chardev_data*, %struct.chardev_data** %6, align 8
  %47 = getelementptr inbounds %struct.chardev_data, %struct.chardev_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.chardev_data*, %struct.chardev_data** %6, align 8
  %52 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %50, %struct.chardev_data* %51)
  %53 = load %struct.chardev_data*, %struct.chardev_data** %6, align 8
  %54 = getelementptr inbounds %struct.chardev_data, %struct.chardev_data* %53, i32 0, i32 0
  %55 = call i32 @misc_register(%struct.TYPE_4__* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %25, %22
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.cros_ec_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.cros_ec_platform* @dev_get_platdata(i32) #1

declare dso_local %struct.chardev_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, %struct.chardev_data*) #1

declare dso_local i32 @misc_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
