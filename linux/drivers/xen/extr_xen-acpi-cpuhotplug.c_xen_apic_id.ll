; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-cpuhotplug.c_xen_apic_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-cpuhotplug.c_xen_apic_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { %union.acpi_object*, i64, i32*, i64 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.acpi_madt_local_apic = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"_MAT\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_MADT_TYPE_LOCAL_APIC = common dso_local global i64 0, align 8
@ACPI_MADT_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xen_apic_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_apic_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_buffer, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %struct.acpi_madt_local_apic*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %9 = load i64, i64* @ACPI_ALLOCATE_BUFFER, align 8
  %10 = inttoptr i64 %9 to %union.acpi_object*
  store %union.acpi_object* %10, %union.acpi_object** %8, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 2
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @acpi_evaluate_object(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %4)
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %90

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %27 = load %union.acpi_object*, %union.acpi_object** %26, align 8
  %28 = icmp ne %union.acpi_object* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %90

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %34 = load %union.acpi_object*, %union.acpi_object** %33, align 8
  store %union.acpi_object* %34, %union.acpi_object** %5, align 8
  %35 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %36 = bitcast %union.acpi_object* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 24
  br i1 %46, label %47, label %53

47:                                               ; preds = %40, %32
  %48 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %49 = load %union.acpi_object*, %union.acpi_object** %48, align 8
  %50 = call i32 @kfree(%union.acpi_object* %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %90

53:                                               ; preds = %40
  %54 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.acpi_madt_local_apic*
  store %struct.acpi_madt_local_apic* %58, %struct.acpi_madt_local_apic** %6, align 8
  %59 = load %struct.acpi_madt_local_apic*, %struct.acpi_madt_local_apic** %6, align 8
  %60 = getelementptr inbounds %struct.acpi_madt_local_apic, %struct.acpi_madt_local_apic* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ACPI_MADT_TYPE_LOCAL_APIC, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %53
  %66 = load %struct.acpi_madt_local_apic*, %struct.acpi_madt_local_apic** %6, align 8
  %67 = getelementptr inbounds %struct.acpi_madt_local_apic, %struct.acpi_madt_local_apic* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ACPI_MADT_ENABLED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %65, %53
  %73 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %74 = load %union.acpi_object*, %union.acpi_object** %73, align 8
  %75 = call i32 @kfree(%union.acpi_object* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %90

78:                                               ; preds = %65
  %79 = load %struct.acpi_madt_local_apic*, %struct.acpi_madt_local_apic** %6, align 8
  %80 = getelementptr inbounds %struct.acpi_madt_local_apic, %struct.acpi_madt_local_apic* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %7, align 4
  %83 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %84 = load %union.acpi_object*, %union.acpi_object** %83, align 8
  %85 = call i32 @kfree(%union.acpi_object* %84)
  %86 = load i64, i64* @ACPI_ALLOCATE_BUFFER, align 8
  %87 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  %88 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  store %union.acpi_object* null, %union.acpi_object** %88, align 8
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %78, %72, %47, %29, %18
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
