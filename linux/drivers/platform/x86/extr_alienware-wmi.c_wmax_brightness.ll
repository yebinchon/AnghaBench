; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_wmax_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_wmax_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { %struct.wmax_brightness_args*, i64 }
%struct.wmax_brightness_args = type { i32, i32 }

@WMAX_CONTROL_GUID = common dso_local global i32 0, align 4
@WMAX_METHOD_BRIGHTNESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"alienware-wmi: brightness set failure: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wmax_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmax_brightness(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_buffer, align 8
  %5 = alloca %struct.wmax_brightness_args, align 4
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds %struct.wmax_brightness_args, %struct.wmax_brightness_args* %5, i32 0, i32 0
  store i32 255, i32* %6, align 4
  %7 = getelementptr inbounds %struct.wmax_brightness_args, %struct.wmax_brightness_args* %5, i32 0, i32 1
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  store i64 8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  store %struct.wmax_brightness_args* %5, %struct.wmax_brightness_args** %10, align 8
  %11 = load i32, i32* @WMAX_CONTROL_GUID, align 4
  %12 = load i32, i32* @WMAX_METHOD_BRIGHTNESS, align 4
  %13 = call i32 @wmi_evaluate_method(i32 %11, i32 0, i32 %12, %struct.acpi_buffer* %4, i32* null)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ACPI_FAILURE(i32 %21)
  ret i32 %22
}

declare dso_local i32 @wmi_evaluate_method(i32, i32, i32, %struct.acpi_buffer*, i32*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
