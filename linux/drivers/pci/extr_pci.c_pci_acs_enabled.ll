; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_acs_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_acs_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_acs_enabled(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @pci_dev_specific_acs_enabled(%struct.pci_dev* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pci_is_pcie(%struct.pci_dev* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %40

21:                                               ; preds = %16
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_pcie_type(%struct.pci_dev* %22)
  switch i32 %23, label %39 [
    i32 133, label %24
    i32 132, label %24
    i32 131, label %24
    i32 136, label %25
    i32 129, label %25
    i32 135, label %29
    i32 128, label %29
    i32 134, label %29
    i32 130, label %29
  ]

24:                                               ; preds = %21, %21, %21
  store i32 0, i32* %3, align 4
  br label %40

25:                                               ; preds = %21, %21
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @pci_acs_flags_enabled(%struct.pci_dev* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %21, %21, %21, %21
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %39

35:                                               ; preds = %29
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @pci_acs_flags_enabled(%struct.pci_dev* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %21, %34
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %35, %25, %24, %20, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @pci_dev_specific_acs_enabled(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @pci_acs_flags_enabled(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
