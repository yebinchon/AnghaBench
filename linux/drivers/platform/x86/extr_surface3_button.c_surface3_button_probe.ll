; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3_button.c_surface3_button_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3_button.c_surface3_button_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.surface3_button_data = type { %struct.platform_device** }
%struct.platform_device = type { i32 }

@SURFACE_BUTTON_OBJ_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no GPIO attached, ignoring...\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUTTON_TYPES = common dso_local global i32 0, align 4
@surface3_button_surface3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @surface3_button_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface3_button_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.surface3_button_data*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 @ACPI_COMPANION(%struct.device* %14)
  %16 = call i32 @acpi_device_bid(i32 %15)
  %17 = load i32, i32* @SURFACE_BUTTON_OBJ_NAME, align 4
  %18 = load i32, i32* @SURFACE_BUTTON_OBJ_NAME, align 4
  %19 = call i32 @strlen(i32 %18)
  %20 = call i64 @strncmp(i32 %16, i32 %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %102

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @gpiod_count(%struct.device* %26, i32* null)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %102

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.surface3_button_data* @devm_kzalloc(%struct.device* %35, i32 8, i32 %36)
  store %struct.surface3_button_data* %37, %struct.surface3_button_data** %7, align 8
  %38 = load %struct.surface3_button_data*, %struct.surface3_button_data** %7, align 8
  %39 = icmp ne %struct.surface3_button_data* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %102

43:                                               ; preds = %34
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load %struct.surface3_button_data*, %struct.surface3_button_data** %7, align 8
  %46 = call i32 @i2c_set_clientdata(%struct.i2c_client* %44, %struct.surface3_button_data* %45)
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %81, %43
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @BUTTON_TYPES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load i32, i32* @surface3_button_surface3, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call %struct.platform_device* @surface3_button_device_create(%struct.i2c_client* %52, i32 %53, i32 %56)
  store %struct.platform_device* %57, %struct.platform_device** %8, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %59 = call i64 @IS_ERR(%struct.platform_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %51
  %62 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %63 = call i32 @PTR_ERR(%struct.platform_device* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = call i32 @surface3_button_remove(%struct.i2c_client* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %102

72:                                               ; preds = %61
  br label %81

73:                                               ; preds = %51
  %74 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %75 = load %struct.surface3_button_data*, %struct.surface3_button_data** %7, align 8
  %76 = getelementptr inbounds %struct.surface3_button_data, %struct.surface3_button_data* %75, i32 0, i32 0
  %77 = load %struct.platform_device**, %struct.platform_device*** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %77, i64 %79
  store %struct.platform_device* %74, %struct.platform_device** %80, align 8
  br label %81

81:                                               ; preds = %73, %72
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %47

84:                                               ; preds = %47
  %85 = load %struct.surface3_button_data*, %struct.surface3_button_data** %7, align 8
  %86 = getelementptr inbounds %struct.surface3_button_data, %struct.surface3_button_data* %85, i32 0, i32 0
  %87 = load %struct.platform_device**, %struct.platform_device*** %86, align 8
  %88 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %87, i64 0
  %89 = load %struct.platform_device*, %struct.platform_device** %88, align 8
  %90 = icmp ne %struct.platform_device* %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %84
  %92 = load %struct.surface3_button_data*, %struct.surface3_button_data** %7, align 8
  %93 = getelementptr inbounds %struct.surface3_button_data, %struct.surface3_button_data* %92, i32 0, i32 0
  %94 = load %struct.platform_device**, %struct.platform_device*** %93, align 8
  %95 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %94, i64 1
  %96 = load %struct.platform_device*, %struct.platform_device** %95, align 8
  %97 = icmp ne %struct.platform_device* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %91, %84
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %98, %68, %40, %30, %22
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @acpi_device_bid(i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @gpiod_count(%struct.device*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.surface3_button_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.surface3_button_data*) #1

declare dso_local %struct.platform_device* @surface3_button_device_create(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @surface3_button_remove(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
