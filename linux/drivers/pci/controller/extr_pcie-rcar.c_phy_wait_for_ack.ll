; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_phy_wait_for_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_phy_wait_for_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { %struct.device* }
%struct.device = type { i32 }

@H1_PCIEPHYADRR = common dso_local global i32 0, align 4
@PHY_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Access to PCIe phy timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_pcie*)* @phy_wait_for_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_wait_for_ack(%struct.rcar_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.rcar_pcie* %0, %struct.rcar_pcie** %3, align 8
  %6 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  store i32 100, i32* %5, align 4
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i32, i32* %5, align 4
  %11 = add i32 %10, -1
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %15 = load i32, i32* @H1_PCIEPHYADRR, align 4
  %16 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %14, i32 %15)
  %17 = load i32, i32* @PHY_ACK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %28

21:                                               ; preds = %13
  %22 = call i32 @udelay(i32 100)
  br label %9

23:                                               ; preds = %9
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @rcar_pci_read_reg(%struct.rcar_pcie*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
