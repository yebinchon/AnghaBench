; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_parse_hpx3_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_parse_hpx3_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpx_type3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpx_type3*, %union.acpi_object*)* @parse_hpx3_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_hpx3_register(%struct.hpx_type3* %0, %union.acpi_object* %1) #0 {
  %3 = alloca %struct.hpx_type3*, align 8
  %4 = alloca %union.acpi_object*, align 8
  store %struct.hpx_type3* %0, %struct.hpx_type3** %3, align 8
  store %union.acpi_object* %1, %union.acpi_object** %4, align 8
  %5 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %6 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %5, i64 0
  %7 = bitcast %union.acpi_object* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %11 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 4
  %12 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %13 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %12, i64 1
  %14 = bitcast %union.acpi_object* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %18 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %17, i32 0, i32 12
  store i32 %16, i32* %18, align 4
  %19 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %20 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %19, i64 2
  %21 = bitcast %union.acpi_object* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %25 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 4
  %26 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %27 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %26, i64 3
  %28 = bitcast %union.acpi_object* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %32 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %34 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %33, i64 4
  %35 = bitcast %union.acpi_object* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %39 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %41 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %40, i64 5
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %46 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %48 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %47, i64 6
  %49 = bitcast %union.acpi_object* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %53 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %55 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %54, i64 7
  %56 = bitcast %union.acpi_object* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %60 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %62 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %61, i64 8
  %63 = bitcast %union.acpi_object* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %67 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %69 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %68, i64 9
  %70 = bitcast %union.acpi_object* %69 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %74 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %76 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %75, i64 10
  %77 = bitcast %union.acpi_object* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %81 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %83 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %82, i64 11
  %84 = bitcast %union.acpi_object* %83 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %88 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %90 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %89, i64 12
  %91 = bitcast %union.acpi_object* %90 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %95 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %97 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %96, i64 13
  %98 = bitcast %union.acpi_object* %97 to %struct.TYPE_2__*
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hpx_type3*, %struct.hpx_type3** %3, align 8
  %102 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
