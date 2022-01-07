; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-wmi.c_msi_wmi_query_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-wmi.c_msi_wmi_query_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { i64 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@MSIWMI_BIOS_GUID = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"query block returned object type: %d - buffer length:%d\0A\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @msi_wmi_query_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_wmi_query_block(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.acpi_buffer, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %10 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %union.acpi_object*
  store %union.acpi_object* %12, %union.acpi_object** %9, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* @MSIWMI_BIOS_GUID, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @wmi_query_block(i32 %15, i32 %16, %struct.acpi_buffer* %8)
  store i32 %17, i32* %6, align 4
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %19 = load %union.acpi_object*, %union.acpi_object** %18, align 8
  store %union.acpi_object* %19, %union.acpi_object** %7, align 8
  %20 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %21 = icmp ne %union.acpi_object* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %24 = bitcast %union.acpi_object* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22, %2
  %29 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %30 = icmp ne %union.acpi_object* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %33 = bitcast %union.acpi_object* %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %36 = bitcast %union.acpi_object* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  br label %46

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i32 [ %44, %40 ], [ 0, %45 ]
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %47)
  br label %49

49:                                               ; preds = %46, %28
  %50 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %51 = call i32 @kfree(%union.acpi_object* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %22
  %55 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %56 = bitcast %union.acpi_object* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %61 = call i32 @kfree(%union.acpi_object* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %49
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @wmi_query_block(i32, i32, %struct.acpi_buffer*) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
