; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-res.c_pci_reassign_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-res.c_pci_reassign_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i32, i32 }

@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@IORESOURCE_UNSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"BAR %d: can't reassign an unassigned resource %pR\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"BAR %d: %pR (failed to expand by %#llx)\0A\00", align 1
@IORESOURCE_STARTALIGN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"BAR %d: reassigned %pR (expanded by %#llx)\0A\00", align 1
@PCI_BRIDGE_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_reassign_resource(%struct.pci_dev* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load %struct.resource*, %struct.resource** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %16, i64 %18
  store %struct.resource* %19, %struct.resource** %10, align 8
  %20 = load %struct.resource*, %struct.resource** %10, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %103

27:                                               ; preds = %4
  %28 = load %struct.resource*, %struct.resource** %10, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* @IORESOURCE_UNSET, align 8
  %33 = load %struct.resource*, %struct.resource** %10, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = or i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load %struct.resource*, %struct.resource** %10, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %27
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.resource*, %struct.resource** %10, align 8
  %47 = call i32 (%struct.pci_dev*, i8*, i32, %struct.resource*, ...) @pci_info(%struct.pci_dev* %44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %45, %struct.resource* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %103

50:                                               ; preds = %27
  %51 = load %struct.resource*, %struct.resource** %10, align 8
  %52 = call i64 @resource_size(%struct.resource* %51)
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %52, %53
  store i64 %54, i64* %12, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @_pci_assign_resource(%struct.pci_dev* %55, i32 %56, i64 %57, i64 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %50
  %63 = load i64, i64* %11, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.resource*, %struct.resource** %10, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.resource*, %struct.resource** %10, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 (%struct.pci_dev*, i8*, i32, %struct.resource*, ...) @pci_info(%struct.pci_dev* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %68, %struct.resource* %69, i64 %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %5, align 4
  br label %103

73:                                               ; preds = %50
  %74 = load i64, i64* @IORESOURCE_UNSET, align 8
  %75 = xor i64 %74, -1
  %76 = load %struct.resource*, %struct.resource** %10, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = and i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load i64, i64* @IORESOURCE_STARTALIGN, align 8
  %83 = xor i64 %82, -1
  %84 = load %struct.resource*, %struct.resource** %10, align 8
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = and i64 %87, %83
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  %90 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.resource*, %struct.resource** %10, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 (%struct.pci_dev*, i8*, i32, %struct.resource*, ...) @pci_info(%struct.pci_dev* %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %91, %struct.resource* %92, i64 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %73
  %99 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @pci_update_resource(%struct.pci_dev* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %73
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %62, %43, %26
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, %struct.resource*, ...) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @_pci_assign_resource(%struct.pci_dev*, i32, i64, i64) #1

declare dso_local i32 @pci_update_resource(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
