; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_gsensor_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_gsensor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, %union.acpi_object* }
%union.acpi_object = type { i32 }

@gsensor_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_INI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @acer_gsensor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acer_gsensor_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_buffer, align 8
  %4 = alloca %union.acpi_object, align 4
  %5 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 0
  store i32 4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 1
  store %union.acpi_object* %4, %union.acpi_object** %6, align 8
  %7 = load i32, i32* @gsensor_handle, align 4
  %8 = call i32 @acpi_evaluate_object(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %3)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @ACPI_FAILURE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %14

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
