; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_pci_acpi_optimize_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_pci_acpi_optimize_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_host_bridge = type { i64 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %union.acpi_object* }
%struct.TYPE_4__ = type { i64 }

@pci_acpi_dsm_guid = common dso_local global i32 0, align 4
@FUNCTION_DELAY_DSM = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@PCI_PM_D3COLD_WAIT = common dso_local global i32 0, align 4
@PCI_PM_D3_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @pci_acpi_optimize_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_acpi_optimize_delay(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_host_bridge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %union.acpi_object*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_host_bridge* @pci_find_host_bridge(i32 %11)
  store %struct.pci_host_bridge* %12, %struct.pci_host_bridge** %5, align 8
  %13 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %5, align 8
  %14 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @FUNCTION_DELAY_DSM, align 4
  %23 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %21, i32* @pci_acpi_dsm_guid, i32 3, i32 %22, i32* null)
  store %union.acpi_object* %23, %union.acpi_object** %7, align 8
  %24 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %25 = icmp ne %union.acpi_object* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %93

27:                                               ; preds = %20
  %28 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %29 = bitcast %union.acpi_object* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %27
  %34 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %35 = bitcast %union.acpi_object* %34 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %90

39:                                               ; preds = %33
  %40 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %41 = bitcast %union.acpi_object* %40 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %union.acpi_object*, %union.acpi_object** %42, align 8
  store %union.acpi_object* %43, %union.acpi_object** %8, align 8
  %44 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %45 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %44, i64 0
  %46 = bitcast %union.acpi_object* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %39
  %51 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %52 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %51, i64 0
  %53 = bitcast %union.acpi_object* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = sdiv i32 %56, 1000
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @PCI_PM_D3COLD_WAIT, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %50
  br label %66

66:                                               ; preds = %65, %39
  %67 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %68 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %67, i64 3
  %69 = bitcast %union.acpi_object* %68 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %75 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %74, i64 3
  %76 = bitcast %union.acpi_object* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = sdiv i32 %79, 1000
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @PCI_PM_D3_WAIT, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %73
  br label %89

89:                                               ; preds = %88, %66
  br label %90

90:                                               ; preds = %89, %33, %27
  %91 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %92 = call i32 @ACPI_FREE(%union.acpi_object* %91)
  br label %93

93:                                               ; preds = %90, %26
  ret void
}

declare dso_local %struct.pci_host_bridge* @pci_find_host_bridge(i32) #1

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
