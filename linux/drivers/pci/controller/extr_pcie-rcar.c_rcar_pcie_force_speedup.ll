; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_force_speedup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_force_speedup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { %struct.device* }
%struct.device = type { i32 }

@MACS2R = common dso_local global i32 0, align 4
@LINK_SPEED = common dso_local global i32 0, align 4
@LINK_SPEED_5_0GTS = common dso_local global i32 0, align 4
@MACCTLR = common dso_local global i32 0, align 4
@SPEED_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Speed change already in progress\0A\00", align 1
@MACSR = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_CLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_CLS_5_0GB = common dso_local global i32 0, align 4
@MACCGSPSETR = common dso_local global i32 0, align 4
@SPCNGRSN = common dso_local global i32 0, align 4
@SPCHGFIN = common dso_local global i32 0, align 4
@SPCHGSUC = common dso_local global i32 0, align 4
@SPCHGFAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Speed change failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Speed change timed out\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Current link speed is %s GT/s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"2.5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_pcie*)* @rcar_pcie_force_speedup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_pcie_force_speedup(%struct.rcar_pcie* %0) #0 {
  %2 = alloca %struct.rcar_pcie*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rcar_pcie* %0, %struct.rcar_pcie** %2, align 8
  %6 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  store i32 1000, i32* %4, align 4
  %9 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %10 = load i32, i32* @MACS2R, align 4
  %11 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %9, i32 %10)
  %12 = load i32, i32* @LINK_SPEED, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @LINK_SPEED_5_0GTS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %106

17:                                               ; preds = %1
  %18 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %19 = load i32, i32* @MACCTLR, align 4
  %20 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %18, i32 %19)
  %21 = load i32, i32* @SPEED_CHANGE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %106

27:                                               ; preds = %17
  %28 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %29 = load i32, i32* @MACSR, align 4
  %30 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @LINK_SPEED, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @LINK_SPEED_5_0GTS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %96

37:                                               ; preds = %27
  %38 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %39 = call i32 @EXPCAP(i32 12)
  %40 = load i32, i32* @PCI_EXP_LNKSTA_CLS, align 4
  %41 = load i32, i32* @PCI_EXP_LNKSTA_CLS_5_0GB, align 4
  %42 = call i32 @rcar_rmw32(%struct.rcar_pcie* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %44 = load i32, i32* @MACCGSPSETR, align 4
  %45 = load i32, i32* @SPCNGRSN, align 4
  %46 = call i32 @rcar_rmw32(%struct.rcar_pcie* %43, i32 %44, i32 %45, i32 0)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SPCHGFIN, align 4
  %49 = load i32, i32* @SPCHGSUC, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SPCHGFAIL, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %47, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %37
  %56 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @MACSR, align 4
  %59 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %37
  %61 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %62 = load i32, i32* @MACCTLR, align 4
  %63 = load i32, i32* @SPEED_CHANGE, align 4
  %64 = load i32, i32* @SPEED_CHANGE, align 4
  %65 = call i32 @rcar_rmw32(%struct.rcar_pcie* %61, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %91, %60
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %4, align 4
  %69 = icmp ne i32 %67, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %72 = load i32, i32* @MACSR, align 4
  %73 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SPCHGFIN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %70
  %79 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @MACSR, align 4
  %82 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @SPCHGFAIL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load %struct.device*, %struct.device** %3, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %78
  br label %96

91:                                               ; preds = %70
  %92 = call i32 @msleep(i32 1)
  br label %66

93:                                               ; preds = %66
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %90, %36
  %97 = load %struct.device*, %struct.device** %3, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @LINK_SPEED, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @LINK_SPEED_5_0GTS, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %105 = call i32 @dev_info(%struct.device* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %96, %24, %16
  ret void
}

declare dso_local i32 @rcar_pci_read_reg(%struct.rcar_pcie*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rcar_rmw32(%struct.rcar_pcie*, i32, i32, i32) #1

declare dso_local i32 @EXPCAP(i32) #1

declare dso_local i32 @rcar_pci_write_reg(%struct.rcar_pcie*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
