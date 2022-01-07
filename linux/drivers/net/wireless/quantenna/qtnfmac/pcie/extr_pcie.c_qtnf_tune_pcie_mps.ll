; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pcie.c_qtnf_tune_pcie_mps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pcie.c_qtnf_tune_pcie_mps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@.str = private unnamed_addr constant [48 x i8] c"failed to set mps to %d, keep using current %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"set mps to %d (was %d, max %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @qtnf_tune_pcie_mps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_tune_pcie_mps(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 @pcie_get_mps(%struct.pci_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 128, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  %26 = icmp ne %struct.pci_dev* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  store %struct.pci_dev* %32, %struct.pci_dev** %3, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = call i64 @pci_is_pcie(%struct.pci_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = call i32 @pcie_get_mps(%struct.pci_dev* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @min(i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %27
  br label %43

43:                                               ; preds = %42, %20, %1
  %44 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @pcie_set_mps(%struct.pci_dev* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %58

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %49
  ret void
}

declare dso_local i32 @pcie_get_mps(%struct.pci_dev*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pcie_set_mps(%struct.pci_dev*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
