; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }

@PCI_D3cold = common dso_local global i64 0, align 8
@PCI_D0 = common dso_local global i64 0, align 8
@PCI_D1 = common dso_local global i64 0, align 8
@PCI_D2 = common dso_local global i64 0, align 8
@PCI_D3hot = common dso_local global i64 0, align 8
@PCI_DEV_FLAGS_NO_D3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_set_power_state(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @PCI_D3cold, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @PCI_D3cold, align 8
  store i64 %11, i64* %5, align 8
  br label %33

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @PCI_D0, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* @PCI_D0, align 8
  store i64 %17, i64* %5, align 8
  br label %32

18:                                               ; preds = %12
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @PCI_D1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @PCI_D2, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %18
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i64 @pci_no_d1d2(%struct.pci_dev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %74

31:                                               ; preds = %26, %22
  br label %32

32:                                               ; preds = %31, %16
  br label %33

33:                                               ; preds = %32, %10
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %74

40:                                               ; preds = %33
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @__pci_start_power_transition(%struct.pci_dev* %41, i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @PCI_D3hot, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PCI_DEV_FLAGS_NO_D3, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %74

55:                                               ; preds = %47, %40
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @PCI_D3hot, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* @PCI_D3hot, align 8
  br label %64

62:                                               ; preds = %55
  %63 = load i64, i64* %5, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 @pci_raw_set_power_state(%struct.pci_dev* %56, i64 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @__pci_complete_power_transition(%struct.pci_dev* %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %64
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %54, %39, %30
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @pci_no_d1d2(%struct.pci_dev*) #1

declare dso_local i32 @__pci_start_power_transition(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_raw_set_power_state(%struct.pci_dev*, i64) #1

declare dso_local i32 @__pci_complete_power_transition(%struct.pci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
