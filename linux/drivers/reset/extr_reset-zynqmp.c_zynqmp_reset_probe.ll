; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-zynqmp.c_zynqmp_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-zynqmp.c_zynqmp_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.zynqmp_reset_data = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zynqmp_reset_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ZYNQMP_NR_RESETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynqmp_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.zynqmp_reset_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.zynqmp_reset_data* @devm_kzalloc(%struct.TYPE_4__* %6, i32 32, i32 %7)
  store %struct.zynqmp_reset_data* %8, %struct.zynqmp_reset_data** %4, align 8
  %9 = load %struct.zynqmp_reset_data*, %struct.zynqmp_reset_data** %4, align 8
  %10 = icmp ne %struct.zynqmp_reset_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %55

14:                                               ; preds = %1
  %15 = call i32 (...) @zynqmp_pm_get_eemi_ops()
  %16 = load %struct.zynqmp_reset_data*, %struct.zynqmp_reset_data** %4, align 8
  %17 = getelementptr inbounds %struct.zynqmp_reset_data, %struct.zynqmp_reset_data* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.zynqmp_reset_data*, %struct.zynqmp_reset_data** %4, align 8
  %19 = getelementptr inbounds %struct.zynqmp_reset_data, %struct.zynqmp_reset_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.zynqmp_reset_data*, %struct.zynqmp_reset_data** %4, align 8
  %25 = getelementptr inbounds %struct.zynqmp_reset_data, %struct.zynqmp_reset_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @PTR_ERR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %55

28:                                               ; preds = %14
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.zynqmp_reset_data*, %struct.zynqmp_reset_data** %4, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.zynqmp_reset_data* %30)
  %32 = load %struct.zynqmp_reset_data*, %struct.zynqmp_reset_data** %4, align 8
  %33 = getelementptr inbounds %struct.zynqmp_reset_data, %struct.zynqmp_reset_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  store i32* @zynqmp_reset_ops, i32** %34, align 8
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = load %struct.zynqmp_reset_data*, %struct.zynqmp_reset_data** %4, align 8
  %37 = getelementptr inbounds %struct.zynqmp_reset_data, %struct.zynqmp_reset_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.zynqmp_reset_data*, %struct.zynqmp_reset_data** %4, align 8
  %44 = getelementptr inbounds %struct.zynqmp_reset_data, %struct.zynqmp_reset_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @ZYNQMP_NR_RESETS, align 4
  %47 = load %struct.zynqmp_reset_data*, %struct.zynqmp_reset_data** %4, align 8
  %48 = getelementptr inbounds %struct.zynqmp_reset_data, %struct.zynqmp_reset_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.zynqmp_reset_data*, %struct.zynqmp_reset_data** %4, align 8
  %53 = getelementptr inbounds %struct.zynqmp_reset_data, %struct.zynqmp_reset_data* %52, i32 0, i32 0
  %54 = call i32 @devm_reset_controller_register(%struct.TYPE_4__* %51, %struct.TYPE_5__* %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %28, %23, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.zynqmp_reset_data* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @zynqmp_pm_get_eemi_ops(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zynqmp_reset_data*) #1

declare dso_local i32 @devm_reset_controller_register(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
