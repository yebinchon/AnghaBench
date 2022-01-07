; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-vbtn.c_detect_tablet_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-vbtn.c_detect_tablet_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.intel_vbtn_priv = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_2__ = type { i32 }

@DMI_CHASSIS_TYPE = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"31\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"VGBS\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@TABLET_MODE_FLAG = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@DOCK_MODE_FLAG = common dso_local global i32 0, align 4
@SW_DOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @detect_tablet_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_tablet_mode(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.intel_vbtn_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %10 = load i32, i32* @DMI_CHASSIS_TYPE, align 4
  %11 = call i8* @dmi_get_system_info(i32 %10)
  store i8* %11, i8** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.intel_vbtn_priv* @dev_get_drvdata(i32* %13)
  store %struct.intel_vbtn_priv* %14, %struct.intel_vbtn_priv** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @ACPI_HANDLE(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %19 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %union.acpi_object*
  store %union.acpi_object* %21, %union.acpi_object** %18, align 8
  %22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %1
  br label %81

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @acpi_evaluate_object(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @ACPI_FAILURE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %81

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %40 = load %union.acpi_object*, %union.acpi_object** %39, align 8
  store %union.acpi_object* %40, %union.acpi_object** %7, align 8
  %41 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %42 = icmp ne %union.acpi_object* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %45 = bitcast %union.acpi_object* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %38
  br label %81

50:                                               ; preds = %43
  %51 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %52 = bitcast %union.acpi_object* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TABLET_MODE_FLAG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load %struct.intel_vbtn_priv*, %struct.intel_vbtn_priv** %4, align 8
  %61 = getelementptr inbounds %struct.intel_vbtn_priv, %struct.intel_vbtn_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SW_TABLET_MODE, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @input_report_switch(i32 %62, i32 %63, i32 %64)
  %66 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %67 = bitcast %union.acpi_object* %66 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DOCK_MODE_FLAG, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  store i32 %74, i32* %9, align 4
  %75 = load %struct.intel_vbtn_priv*, %struct.intel_vbtn_priv** %4, align 8
  %76 = getelementptr inbounds %struct.intel_vbtn_priv, %struct.intel_vbtn_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SW_DOCK, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @input_report_switch(i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %50, %49, %37, %30
  %82 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %83 = load %union.acpi_object*, %union.acpi_object** %82, align 8
  %84 = call i32 @kfree(%union.acpi_object* %83)
  ret void
}

declare dso_local i8* @dmi_get_system_info(i32) #1

declare dso_local %struct.intel_vbtn_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ACPI_HANDLE(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
