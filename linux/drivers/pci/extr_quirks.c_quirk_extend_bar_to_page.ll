; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_extend_bar_to_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_extend_bar_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i32, i64, i64 }

@PCI_STD_RESOURCE_END = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@IORESOURCE_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"expanded BAR %d to page size: %pR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_extend_bar_to_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_extend_bar_to_page(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PCI_STD_RESOURCE_END, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %47

9:                                                ; preds = %5
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load %struct.resource*, %struct.resource** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %12, i64 %14
  store %struct.resource* %15, %struct.resource** %4, align 8
  %16 = load %struct.resource*, %struct.resource** %4, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %9
  %23 = load %struct.resource*, %struct.resource** %4, align 8
  %24 = call i64 @resource_size(%struct.resource* %23)
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = sub nsw i64 %28, 1
  %30 = load %struct.resource*, %struct.resource** %4, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.resource*, %struct.resource** %4, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @IORESOURCE_UNSET, align 4
  %35 = load %struct.resource*, %struct.resource** %4, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = call i32 @pci_info(%struct.pci_dev* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40, %struct.resource* %41)
  br label %43

43:                                               ; preds = %27, %22, %9
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %5

47:                                               ; preds = %5
  ret void
}

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
