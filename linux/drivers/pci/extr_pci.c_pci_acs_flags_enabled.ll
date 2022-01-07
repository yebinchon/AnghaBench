; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_acs_flags_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_acs_flags_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_EXT_CAP_ID_ACS = common dso_local global i32 0, align 4
@PCI_ACS_CAP = common dso_local global i64 0, align 8
@PCI_ACS_EC = common dso_local global i32 0, align 4
@PCI_ACS_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_acs_flags_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_acs_flags_enabled(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @PCI_EXT_CAP_ID_ACS, align 4
  %11 = call i32 @pci_find_ext_capability(%struct.pci_dev* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @PCI_ACS_CAP, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @pci_read_config_word(%struct.pci_dev* %16, i64 %20, i32* %7)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PCI_ACS_EC, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @PCI_ACS_CTRL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @pci_read_config_word(%struct.pci_dev* %27, i64 %31, i32* %8)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %15, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
