; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_huawei-wmi.c_huawei_wmi_micmute_led_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_huawei-wmi.c_huawei_wmi_micmute_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.huawei_wmi_priv = type { i32, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SPIN\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"WPIN\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @huawei_wmi_micmute_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huawei_wmi_micmute_led_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.huawei_wmi_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x %union.acpi_object], align 4
  %9 = alloca %struct.acpi_object_list, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %11 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.huawei_wmi_priv* @dev_get_drvdata(i32 %14)
  store %struct.huawei_wmi_priv* %15, %struct.huawei_wmi_priv** %6, align 8
  %16 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 0
  %17 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(%union.acpi_object* %17)
  store i32 %18, i32* %16, align 8
  %19 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 1
  %20 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 0
  store %union.acpi_object* %20, %union.acpi_object** %19, align 8
  %21 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %22 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 2
  %23 = bitcast %union.acpi_object* %22 to i32*
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 1
  %25 = bitcast %union.acpi_object* %24 to i32*
  store i32 %21, i32* %25, align 4
  %26 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 0
  %27 = bitcast %union.acpi_object* %26 to i32*
  store i32 %21, i32* %27, align 4
  %28 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 1
  %29 = bitcast %union.acpi_object* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 4, i32* %30, align 4
  %31 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %6, align 8
  %32 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strcmp(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %2
  %37 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 0
  %38 = bitcast %union.acpi_object* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 2
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %68

47:                                               ; preds = %2
  %48 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %6, align 8
  %49 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strcmp(i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 0
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 0, i32 1
  %61 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 2
  %62 = bitcast %union.acpi_object* %61 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %67

64:                                               ; preds = %47
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %83

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %6, align 8
  %70 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %6, align 8
  %73 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @acpi_evaluate_object(i32 %71, i32 %74, %struct.acpi_object_list* %9, i32* null)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @ACPI_FAILURE(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32, i32* @ENXIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %83

82:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %79, %64
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.huawei_wmi_priv* @dev_get_drvdata(i32) #1

declare dso_local i32 @ARRAY_SIZE(%union.acpi_object*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i32, %struct.acpi_object_list*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
