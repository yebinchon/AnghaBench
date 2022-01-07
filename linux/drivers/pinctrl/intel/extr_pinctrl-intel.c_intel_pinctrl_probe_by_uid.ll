; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_pinctrl_probe_by_uid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_pinctrl_probe_by_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64, i32 }
%struct.intel_pinctrl_soc_data = type { i32 }
%struct.acpi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device_id = type { i64 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_pinctrl_probe_by_uid(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_pinctrl_soc_data*, align 8
  %5 = alloca %struct.intel_pinctrl_soc_data**, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.platform_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.intel_pinctrl_soc_data* null, %struct.intel_pinctrl_soc_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = call %struct.acpi_device* @ACPI_COMPANION(i32* %11)
  store %struct.acpi_device* %12, %struct.acpi_device** %6, align 8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %14 = icmp ne %struct.acpi_device* %13, null
  br i1 %14, label %15, label %53

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = call i8* @device_get_match_data(i32* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.intel_pinctrl_soc_data**
  store %struct.intel_pinctrl_soc_data** %20, %struct.intel_pinctrl_soc_data*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %49, %15
  %22 = load %struct.intel_pinctrl_soc_data**, %struct.intel_pinctrl_soc_data*** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %22, i64 %24
  %26 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %25, align 8
  %27 = icmp ne %struct.intel_pinctrl_soc_data* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %21
  %29 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.intel_pinctrl_soc_data**, %struct.intel_pinctrl_soc_data*** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %33, i64 %35
  %37 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %36, align 8
  %38 = getelementptr inbounds %struct.intel_pinctrl_soc_data, %struct.intel_pinctrl_soc_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcmp(i32 %32, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %28
  %43 = load %struct.intel_pinctrl_soc_data**, %struct.intel_pinctrl_soc_data*** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %43, i64 %45
  %47 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %46, align 8
  store %struct.intel_pinctrl_soc_data* %47, %struct.intel_pinctrl_soc_data** %4, align 8
  br label %52

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %21

52:                                               ; preds = %42, %21
  br label %72

53:                                               ; preds = %1
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %54)
  store %struct.platform_device_id* %55, %struct.platform_device_id** %9, align 8
  %56 = load %struct.platform_device_id*, %struct.platform_device_id** %9, align 8
  %57 = icmp ne %struct.platform_device_id* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %76

61:                                               ; preds = %53
  %62 = load %struct.platform_device_id*, %struct.platform_device_id** %9, align 8
  %63 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.intel_pinctrl_soc_data**
  store %struct.intel_pinctrl_soc_data** %65, %struct.intel_pinctrl_soc_data*** %5, align 8
  %66 = load %struct.intel_pinctrl_soc_data**, %struct.intel_pinctrl_soc_data*** %5, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %66, i64 %69
  %71 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %70, align 8
  store %struct.intel_pinctrl_soc_data* %71, %struct.intel_pinctrl_soc_data** %4, align 8
  br label %72

72:                                               ; preds = %61, %52
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %4, align 8
  %75 = call i32 @intel_pinctrl_probe(%struct.platform_device* %73, %struct.intel_pinctrl_soc_data* %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %58
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i8* @device_get_match_data(i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @intel_pinctrl_probe(%struct.platform_device*, %struct.intel_pinctrl_soc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
