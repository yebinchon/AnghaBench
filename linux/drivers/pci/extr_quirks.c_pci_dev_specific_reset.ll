; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_dev_specific_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_dev_specific_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev_reset_methods = type { i32 (%struct.pci_dev.0*, i32)*, i64, i64 }
%struct.pci_dev.0 = type opaque
%struct.pci_dev = type { i64, i64 }

@pci_dev_reset_methods = common dso_local global %struct.pci_dev_reset_methods* null, align 8
@PCI_ANY_ID = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_dev_specific_reset(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev_reset_methods*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_dev_reset_methods*, %struct.pci_dev_reset_methods** @pci_dev_reset_methods, align 8
  store %struct.pci_dev_reset_methods* %7, %struct.pci_dev_reset_methods** %6, align 8
  br label %8

8:                                                ; preds = %50, %2
  %9 = load %struct.pci_dev_reset_methods*, %struct.pci_dev_reset_methods** %6, align 8
  %10 = getelementptr inbounds %struct.pci_dev_reset_methods, %struct.pci_dev_reset_methods* %9, i32 0, i32 0
  %11 = load i32 (%struct.pci_dev.0*, i32)*, i32 (%struct.pci_dev.0*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.pci_dev.0*, i32)* %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %8
  %14 = load %struct.pci_dev_reset_methods*, %struct.pci_dev_reset_methods** %6, align 8
  %15 = getelementptr inbounds %struct.pci_dev_reset_methods, %struct.pci_dev_reset_methods* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.pci_dev_reset_methods*, %struct.pci_dev_reset_methods** %6, align 8
  %23 = getelementptr inbounds %struct.pci_dev_reset_methods, %struct.pci_dev_reset_methods* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI_ANY_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21, %13
  %28 = load %struct.pci_dev_reset_methods*, %struct.pci_dev_reset_methods** %6, align 8
  %29 = getelementptr inbounds %struct.pci_dev_reset_methods, %struct.pci_dev_reset_methods* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.pci_dev_reset_methods*, %struct.pci_dev_reset_methods** %6, align 8
  %37 = getelementptr inbounds %struct.pci_dev_reset_methods, %struct.pci_dev_reset_methods* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI_ANY_ID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35, %27
  %42 = load %struct.pci_dev_reset_methods*, %struct.pci_dev_reset_methods** %6, align 8
  %43 = getelementptr inbounds %struct.pci_dev_reset_methods, %struct.pci_dev_reset_methods* %42, i32 0, i32 0
  %44 = load i32 (%struct.pci_dev.0*, i32)*, i32 (%struct.pci_dev.0*, i32)** %43, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = bitcast %struct.pci_dev* %45 to %struct.pci_dev.0*
  %47 = load i32, i32* %5, align 4
  %48 = call i32 %44(%struct.pci_dev.0* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %35, %21
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.pci_dev_reset_methods*, %struct.pci_dev_reset_methods** %6, align 8
  %52 = getelementptr inbounds %struct.pci_dev_reset_methods, %struct.pci_dev_reset_methods* %51, i32 1
  store %struct.pci_dev_reset_methods* %52, %struct.pci_dev_reset_methods** %6, align 8
  br label %8

53:                                               ; preds = %8
  %54 = load i32, i32* @ENOTTY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %41
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
