; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_quirk_intel_spt_pch_acs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_quirk_intel_spt_pch_acs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ACS = common dso_local global i32 0, align 4
@PCI_ACS_CAP = common dso_local global i64 0, align 8
@PCI_ACS_EC = common dso_local global i32 0, align 4
@INTEL_SPT_ACS_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_quirk_intel_spt_pch_acs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_quirk_intel_spt_pch_acs(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_quirk_intel_spt_pch_acs_match(%struct.pci_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOTTY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* @PCI_EXT_CAP_ID_ACS, align 4
  %18 = call i32 @pci_find_ext_capability(%struct.pci_dev* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOTTY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %15
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @PCI_ACS_CAP, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @pci_read_config_dword(%struct.pci_dev* %25, i64 %29, i32* %7)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PCI_ACS_EC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @INTEL_SPT_ACS_CTRL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @pci_read_config_dword(%struct.pci_dev* %36, i64 %40, i32* %8)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %8, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 1
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %24, %21, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @pci_quirk_intel_spt_pch_acs_match(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
