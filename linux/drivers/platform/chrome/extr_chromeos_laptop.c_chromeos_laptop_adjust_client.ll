; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_laptop.c_chromeos_laptop_adjust_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_laptop.c_chromeos_laptop_adjust_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.acpi_peripheral* }
%struct.acpi_peripheral = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.acpi_device_id = type { i32 }

@cros_laptop = common dso_local global %struct.TYPE_2__* null, align 8
@ACPI_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to add properties: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @chromeos_laptop_adjust_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chromeos_laptop_adjust_client(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.acpi_peripheral*, align 8
  %5 = alloca [2 x %struct.acpi_device_id], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = bitcast [2 x %struct.acpi_device_id]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call i32 @has_acpi_companion(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %57, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cros_laptop, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %15
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cros_laptop, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.acpi_peripheral*, %struct.acpi_peripheral** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.acpi_peripheral, %struct.acpi_peripheral* %24, i64 %26
  store %struct.acpi_peripheral* %27, %struct.acpi_peripheral** %4, align 8
  %28 = getelementptr inbounds [2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* %5, i64 0, i64 0
  %29 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.acpi_peripheral*, %struct.acpi_peripheral** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_peripheral, %struct.acpi_peripheral* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ACPI_ID_LEN, align 4
  %35 = call i32 @memcpy(i32 %30, i32 %33, i32 %34)
  %36 = getelementptr inbounds [2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* %5, i64 0, i64 0
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i64 @acpi_match_device(%struct.acpi_device_id* %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %21
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load %struct.acpi_peripheral*, %struct.acpi_peripheral** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_peripheral, %struct.acpi_peripheral* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_add_properties(i32* %43, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %60

55:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %61

56:                                               ; preds = %21
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %15

60:                                               ; preds = %50, %15
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %55, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @has_acpi_companion(i32*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i64 @acpi_match_device(%struct.acpi_device_id*, i32*) #2

declare dso_local i32 @device_add_properties(i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
