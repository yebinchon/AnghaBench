; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_save_ltr_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_save_ltr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_cap_saved_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@PCI_EXT_CAP_ID_LTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"no suspend buffer for LTR; ASPM issues possible after resume\0A\00", align 1
@PCI_LTR_MAX_SNOOP_LAT = common dso_local global i64 0, align 8
@PCI_LTR_MAX_NOSNOOP_LAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_save_ltr_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_save_ltr_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_cap_saved_state*, align 8
  %5 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call i32 @pci_is_pcie(%struct.pci_dev* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = load i32, i32* @PCI_EXT_CAP_ID_LTR, align 4
  %13 = call i32 @pci_find_ext_capability(%struct.pci_dev* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %50

17:                                               ; preds = %10
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = load i32, i32* @PCI_EXT_CAP_ID_LTR, align 4
  %20 = call %struct.pci_cap_saved_state* @pci_find_saved_ext_cap(%struct.pci_dev* %18, i32 %19)
  store %struct.pci_cap_saved_state* %20, %struct.pci_cap_saved_state** %4, align 8
  %21 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %4, align 8
  %22 = icmp ne %struct.pci_cap_saved_state* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_err(%struct.pci_dev* %24, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %50

26:                                               ; preds = %17
  %27 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %4, align 8
  %28 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32* %31, i32** %5, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @PCI_LTR_MAX_SNOOP_LAT, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %5, align 8
  %39 = ptrtoint i32* %37 to i32
  %40 = call i32 @pci_read_config_word(%struct.pci_dev* %32, i64 %36, i32 %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @PCI_LTR_MAX_NOSNOOP_LAT, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %5, align 8
  %48 = ptrtoint i32* %46 to i32
  %49 = call i32 @pci_read_config_word(%struct.pci_dev* %41, i64 %45, i32 %48)
  br label %50

50:                                               ; preds = %26, %23, %16, %9
  ret void
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local %struct.pci_cap_saved_state* @pci_find_saved_ext_cap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
