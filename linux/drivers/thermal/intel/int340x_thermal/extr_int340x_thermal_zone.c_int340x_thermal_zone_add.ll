; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_zone_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_zone_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int34x_thermal_zone = type { i64, %struct.int34x_thermal_zone*, i32, i32, %struct.thermal_zone_device_ops*, %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.thermal_zone_device_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PATC\00", align 1
@int340x_thermal_zone_ops = common dso_local global i32 0, align 4
@int340x_thermal_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.int34x_thermal_zone* @int340x_thermal_zone_add(%struct.acpi_device* %0, %struct.thermal_zone_device_ops* %1) #0 {
  %3 = alloca %struct.int34x_thermal_zone*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.thermal_zone_device_ops*, align 8
  %6 = alloca %struct.int34x_thermal_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store %struct.thermal_zone_device_ops* %1, %struct.thermal_zone_device_ops** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.int34x_thermal_zone* @kzalloc(i32 40, i32 %11)
  store %struct.int34x_thermal_zone* %12, %struct.int34x_thermal_zone** %6, align 8
  %13 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %14 = icmp ne %struct.int34x_thermal_zone* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.int34x_thermal_zone* @ERR_PTR(i32 %17)
  store %struct.int34x_thermal_zone* %18, %struct.int34x_thermal_zone** %3, align 8
  br label %97

19:                                               ; preds = %2
  %20 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %21 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %22 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %21, i32 0, i32 5
  store %struct.acpi_device* %20, %struct.acpi_device** %22, align 8
  %23 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %5, align 8
  %24 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %25 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %24, i32 0, i32 4
  store %struct.thermal_zone_device_ops* %23, %struct.thermal_zone_device_ops** %25, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @acpi_evaluate_integer(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %8)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  br label %54

34:                                               ; preds = %19
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.int34x_thermal_zone* @kcalloc(i64 %35, i32 40, i32 %36)
  %38 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %39 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %38, i32 0, i32 1
  store %struct.int34x_thermal_zone* %37, %struct.int34x_thermal_zone** %39, align 8
  %40 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %41 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %40, i32 0, i32 1
  %42 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %41, align 8
  %43 = icmp ne %struct.int34x_thermal_zone* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %92

47:                                               ; preds = %34
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @BIT(i64 %48)
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %53 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %33
  %55 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %56 = call i64 @int340x_thermal_read_trips(%struct.int34x_thermal_zone* %55)
  store i64 %56, i64* %8, align 8
  %57 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %58 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @acpi_lpat_get_conversion_table(i32 %59)
  %61 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %62 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %64 = call i32 @acpi_device_bid(%struct.acpi_device* %63)
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %68 = call i32 @thermal_zone_device_register(i32 %64, i64 %65, i32 %66, %struct.int34x_thermal_zone* %67, i32* @int340x_thermal_zone_ops, i32* @int340x_thermal_params, i32 0, i32 0)
  %69 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %70 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %72 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %54
  %77 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %78 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %10, align 4
  br label %83

81:                                               ; preds = %54
  %82 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  store %struct.int34x_thermal_zone* %82, %struct.int34x_thermal_zone** %3, align 8
  br label %97

83:                                               ; preds = %76
  %84 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %85 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @acpi_lpat_free_conversion_table(i32 %86)
  %88 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %89 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %88, i32 0, i32 1
  %90 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %89, align 8
  %91 = call i32 @kfree(%struct.int34x_thermal_zone* %90)
  br label %92

92:                                               ; preds = %83, %44
  %93 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %94 = call i32 @kfree(%struct.int34x_thermal_zone* %93)
  %95 = load i32, i32* %10, align 4
  %96 = call %struct.int34x_thermal_zone* @ERR_PTR(i32 %95)
  store %struct.int34x_thermal_zone* %96, %struct.int34x_thermal_zone** %3, align 8
  br label %97

97:                                               ; preds = %92, %81, %15
  %98 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %3, align 8
  ret %struct.int34x_thermal_zone* %98
}

declare dso_local %struct.int34x_thermal_zone* @kzalloc(i32, i32) #1

declare dso_local %struct.int34x_thermal_zone* @ERR_PTR(i32) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.int34x_thermal_zone* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @int340x_thermal_read_trips(%struct.int34x_thermal_zone*) #1

declare dso_local i32 @acpi_lpat_get_conversion_table(i32) #1

declare dso_local i32 @thermal_zone_device_register(i32, i64, i32, %struct.int34x_thermal_zone*, i32*, i32*, i32, i32) #1

declare dso_local i32 @acpi_device_bid(%struct.acpi_device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @acpi_lpat_free_conversion_table(i32) #1

declare dso_local i32 @kfree(%struct.int34x_thermal_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
