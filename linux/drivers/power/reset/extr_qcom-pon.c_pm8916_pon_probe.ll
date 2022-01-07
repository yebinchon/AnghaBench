; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_qcom-pon.c_pm8916_pon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_qcom-pon.c_pm8916_pon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pm8916_pon = type { i64, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to locate regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@pm8916_reboot_mode_write = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"can't register reboot mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm8916_pon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8916_pon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm8916_pon*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pm8916_pon* @devm_kzalloc(%struct.TYPE_7__* %7, i32 40, i32 %8)
  store %struct.pm8916_pon* %9, %struct.pm8916_pon** %4, align 8
  %10 = load %struct.pm8916_pon*, %struct.pm8916_pon** %4, align 8
  %11 = icmp ne %struct.pm8916_pon* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.pm8916_pon*, %struct.pm8916_pon** %4, align 8
  %19 = getelementptr inbounds %struct.pm8916_pon, %struct.pm8916_pon* %18, i32 0, i32 4
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_get_regmap(i32 %23, i32* null)
  %25 = load %struct.pm8916_pon*, %struct.pm8916_pon** %4, align 8
  %26 = getelementptr inbounds %struct.pm8916_pon, %struct.pm8916_pon* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pm8916_pon*, %struct.pm8916_pon** %4, align 8
  %28 = getelementptr inbounds %struct.pm8916_pon, %struct.pm8916_pon* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %15
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(%struct.TYPE_7__* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %83

37:                                               ; preds = %15
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pm8916_pon*, %struct.pm8916_pon** %4, align 8
  %43 = getelementptr inbounds %struct.pm8916_pon, %struct.pm8916_pon* %42, i32 0, i32 2
  %44 = call i32 @of_property_read_u32(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %83

49:                                               ; preds = %37
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.pm8916_pon*, %struct.pm8916_pon** %4, align 8
  %53 = getelementptr inbounds %struct.pm8916_pon, %struct.pm8916_pon* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i64 @of_device_get_match_data(%struct.TYPE_7__* %56)
  %58 = load %struct.pm8916_pon*, %struct.pm8916_pon** %4, align 8
  %59 = getelementptr inbounds %struct.pm8916_pon, %struct.pm8916_pon* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @pm8916_reboot_mode_write, align 4
  %61 = load %struct.pm8916_pon*, %struct.pm8916_pon** %4, align 8
  %62 = getelementptr inbounds %struct.pm8916_pon, %struct.pm8916_pon* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.pm8916_pon*, %struct.pm8916_pon** %4, align 8
  %67 = getelementptr inbounds %struct.pm8916_pon, %struct.pm8916_pon* %66, i32 0, i32 1
  %68 = call i32 @devm_reboot_mode_register(%struct.TYPE_7__* %65, %struct.TYPE_8__* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %49
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %83

76:                                               ; preds = %49
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.pm8916_pon*, %struct.pm8916_pon** %4, align 8
  %79 = call i32 @platform_set_drvdata(%struct.platform_device* %77, %struct.pm8916_pon* %78)
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 @devm_of_platform_populate(%struct.TYPE_7__* %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %76, %71, %47, %31, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.pm8916_pon* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_reboot_mode_register(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm8916_pon*) #1

declare dso_local i32 @devm_of_platform_populate(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
