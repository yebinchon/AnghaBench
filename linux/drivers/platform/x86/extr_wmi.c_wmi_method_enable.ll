; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_method_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_method_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_block = type { %struct.TYPE_2__*, %struct.guid_block }
%struct.TYPE_2__ = type { i32 }
%struct.guid_block = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"WE%02X\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wmi_block*, i32)* @wmi_method_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wmi_method_enable(%struct.wmi_block* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.wmi_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.guid_block*, align 8
  %7 = alloca [5 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.wmi_block* %0, %struct.wmi_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.guid_block* null, %struct.guid_block** %6, align 8
  %10 = load %struct.wmi_block*, %struct.wmi_block** %4, align 8
  %11 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %10, i32 0, i32 1
  store %struct.guid_block* %11, %struct.guid_block** %6, align 8
  %12 = load %struct.wmi_block*, %struct.wmi_block** %4, align 8
  %13 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %18 = load %struct.guid_block*, %struct.guid_block** %6, align 8
  %19 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snprintf(i8* %17, i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @acpi_execute_simple_method(i32 %22, i8* %23, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @AE_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @AE_NOT_FOUND, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %3, align 8
  br label %37

35:                                               ; preds = %29, %2
  %36 = load i64, i64* @AE_OK, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @acpi_execute_simple_method(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
