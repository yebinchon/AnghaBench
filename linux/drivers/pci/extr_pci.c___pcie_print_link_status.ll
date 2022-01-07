; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pcie_print_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pcie_print_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"%u.%03u Gb/s available PCIe bandwidth (%s x%d link)\0A\00", align 1
@.str.1 = private unnamed_addr constant [112 x i8] c"%u.%03u Gb/s available PCIe bandwidth, limited by %s x%d link at %s (capable of %u.%03u Gb/s with %s x%d link)\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__pcie_print_link_status(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %9, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @pcie_bandwidth_capable(%struct.pci_dev* %12, i32* %8, i32* %6)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call i32 @pcie_bandwidth_available(%struct.pci_dev* %14, %struct.pci_dev** %9, i32* %7, i32* %5)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sdiv i32 %24, 1000
  %26 = load i32, i32* %11, align 4
  %27 = srem i32 %26, 1000
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @PCIE_SPEED2STR(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (%struct.pci_dev*, i8*, i32, i32, i32, i32, ...) @pci_info(%struct.pci_dev* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27, i32 %29, i32 %30)
  br label %62

32:                                               ; preds = %19, %2
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sdiv i32 %38, 1000
  %40 = load i32, i32* %10, align 4
  %41 = srem i32 %40, 1000
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @PCIE_SPEED2STR(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %46 = icmp ne %struct.pci_dev* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %49 = call i8* @pci_name(%struct.pci_dev* %48)
  br label %51

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i8* [ %49, %47 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %50 ]
  %53 = load i32, i32* %11, align 4
  %54 = sdiv i32 %53, 1000
  %55 = load i32, i32* %11, align 4
  %56 = srem i32 %55, 1000
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @PCIE_SPEED2STR(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (%struct.pci_dev*, i8*, i32, i32, i32, i32, ...) @pci_info(%struct.pci_dev* %37, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %41, i32 %43, i32 %44, i8* %52, i32 %54, i32 %56, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %51, %32
  br label %62

62:                                               ; preds = %61, %22
  ret void
}

declare dso_local i32 @pcie_bandwidth_capable(%struct.pci_dev*, i32*, i32*) #1

declare dso_local i32 @pcie_bandwidth_available(%struct.pci_dev*, %struct.pci_dev**, i32*, i32*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @PCIE_SPEED2STR(i32) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
