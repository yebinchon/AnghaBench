; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_alienware_update_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_alienware_update_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_zone = type { i32, i32 }
%struct.acpi_buffer = type { %struct.wmax_led_args*, i8* }
%struct.wmax_led_args = type { i32, i64, i32, i32 }
%struct.legacy_led_args = type { i32, i64, i32, i32 }

@interface = common dso_local global i64 0, align 8
@WMAX = common dso_local global i64 0, align 8
@lighting_control_state = common dso_local global i64 0, align 8
@WMAX_CONTROL_GUID = common dso_local global i8* null, align 8
@WMAX_METHOD_ZONE_CONTROL = common dso_local global i32 0, align 4
@global_brightness = common dso_local global i32 0, align 4
@LEGACY_BOOTING = common dso_local global i64 0, align 8
@LEGACY_SUSPEND = common dso_local global i64 0, align 8
@LEGACY_POWER_CONTROL_GUID = common dso_local global i8* null, align 8
@LEGACY_CONTROL_GUID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"alienware-wmi: guid %s method %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"alienware-wmi: zone set failure: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_zone*)* @alienware_update_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alienware_update_led(%struct.platform_zone* %0) #0 {
  %2 = alloca %struct.platform_zone*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %struct.legacy_led_args, align 8
  %8 = alloca %struct.wmax_led_args, align 8
  store %struct.platform_zone* %0, %struct.platform_zone** %2, align 8
  %9 = load i64, i64* @interface, align 8
  %10 = load i64, i64* @WMAX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.platform_zone*, %struct.platform_zone** %2, align 8
  %14 = getelementptr inbounds %struct.platform_zone, %struct.platform_zone* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  %17 = getelementptr inbounds %struct.wmax_led_args, %struct.wmax_led_args* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.platform_zone*, %struct.platform_zone** %2, align 8
  %19 = getelementptr inbounds %struct.platform_zone, %struct.platform_zone* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.wmax_led_args, %struct.wmax_led_args* %8, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i64, i64* @lighting_control_state, align 8
  %23 = getelementptr inbounds %struct.wmax_led_args, %struct.wmax_led_args* %8, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = load i8*, i8** @WMAX_CONTROL_GUID, align 8
  store i8* %24, i8** %5, align 8
  %25 = load i32, i32* @WMAX_METHOD_ZONE_CONTROL, align 4
  store i32 %25, i32* %3, align 4
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i8* inttoptr (i64 24 to i8*), i8** %26, align 8
  %27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  store %struct.wmax_led_args* %8, %struct.wmax_led_args** %27, align 8
  br label %57

28:                                               ; preds = %1
  %29 = load %struct.platform_zone*, %struct.platform_zone** %2, align 8
  %30 = getelementptr inbounds %struct.platform_zone, %struct.platform_zone* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.legacy_led_args, %struct.legacy_led_args* %7, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @global_brightness, align 4
  %34 = getelementptr inbounds %struct.legacy_led_args, %struct.legacy_led_args* %7, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.legacy_led_args, %struct.legacy_led_args* %7, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* @lighting_control_state, align 8
  %37 = load i64, i64* @LEGACY_BOOTING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %28
  %40 = load i64, i64* @lighting_control_state, align 8
  %41 = load i64, i64* @LEGACY_SUSPEND, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %28
  %44 = load i8*, i8** @LEGACY_POWER_CONTROL_GUID, align 8
  store i8* %44, i8** %5, align 8
  %45 = load i64, i64* @lighting_control_state, align 8
  %46 = getelementptr inbounds %struct.legacy_led_args, %struct.legacy_led_args* %7, i32 0, i32 1
  store i64 %45, i64* %46, align 8
  br label %49

47:                                               ; preds = %39
  %48 = load i8*, i8** @LEGACY_CONTROL_GUID, align 8
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = load %struct.platform_zone*, %struct.platform_zone** %2, align 8
  %51 = getelementptr inbounds %struct.platform_zone, %struct.platform_zone* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  %54 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i8* inttoptr (i64 24 to i8*), i8** %54, align 8
  %55 = bitcast %struct.legacy_led_args* %7 to %struct.wmax_led_args*
  %56 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  store %struct.wmax_led_args* %55, %struct.wmax_led_args** %56, align 8
  br label %57

57:                                               ; preds = %49, %12
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %59)
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @wmi_evaluate_method(i8* %61, i32 0, i32 %62, %struct.acpi_buffer* %6, i32* null)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @ACPI_FAILURE(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %57
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ACPI_FAILURE(i32 %71)
  ret i32 %72
}

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

declare dso_local i32 @wmi_evaluate_method(i8*, i32, i32, %struct.acpi_buffer*, i32*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
