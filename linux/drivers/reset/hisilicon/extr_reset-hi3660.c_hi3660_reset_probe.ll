; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/hisilicon/extr_reset-hi3660.c_hi3660_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/hisilicon/extr_reset-hi3660.c_hi3660_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.hi3660_reset_controller = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.device_node*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"hisi,rst-syscon\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to get hi3660,rst-syscon\0A\00", align 1
@hi3660_reset_ops = common dso_local global i32 0, align 4
@hi3660_reset_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi3660_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3660_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hi3660_reset_controller*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hi3660_reset_controller* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.hi3660_reset_controller* %15, %struct.hi3660_reset_controller** %4, align 8
  %16 = load %struct.hi3660_reset_controller*, %struct.hi3660_reset_controller** %4, align 8
  %17 = icmp ne %struct.hi3660_reset_controller* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %56

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.hi3660_reset_controller*, %struct.hi3660_reset_controller** %4, align 8
  %25 = getelementptr inbounds %struct.hi3660_reset_controller, %struct.hi3660_reset_controller* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.hi3660_reset_controller*, %struct.hi3660_reset_controller** %4, align 8
  %27 = getelementptr inbounds %struct.hi3660_reset_controller, %struct.hi3660_reset_controller* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.hi3660_reset_controller*, %struct.hi3660_reset_controller** %4, align 8
  %35 = getelementptr inbounds %struct.hi3660_reset_controller, %struct.hi3660_reset_controller* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %56

38:                                               ; preds = %21
  %39 = load %struct.hi3660_reset_controller*, %struct.hi3660_reset_controller** %4, align 8
  %40 = getelementptr inbounds %struct.hi3660_reset_controller, %struct.hi3660_reset_controller* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32* @hi3660_reset_ops, i32** %41, align 8
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = load %struct.hi3660_reset_controller*, %struct.hi3660_reset_controller** %4, align 8
  %44 = getelementptr inbounds %struct.hi3660_reset_controller, %struct.hi3660_reset_controller* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store %struct.device_node* %42, %struct.device_node** %45, align 8
  %46 = load %struct.hi3660_reset_controller*, %struct.hi3660_reset_controller** %4, align 8
  %47 = getelementptr inbounds %struct.hi3660_reset_controller, %struct.hi3660_reset_controller* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 2, i32* %48, align 8
  %49 = load i32, i32* @hi3660_reset_xlate, align 4
  %50 = load %struct.hi3660_reset_controller*, %struct.hi3660_reset_controller** %4, align 8
  %51 = getelementptr inbounds %struct.hi3660_reset_controller, %struct.hi3660_reset_controller* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.hi3660_reset_controller*, %struct.hi3660_reset_controller** %4, align 8
  %54 = getelementptr inbounds %struct.hi3660_reset_controller, %struct.hi3660_reset_controller* %53, i32 0, i32 0
  %55 = call i32 @reset_controller_register(%struct.TYPE_2__* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %38, %31, %18
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.hi3660_reset_controller* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
