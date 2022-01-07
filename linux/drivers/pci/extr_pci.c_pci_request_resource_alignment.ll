; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_request_resource_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_request_resource_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i32, i64, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"BAR%d %pR: ignoring requested alignment %#llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"BAR%d %pR: requesting alignment to %#llx\0A\00", align 1
@IORESOURCE_SIZEALIGN = common dso_local global i32 0, align 4
@IORESOURCE_STARTALIGN = common dso_local global i32 0, align 4
@IORESOURCE_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32, i64, i32)* @pci_request_resource_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_request_resource_alignment(%struct.pci_dev* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load %struct.resource*, %struct.resource** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %13, i64 %15
  store %struct.resource* %16, %struct.resource** %9, align 8
  %17 = load %struct.resource*, %struct.resource** %9, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %88

24:                                               ; preds = %4
  %25 = load %struct.resource*, %struct.resource** %9, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.resource*, %struct.resource** %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @pci_info(%struct.pci_dev* %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.resource* %34, i64 %35)
  br label %88

37:                                               ; preds = %24
  %38 = load %struct.resource*, %struct.resource** %9, align 8
  %39 = call i64 @resource_size(%struct.resource* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %88

44:                                               ; preds = %37
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.resource*, %struct.resource** %9, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @pci_info(%struct.pci_dev* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %46, %struct.resource* %47, i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.resource*, %struct.resource** %9, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %7, align 8
  %56 = sub nsw i64 %55, 1
  %57 = load %struct.resource*, %struct.resource** %9, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %82

59:                                               ; preds = %44
  %60 = load i32, i32* @IORESOURCE_SIZEALIGN, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.resource*, %struct.resource** %9, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @IORESOURCE_STARTALIGN, align 4
  %67 = load %struct.resource*, %struct.resource** %9, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.resource*, %struct.resource** %9, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.resource*, %struct.resource** %9, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add nsw i64 %76, %77
  %79 = sub nsw i64 %78, 1
  %80 = load %struct.resource*, %struct.resource** %9, align 8
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %59, %52
  %83 = load i32, i32* @IORESOURCE_UNSET, align 4
  %84 = load %struct.resource*, %struct.resource** %9, align 8
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %43, %31, %23
  ret void
}

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, %struct.resource*, i64) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
