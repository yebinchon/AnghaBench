; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_pci_iov_set_numvfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_pci_iov_set_numvfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i64, i32 }

@PCI_SRIOV_NUM_VF = common dso_local global i64 0, align 8
@PCI_SRIOV_VF_OFFSET = common dso_local global i64 0, align 8
@PCI_SRIOV_VF_STRIDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @pci_iov_set_numvfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_iov_set_numvfs(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_sriov*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %7, align 8
  store %struct.pci_sriov* %8, %struct.pci_sriov** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %11 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI_SRIOV_NUM_VF, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pci_write_config_word(%struct.pci_dev* %9, i64 %14, i32 %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %19 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI_SRIOV_VF_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %24 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %23, i32 0, i32 2
  %25 = call i32 @pci_read_config_word(%struct.pci_dev* %17, i64 %22, i32* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %28 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI_SRIOV_VF_STRIDE, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %33 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %32, i32 0, i32 0
  %34 = call i32 @pci_read_config_word(%struct.pci_dev* %26, i64 %31, i32* %33)
  ret void
}

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
