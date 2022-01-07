; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-sci.c_ti_sci_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-sci.c_ti_sci_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ti_sci_reset_data = type { %struct.TYPE_4__, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ti_sci_reset_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ti_sci_reset_of_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_sci_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ti_sci_reset_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ti_sci_reset_data* @devm_kzalloc(%struct.TYPE_5__* %15, i32 56, i32 %16)
  store %struct.ti_sci_reset_data* %17, %struct.ti_sci_reset_data** %4, align 8
  %18 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %19 = icmp ne %struct.ti_sci_reset_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %74

23:                                               ; preds = %13
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @devm_ti_sci_get_handle(%struct.TYPE_5__* %25)
  %27 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %28 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %30 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %36 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %74

39:                                               ; preds = %23
  %40 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %41 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i32* @ti_sci_reset_ops, i32** %42, align 8
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %45 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %52 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i64 %50, i64* %53, align 8
  %54 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %55 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 2, i32* %56, align 8
  %57 = load i32, i32* @ti_sci_reset_of_xlate, align 4
  %58 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %59 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %64 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %63, i32 0, i32 2
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %66 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %65, i32 0, i32 1
  %67 = call i32 @idr_init(i32* %66)
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %70 = call i32 @platform_set_drvdata(%struct.platform_device* %68, %struct.ti_sci_reset_data* %69)
  %71 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %4, align 8
  %72 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %71, i32 0, i32 0
  %73 = call i32 @reset_controller_register(%struct.TYPE_4__* %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %39, %34, %20, %10
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.ti_sci_reset_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @devm_ti_sci_get_handle(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ti_sci_reset_data*) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
