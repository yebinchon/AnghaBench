; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_register_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_register_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }

@GET_AUX0 = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i64 0, align 8
@SET_AUX0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"aux0\00", align 1
@aux0_show = common dso_local global i32 0, align 4
@aux0_store = common dso_local global i32* null, align 8
@AE_ERROR = common dso_local global i64 0, align 8
@GET_AUX1 = common dso_local global i32 0, align 4
@SET_AUX1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"aux1\00", align 1
@aux1_show = common dso_local global i32 0, align 4
@aux1_store = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"bios_enabled\00", align 1
@bios_enabled_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8*, i8**)* @intel_menlow_register_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_menlow_register_sensor(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.thermal_zone_device*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = bitcast %struct.thermal_zone_device** %12 to i8**
  %16 = call i32 @acpi_bus_get_private_data(i32 %14, i8** %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %115

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GET_AUX0, align 4
  %23 = call i64 @acpi_get_handle(i32 %21, i32 %22, i32* %11)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @ACPI_FAILURE(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @AE_NOT_FOUND, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @AE_OK, align 8
  br label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %10, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %5, align 8
  br label %115

37:                                               ; preds = %20
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SET_AUX0, align 4
  %40 = call i64 @acpi_get_handle(i32 %38, i32 %39, i32* %11)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @ACPI_FAILURE(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @AE_NOT_FOUND, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @AE_OK, align 8
  br label %52

50:                                               ; preds = %44
  %51 = load i64, i64* %10, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  store i64 %53, i64* %5, align 8
  br label %115

54:                                               ; preds = %37
  %55 = load i32, i32* @aux0_show, align 4
  %56 = load i32*, i32** @aux0_store, align 8
  %57 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %12, align 8
  %58 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %57, i32 0, i32 0
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @intel_menlow_add_one_attribute(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 420, i32 %55, i32* %56, i32* %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i64, i64* @AE_ERROR, align 8
  store i64 %64, i64* %5, align 8
  br label %115

65:                                               ; preds = %54
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @GET_AUX1, align 4
  %68 = call i64 @acpi_get_handle(i32 %66, i32 %67, i32* %11)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @ACPI_FAILURE(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %106

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SET_AUX1, align 4
  %76 = call i64 @acpi_get_handle(i32 %74, i32 %75, i32* %11)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i64 @ACPI_FAILURE(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %106

81:                                               ; preds = %73
  %82 = load i32, i32* @aux1_show, align 4
  %83 = load i32*, i32** @aux1_store, align 8
  %84 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %12, align 8
  %85 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %84, i32 0, i32 0
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @intel_menlow_add_one_attribute(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 420, i32 %82, i32* %83, i32* %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = call i32 (...) @intel_menlow_unregister_sensor()
  %92 = load i64, i64* @AE_ERROR, align 8
  store i64 %92, i64* %5, align 8
  br label %115

93:                                               ; preds = %81
  %94 = load i32, i32* @bios_enabled_show, align 4
  %95 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %12, align 8
  %96 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %95, i32 0, i32 0
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @intel_menlow_add_one_attribute(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %94, i32* null, i32* %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = call i32 (...) @intel_menlow_unregister_sensor()
  %103 = load i64, i64* @AE_ERROR, align 8
  store i64 %103, i64* %5, align 8
  br label %115

104:                                              ; preds = %93
  %105 = load i64, i64* @AE_OK, align 8
  store i64 %105, i64* %5, align 8
  br label %115

106:                                              ; preds = %80, %72
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @AE_NOT_FOUND, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i64, i64* @AE_OK, align 8
  store i64 %111, i64* %5, align 8
  br label %115

112:                                              ; preds = %106
  %113 = call i32 (...) @intel_menlow_unregister_sensor()
  %114 = load i64, i64* %10, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %112, %110, %104, %101, %90, %63, %52, %35, %19
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i32 @acpi_bus_get_private_data(i32, i8**) #1

declare dso_local i64 @acpi_get_handle(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @intel_menlow_add_one_attribute(i8*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @intel_menlow_unregister_sensor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
