; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_query_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_query_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32 }
%struct.wmi_block = type { i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_query_block(i8* %0, i32 %1, %struct.acpi_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_buffer*, align 8
  %8 = alloca %struct.wmi_block*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.acpi_buffer* %2, %struct.acpi_buffer** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %12, i32* %4, align 4
  br label %24

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @find_guid(i8* %14, %struct.wmi_block** %8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @AE_ERROR, align 4
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %13
  %20 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %23 = call i32 @__query_block(%struct.wmi_block* %20, i32 %21, %struct.acpi_buffer* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %17, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @find_guid(i8*, %struct.wmi_block**) #1

declare dso_local i32 @__query_block(%struct.wmi_block*, i32, %struct.acpi_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
