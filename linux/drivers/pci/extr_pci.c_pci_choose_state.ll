; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_choose_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_choose_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PCI_D0 = common dso_local global i64 0, align 8
@PCI_POWER_ERROR = common dso_local global i64 0, align 8
@PCI_D3hot = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"unrecognized suspend event %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pci_choose_state(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @PCI_D0, align 8
  store i64 %13, i64* %3, align 8
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = call i64 @platform_pci_choose_state(%struct.pci_dev* %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @PCI_POWER_ERROR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %3, align 8
  br label %37

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %29 [
    i32 130, label %25
    i32 132, label %27
    i32 129, label %27
    i32 128, label %27
    i32 131, label %27
  ]

25:                                               ; preds = %22
  %26 = load i64, i64* @PCI_D0, align 8
  store i64 %26, i64* %3, align 8
  br label %37

27:                                               ; preds = %22, %22, %22, %22
  %28 = load i64, i64* @PCI_D3hot, align 8
  store i64 %28, i64* %3, align 8
  br label %37

29:                                               ; preds = %22
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pci_info(%struct.pci_dev* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = call i32 (...) @BUG()
  br label %35

35:                                               ; preds = %29
  %36 = load i64, i64* @PCI_D0, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %35, %27, %25, %20, %12
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i64 @platform_pci_choose_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
