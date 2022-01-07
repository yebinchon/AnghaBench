; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_ns-thermal.c_ns_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_ns-thermal.c_ns_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ns_thermal = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ns_thermal_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ns_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ns_thermal*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ns_thermal* @devm_kzalloc(%struct.device* %8, i32 8, i32 %9)
  store %struct.ns_thermal* %10, %struct.ns_thermal** %5, align 8
  %11 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %12 = icmp ne %struct.ns_thermal* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_of_node(%struct.device* %17)
  %19 = call i32 @of_iomap(i32 %18, i32 0)
  %20 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %21 = getelementptr inbounds %struct.ns_thermal, %struct.ns_thermal* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %23 = getelementptr inbounds %struct.ns_thermal, %struct.ns_thermal* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %16
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %36 = call i32 @devm_thermal_zone_of_sensor_register(%struct.device* %34, i32 0, %struct.ns_thermal* %35, i32* @ns_thermal_ops)
  %37 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %38 = getelementptr inbounds %struct.ns_thermal, %struct.ns_thermal* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %40 = getelementptr inbounds %struct.ns_thermal, %struct.ns_thermal* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %46 = getelementptr inbounds %struct.ns_thermal, %struct.ns_thermal* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @iounmap(i32 %47)
  %49 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %50 = getelementptr inbounds %struct.ns_thermal, %struct.ns_thermal* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %33
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %56 = call i32 @platform_set_drvdata(%struct.platform_device* %54, %struct.ns_thermal* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %44, %30, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.ns_thermal* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_iomap(i32, i32) #1

declare dso_local i32 @dev_of_node(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @devm_thermal_zone_of_sensor_register(%struct.device*, i32, %struct.ns_thermal*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ns_thermal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
