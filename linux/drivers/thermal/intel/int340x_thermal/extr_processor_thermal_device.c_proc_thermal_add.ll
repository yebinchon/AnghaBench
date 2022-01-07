; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_processor_thermal_device.c_proc_thermal_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_processor_thermal_device.c_proc_thermal_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device_ops = type { i32 }
%struct.device = type { i32 }
%struct.proc_thermal_device = type { i32, %struct.acpi_device*, %struct.device* }
%struct.acpi_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_TMP\00", align 1
@stored_tjmax = common dso_local global i64 0, align 8
@proc_thermal_local_ops = common dso_local global %struct.thermal_zone_device_ops zeroinitializer, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@proc_thermal_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.proc_thermal_device**)* @proc_thermal_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_thermal_add(%struct.device* %0, %struct.proc_thermal_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.proc_thermal_device**, align 8
  %6 = alloca %struct.proc_thermal_device*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.thermal_zone_device_ops*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.proc_thermal_device** %1, %struct.proc_thermal_device*** %5, align 8
  store %struct.thermal_zone_device_ops* null, %struct.thermal_zone_device_ops** %10, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %12)
  store %struct.acpi_device* %13, %struct.acpi_device** %7, align 8
  %14 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %15 = icmp ne %struct.acpi_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %93

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.proc_thermal_device* @devm_kzalloc(%struct.device* %20, i32 24, i32 %21)
  store %struct.proc_thermal_device* %22, %struct.proc_thermal_device** %6, align 8
  %23 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %24 = icmp ne %struct.proc_thermal_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %93

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %31 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %30, i32 0, i32 2
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %33 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %34 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %33, i32 0, i32 1
  store %struct.acpi_device* %32, %struct.acpi_device** %34, align 8
  %35 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %36 = load %struct.proc_thermal_device**, %struct.proc_thermal_device*** %5, align 8
  store %struct.proc_thermal_device* %35, %struct.proc_thermal_device** %36, align 8
  %37 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %38 = call i32 @proc_thermal_read_ppcc(%struct.proc_thermal_device* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %3, align 4
  br label %93

43:                                               ; preds = %28
  %44 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %45 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @acpi_evaluate_integer(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %9)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @ACPI_FAILURE(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = call i64 (...) @get_tjmax()
  store i64 %52, i64* @stored_tjmax, align 8
  %53 = load i64, i64* @stored_tjmax, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store %struct.thermal_zone_device_ops* @proc_thermal_local_ops, %struct.thermal_zone_device_ops** %10, align 8
  br label %56

56:                                               ; preds = %55, %51
  br label %57

57:                                               ; preds = %56, %43
  %58 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %59 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %10, align 8
  %60 = call i32 @int340x_thermal_zone_add(%struct.acpi_device* %58, %struct.thermal_zone_device_ops* %59)
  %61 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %62 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %64 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %70 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %3, align 4
  br label %93

73:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %76 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %79 = load i32, i32* @proc_thermal_notify, align 4
  %80 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %81 = bitcast %struct.proc_thermal_device* %80 to i8*
  %82 = call i32 @acpi_install_notify_handler(i32 %77, i32 %78, i32 %79, i8* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %87

86:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %93

87:                                               ; preds = %85
  %88 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %89 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @int340x_thermal_zone_remove(i32 %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %87, %86, %68, %41, %25, %16
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local %struct.proc_thermal_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @proc_thermal_read_ppcc(%struct.proc_thermal_device*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @get_tjmax(...) #1

declare dso_local i32 @int340x_thermal_zone_add(%struct.acpi_device*, %struct.thermal_zone_device_ops*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, i8*) #1

declare dso_local i32 @int340x_thermal_zone_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
