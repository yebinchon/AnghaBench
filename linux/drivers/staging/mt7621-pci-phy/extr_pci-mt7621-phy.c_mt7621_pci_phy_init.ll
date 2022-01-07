; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci-phy/extr_pci-mt7621-phy.c_mt7621_pci_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci-phy/extr_pci-mt7621-phy.c_mt7621_pci_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt7621_pci_phy_instance = type { i32 }
%struct.mt7621_pci_phy = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mt7621_pci_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_pci_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.mt7621_pci_phy_instance*, align 8
  %4 = alloca %struct.mt7621_pci_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.mt7621_pci_phy_instance* @phy_get_drvdata(%struct.phy* %5)
  store %struct.mt7621_pci_phy_instance* %6, %struct.mt7621_pci_phy_instance** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %2, align 8
  %8 = getelementptr inbounds %struct.phy, %struct.phy* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mt7621_pci_phy* @dev_get_drvdata(i32 %10)
  store %struct.mt7621_pci_phy* %11, %struct.mt7621_pci_phy** %4, align 8
  %12 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %4, align 8
  %13 = getelementptr inbounds %struct.mt7621_pci_phy, %struct.mt7621_pci_phy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %4, align 8
  %18 = load %struct.mt7621_pci_phy_instance*, %struct.mt7621_pci_phy_instance** %3, align 8
  %19 = call i32 @mt7621_bypass_pipe_rst(%struct.mt7621_pci_phy* %17, %struct.mt7621_pci_phy_instance* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %4, align 8
  %22 = load %struct.mt7621_pci_phy_instance*, %struct.mt7621_pci_phy_instance** %3, align 8
  %23 = call i32 @mt7621_set_phy_for_ssc(%struct.mt7621_pci_phy* %21, %struct.mt7621_pci_phy_instance* %22)
  ret i32 0
}

declare dso_local %struct.mt7621_pci_phy_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.mt7621_pci_phy* @dev_get_drvdata(i32) #1

declare dso_local i32 @mt7621_bypass_pipe_rst(%struct.mt7621_pci_phy*, %struct.mt7621_pci_phy_instance*) #1

declare dso_local i32 @mt7621_set_phy_for_ssc(%struct.mt7621_pci_phy*, %struct.mt7621_pci_phy_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
