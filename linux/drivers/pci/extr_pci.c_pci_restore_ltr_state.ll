; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_restore_ltr_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_restore_ltr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_cap_saved_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@PCI_EXT_CAP_ID_LTR = common dso_local global i32 0, align 4
@PCI_LTR_MAX_SNOOP_LAT = common dso_local global i64 0, align 8
@PCI_LTR_MAX_NOSNOOP_LAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_restore_ltr_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_restore_ltr_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_cap_saved_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i32, i32* @PCI_EXT_CAP_ID_LTR, align 4
  %8 = call %struct.pci_cap_saved_state* @pci_find_saved_ext_cap(%struct.pci_dev* %6, i32 %7)
  store %struct.pci_cap_saved_state* %8, %struct.pci_cap_saved_state** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = load i32, i32* @PCI_EXT_CAP_ID_LTR, align 4
  %11 = call i32 @pci_find_ext_capability(%struct.pci_dev* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %3, align 8
  %13 = icmp ne %struct.pci_cap_saved_state* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %1
  br label %42

18:                                               ; preds = %14
  %19 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %3, align 8
  %20 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32* %23, i32** %5, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @PCI_LTR_MAX_SNOOP_LAT, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  %31 = load i32, i32* %29, align 4
  %32 = call i32 @pci_write_config_word(%struct.pci_dev* %24, i64 %28, i32 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @PCI_LTR_MAX_NOSNOOP_LAT, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  %40 = load i32, i32* %38, align 4
  %41 = call i32 @pci_write_config_word(%struct.pci_dev* %33, i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.pci_cap_saved_state* @pci_find_saved_ext_cap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
