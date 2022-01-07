; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_pci_rootport_aer_stats_incr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_pci_rootport_aer_stats_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.aer_stats* }
%struct.aer_stats = type { i32, i32, i32 }
%struct.aer_err_source = type { i32 }

@PCI_ERR_ROOT_COR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_UNCOR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_FATAL_RCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.aer_err_source*)* @pci_rootport_aer_stats_incr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_rootport_aer_stats_incr(%struct.pci_dev* %0, %struct.aer_err_source* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.aer_err_source*, align 8
  %5 = alloca %struct.aer_stats*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.aer_err_source* %1, %struct.aer_err_source** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load %struct.aer_stats*, %struct.aer_stats** %7, align 8
  store %struct.aer_stats* %8, %struct.aer_stats** %5, align 8
  %9 = load %struct.aer_stats*, %struct.aer_stats** %5, align 8
  %10 = icmp ne %struct.aer_stats* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %49

12:                                               ; preds = %2
  %13 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %14 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCI_ERR_ROOT_COR_RCV, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.aer_stats*, %struct.aer_stats** %5, align 8
  %21 = getelementptr inbounds %struct.aer_stats, %struct.aer_stats* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %12
  %25 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %26 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCI_ERR_ROOT_UNCOR_RCV, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %33 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PCI_ERR_ROOT_FATAL_RCV, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.aer_stats*, %struct.aer_stats** %5, align 8
  %40 = getelementptr inbounds %struct.aer_stats, %struct.aer_stats* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %48

43:                                               ; preds = %31
  %44 = load %struct.aer_stats*, %struct.aer_stats** %5, align 8
  %45 = getelementptr inbounds %struct.aer_stats, %struct.aer_stats* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %11, %48, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
