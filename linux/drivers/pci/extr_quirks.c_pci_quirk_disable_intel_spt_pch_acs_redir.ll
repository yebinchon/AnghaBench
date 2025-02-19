; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_quirk_disable_intel_spt_pch_acs_redir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_quirk_disable_intel_spt_pch_acs_redir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ACS = common dso_local global i32 0, align 4
@PCI_ACS_CAP = common dso_local global i64 0, align 8
@INTEL_SPT_ACS_CTRL = common dso_local global i64 0, align 8
@PCI_ACS_RR = common dso_local global i32 0, align 4
@PCI_ACS_CR = common dso_local global i32 0, align 4
@PCI_ACS_EC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Intel SPT PCH root port workaround: disabled ACS redirect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pci_quirk_disable_intel_spt_pch_acs_redir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_quirk_disable_intel_spt_pch_acs_redir(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call i32 @pci_quirk_intel_spt_pch_acs_match(%struct.pci_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOTTY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = load i32, i32* @PCI_EXT_CAP_ID_ACS, align 4
  %16 = call i32 @pci_find_ext_capability(%struct.pci_dev* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOTTY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %13
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @PCI_ACS_CAP, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @pci_read_config_dword(%struct.pci_dev* %23, i64 %27, i32* %5)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @INTEL_SPT_ACS_CTRL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @pci_read_config_dword(%struct.pci_dev* %29, i64 %33, i32* %6)
  %35 = load i32, i32* @PCI_ACS_RR, align 4
  %36 = load i32, i32* @PCI_ACS_CR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PCI_ACS_EC, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @INTEL_SPT_ACS_CTRL, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pci_write_config_dword(%struct.pci_dev* %43, i64 %47, i32 %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = call i32 @pci_info(%struct.pci_dev* %50, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %22, %19, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @pci_quirk_intel_spt_pch_acs_match(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
