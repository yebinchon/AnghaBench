; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci-phy/extr_pci-mt7621-phy.c_mt7621_bypass_pipe_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci-phy/extr_pci-mt7621-phy.c_mt7621_bypass_pipe_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7621_pci_phy = type { i32 }
%struct.mt7621_pci_phy_instance = type { i32 }

@RG_PE1_PIPE_REG = common dso_local global i32 0, align 4
@RG_P0_TO_P1_WIDTH = common dso_local global i32 0, align 4
@RG_PE1_PIPE_RST = common dso_local global i32 0, align 4
@RG_PE1_PIPE_CMD_FRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7621_pci_phy*, %struct.mt7621_pci_phy_instance*)* @mt7621_bypass_pipe_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7621_bypass_pipe_rst(%struct.mt7621_pci_phy* %0, %struct.mt7621_pci_phy_instance* %1) #0 {
  %3 = alloca %struct.mt7621_pci_phy*, align 8
  %4 = alloca %struct.mt7621_pci_phy_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7621_pci_phy* %0, %struct.mt7621_pci_phy** %3, align 8
  store %struct.mt7621_pci_phy_instance* %1, %struct.mt7621_pci_phy_instance** %4, align 8
  %7 = load %struct.mt7621_pci_phy_instance*, %struct.mt7621_pci_phy_instance** %4, align 8
  %8 = getelementptr inbounds %struct.mt7621_pci_phy_instance, %struct.mt7621_pci_phy_instance* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @RG_PE1_PIPE_REG, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @RG_PE1_PIPE_REG, align 4
  %15 = load i32, i32* @RG_P0_TO_P1_WIDTH, align 4
  %16 = add nsw i32 %14, %15
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  store i32 %18, i32* %5, align 4
  %19 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @phy_read(%struct.mt7621_pci_phy* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @RG_PE1_PIPE_RST, align 4
  %23 = load i32, i32* @RG_PE1_PIPE_CMD_FRC, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @RG_PE1_PIPE_RST, align 4
  %29 = load i32, i32* @RG_PE1_PIPE_CMD_FRC, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @phy_write(%struct.mt7621_pci_phy* %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @phy_read(%struct.mt7621_pci_phy*, i32) #1

declare dso_local i32 @phy_write(%struct.mt7621_pci_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
