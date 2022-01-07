; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi-led.c_dell_led_perform_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi-led.c_dell_led_perform_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.bios_args = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@DELL_LED_BIOS_GUID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @dell_led_perform_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dell_led_perform_fn(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.acpi_buffer, align 8
  %15 = alloca %struct.bios_args*, align 8
  %16 = alloca %struct.acpi_buffer, align 8
  %17 = alloca %union.acpi_object*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.bios_args, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = bitcast %struct.acpi_buffer* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
  %22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 0
  %23 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %20, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %20, i32 0, i32 1
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %20, i32 0, i32 2
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %20, i32 0, i32 3
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %20, i32 0, i32 4
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %20, i32 0, i32 5
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %20, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %20, i32 0, i32 7
  %38 = bitcast %struct.TYPE_2__* %37 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 8, i1 false)
  %39 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %16, i32 0, i32 0
  store i32 40, i32* %39, align 8
  %40 = bitcast %struct.bios_args* %20 to %union.acpi_object*
  %41 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %16, i32 0, i32 1
  store %union.acpi_object* %40, %union.acpi_object** %41, align 8
  %42 = load i32, i32* @DELL_LED_BIOS_GUID, align 4
  %43 = call i32 @wmi_evaluate_method(i32 %42, i32 0, i32 1, %struct.acpi_buffer* %16, %struct.acpi_buffer* %14)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %6
  %48 = load i32, i32* %18, align 4
  store i32 %48, i32* %7, align 4
  br label %80

49:                                               ; preds = %6
  %50 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 1
  %51 = load %union.acpi_object*, %union.acpi_object** %50, align 8
  store %union.acpi_object* %51, %union.acpi_object** %17, align 8
  %52 = load %union.acpi_object*, %union.acpi_object** %17, align 8
  %53 = icmp ne %union.acpi_object* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %80

57:                                               ; preds = %49
  %58 = load %union.acpi_object*, %union.acpi_object** %17, align 8
  %59 = bitcast %union.acpi_object* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %union.acpi_object*, %union.acpi_object** %17, align 8
  %65 = call i32 @kfree(%union.acpi_object* %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %80

68:                                               ; preds = %57
  %69 = load %union.acpi_object*, %union.acpi_object** %17, align 8
  %70 = bitcast %union.acpi_object* %69 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.bios_args*
  store %struct.bios_args* %73, %struct.bios_args** %15, align 8
  %74 = load %struct.bios_args*, %struct.bios_args** %15, align 8
  %75 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %19, align 4
  %77 = load %union.acpi_object*, %union.acpi_object** %17, align 8
  %78 = call i32 @kfree(%union.acpi_object* %77)
  %79 = load i32, i32* %19, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %68, %63, %54, %47
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wmi_evaluate_method(i32, i32, i32, %struct.acpi_buffer*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @kfree(%union.acpi_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
