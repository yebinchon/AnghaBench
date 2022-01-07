; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3-wmi.c_s3_wmi_query_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3-wmi.c_s3_wmi_query_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@s3_wmi_lock = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"query block returned object type: %d - buffer length:%d\0A\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @s3_wmi_query_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3_wmi_query_block(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %union.acpi_object*
  store %union.acpi_object* %14, %union.acpi_object** %11, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 2
  store i32 0, i32* %16, align 8
  store i32 0, i32* %10, align 4
  %17 = call i32 @mutex_lock(i32* @s3_wmi_lock)
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @wmi_query_block(i8* %18, i32 %19, %struct.acpi_buffer* %7)
  store i32 %20, i32* %8, align 4
  %21 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %22 = load %union.acpi_object*, %union.acpi_object** %21, align 8
  store %union.acpi_object* %22, %union.acpi_object** %9, align 8
  %23 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %24 = icmp ne %union.acpi_object* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %27 = bitcast %union.acpi_object* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %25, %3
  %32 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %33 = icmp ne %union.acpi_object* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %36 = bitcast %union.acpi_object* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %39 = bitcast %union.acpi_object* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  br label %49

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi i32 [ %47, %43 ], [ 0, %48 ]
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %50)
  br label %52

52:                                               ; preds = %49, %31
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %61

55:                                               ; preds = %25
  %56 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %57 = bitcast %union.acpi_object* %56 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %63 = call i32 @kfree(%union.acpi_object* %62)
  %64 = call i32 @mutex_unlock(i32* @s3_wmi_lock)
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wmi_query_block(i8*, i32, %struct.acpi_buffer*) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
