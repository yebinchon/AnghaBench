; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_pci_dev_aer_stats_incr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_pci_dev_aer_stats_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.aer_stats* }
%struct.aer_stats = type { i32*, i32, i32*, i32, i32*, i32 }
%struct.aer_err_info = type { i32, i32, i32 }

@AER_MAX_TYPEOF_COR_ERRS = common dso_local global i32 0, align 4
@AER_MAX_TYPEOF_UNCOR_ERRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.aer_err_info*)* @pci_dev_aer_stats_incr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_dev_aer_stats_incr(%struct.pci_dev* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.aer_err_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.aer_stats*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %4, align 8
  store i32 -1, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load %struct.aer_stats*, %struct.aer_stats** %11, align 8
  store %struct.aer_stats* %12, %struct.aer_stats** %9, align 8
  %13 = load %struct.aer_stats*, %struct.aer_stats** %9, align 8
  %14 = icmp ne %struct.aer_stats* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %80

16:                                               ; preds = %2
  %17 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %18 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %50 [
    i32 130, label %20
    i32 128, label %30
    i32 129, label %40
  ]

20:                                               ; preds = %16
  %21 = load %struct.aer_stats*, %struct.aer_stats** %9, align 8
  %22 = getelementptr inbounds %struct.aer_stats, %struct.aer_stats* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.aer_stats*, %struct.aer_stats** %9, align 8
  %26 = getelementptr inbounds %struct.aer_stats, %struct.aer_stats* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32* %28, i32** %8, align 8
  %29 = load i32, i32* @AER_MAX_TYPEOF_COR_ERRS, align 4
  store i32 %29, i32* %7, align 4
  br label %50

30:                                               ; preds = %16
  %31 = load %struct.aer_stats*, %struct.aer_stats** %9, align 8
  %32 = getelementptr inbounds %struct.aer_stats, %struct.aer_stats* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.aer_stats*, %struct.aer_stats** %9, align 8
  %36 = getelementptr inbounds %struct.aer_stats, %struct.aer_stats* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* @AER_MAX_TYPEOF_UNCOR_ERRS, align 4
  store i32 %39, i32* %7, align 4
  br label %50

40:                                               ; preds = %16
  %41 = load %struct.aer_stats*, %struct.aer_stats** %9, align 8
  %42 = getelementptr inbounds %struct.aer_stats, %struct.aer_stats* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.aer_stats*, %struct.aer_stats** %9, align 8
  %46 = getelementptr inbounds %struct.aer_stats, %struct.aer_stats* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32* %48, i32** %8, align 8
  %49 = load i32, i32* @AER_MAX_TYPEOF_UNCOR_ERRS, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %16, %40, %30, %20
  %51 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %52 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %55 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %53, %57
  store i32 %58, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %77, %50
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %63
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %59

80:                                               ; preds = %15, %59
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
