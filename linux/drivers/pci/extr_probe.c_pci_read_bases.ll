; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_read_bases.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_read_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource*, i64, i64 }
%struct.resource = type { i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@pci_bar_unknown = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@IORESOURCE_READONLY = common dso_local global i32 0, align 4
@IORESOURCE_SIZEALIGN = common dso_local global i32 0, align 4
@pci_bar_mem32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32, i32)* @pci_read_bases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_read_bases(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %76

16:                                               ; preds = %3
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %76

22:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = load %struct.resource*, %struct.resource** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %30, i64 %32
  store %struct.resource* %33, %struct.resource** %9, align 8
  %34 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 %35, 2
  %37 = add i32 %34, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* @pci_bar_unknown, align 4
  %40 = load %struct.resource*, %struct.resource** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @__pci_read_base(%struct.pci_dev* %38, i32 %39, %struct.resource* %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %27
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 1
  %56 = load %struct.resource*, %struct.resource** %55, align 8
  %57 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %56, i64 %57
  store %struct.resource* %58, %struct.resource** %10, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @IORESOURCE_MEM, align 4
  %63 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IORESOURCE_READONLY, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @IORESOURCE_SIZEALIGN, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.resource*, %struct.resource** %10, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = load i32, i32* @pci_bar_mem32, align 4
  %73 = load %struct.resource*, %struct.resource** %10, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @__pci_read_base(%struct.pci_dev* %71, i32 %72, %struct.resource* %73, i32 %74)
  br label %76

76:                                               ; preds = %15, %21, %53, %50
  ret void
}

declare dso_local i64 @__pci_read_base(%struct.pci_dev*, i32, %struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
