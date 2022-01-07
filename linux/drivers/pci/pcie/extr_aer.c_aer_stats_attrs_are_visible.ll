; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_stats_attrs_are_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_stats_attrs_are_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_5__ = type { %struct.attribute }
%struct.TYPE_4__ = type { %struct.attribute }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.pci_dev = type { i32 }

@dev_attr_aer_rootport_total_err_cor = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@dev_attr_aer_rootport_total_err_fatal = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@dev_attr_aer_rootport_total_err_nonfatal = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @aer_stats_attrs_are_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aer_stats_attrs_are_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kobject*, %struct.kobject** %5, align 8
  %11 = call %struct.device* @kobj_to_dev(%struct.kobject* %10)
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = call %struct.pci_dev* @to_pci_dev(%struct.device* %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %9, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.attribute*, %struct.attribute** %6, align 8
  %21 = icmp eq %struct.attribute* %20, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_attr_aer_rootport_total_err_cor, i32 0, i32 0)
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.attribute*, %struct.attribute** %6, align 8
  %24 = icmp eq %struct.attribute* %23, getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dev_attr_aer_rootport_total_err_fatal, i32 0, i32 0)
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load %struct.attribute*, %struct.attribute** %6, align 8
  %27 = icmp eq %struct.attribute* %26, getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev_attr_aer_rootport_total_err_nonfatal, i32 0, i32 0)
  br i1 %27, label %28, label %34

28:                                               ; preds = %25, %22, %19
  %29 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %30 = call i64 @pci_pcie_type(%struct.pci_dev* %29)
  %31 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %38

34:                                               ; preds = %28, %25
  %35 = load %struct.attribute*, %struct.attribute** %6, align 8
  %36 = getelementptr inbounds %struct.attribute, %struct.attribute* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %33, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
