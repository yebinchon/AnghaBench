; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { i64, %struct.device* }
%struct.device = type { i32 }

@IPROC_PCIE_LINK_STATUS = common dso_local global i32 0, align 4
@PCIE_PHYLINKUP = common dso_local global i32 0, align 4
@PCIE_DL_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PHY or data link is INACTIVE!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE = common dso_local global i64 0, align 8
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"in EP mode, hdr=%#02x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@IPROC_PCI_EXP_CAP = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA_NLW = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"link: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@PCI_BRIDGE_CTRL_REG_OFFSET = common dso_local global i64 0, align 8
@PCI_CLASS_BRIDGE_MASK = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_SHIFT = common dso_local global i32 0, align 4
@PCI_TARGET_LINK_SPEED_GEN1 = common dso_local global i32 0, align 4
@PCI_TARGET_LINK_SPEED_GEN2 = common dso_local global i32 0, align 4
@PCI_TARGET_LINK_SPEED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pcie*)* @iproc_pcie_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pcie_check_link(%struct.iproc_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iproc_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %3, align 8
  %11 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %12 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %15 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %124

19:                                               ; preds = %1
  %20 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %21 = load i32, i32* @IPROC_PCIE_LINK_STATUS, align 4
  %22 = call i32 @iproc_pcie_read_reg(%struct.iproc_pcie* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PCIE_PHYLINKUP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @PCIE_DL_ACTIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27, %19
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %124

37:                                               ; preds = %27
  %38 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %39 = load i64, i64* @PCI_HEADER_TYPE, align 8
  %40 = call i32 @iproc_pci_raw_config_read32(%struct.iproc_pcie* %38, i32 0, i64 %39, i32 1, i32* %5)
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 127
  %43 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %124

51:                                               ; preds = %37
  %52 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %53 = call i32 @iproc_pci_raw_config_read32(%struct.iproc_pcie* %52, i32 0, i64 1084, i32 4, i32* %8)
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, -16776961
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @iproc_pci_raw_config_write32(%struct.iproc_pcie* %60, i32 0, i64 1084, i32 4, i32 %61)
  %63 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %64 = load i64, i64* @IPROC_PCI_EXP_CAP, align 8
  %65 = load i64, i64* @PCI_EXP_LNKSTA, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @iproc_pci_raw_config_read32(%struct.iproc_pcie* %63, i32 0, i64 %66, i32 2, i32* %7)
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @PCI_EXP_LNKSTA_NLW, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %51
  store i32 1, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %109, label %76

76:                                               ; preds = %73
  %77 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %78 = load i64, i64* @IPROC_PCI_EXP_CAP, align 8
  %79 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @iproc_pci_raw_config_read32(%struct.iproc_pcie* %77, i32 0, i64 %80, i32 4, i32* %6)
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, 15
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %108

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, -16
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, 1
  store i32 %89, i32* %6, align 4
  %90 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %91 = load i64, i64* @IPROC_PCI_EXP_CAP, align 8
  %92 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @iproc_pci_raw_config_write32(%struct.iproc_pcie* %90, i32 0, i64 %93, i32 4, i32 %94)
  %96 = call i32 @msleep(i32 100)
  %97 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %98 = load i64, i64* @IPROC_PCI_EXP_CAP, align 8
  %99 = load i64, i64* @PCI_EXP_LNKSTA, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @iproc_pci_raw_config_read32(%struct.iproc_pcie* %97, i32 0, i64 %100, i32 2, i32* %7)
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @PCI_EXP_LNKSTA_NLW, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %85
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %85
  br label %108

108:                                              ; preds = %107, %76
  br label %109

109:                                              ; preds = %108, %73
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %115 = call i32 @dev_info(%struct.device* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %122

119:                                              ; preds = %109
  %120 = load i32, i32* @ENODEV, align 4
  %121 = sub nsw i32 0, %120
  br label %122

122:                                              ; preds = %119, %118
  %123 = phi i32 [ 0, %118 ], [ %121, %119 ]
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %45, %32, %18
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @iproc_pcie_read_reg(%struct.iproc_pcie*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @iproc_pci_raw_config_read32(%struct.iproc_pcie*, i32, i64, i32, i32*) #1

declare dso_local i32 @iproc_pci_raw_config_write32(%struct.iproc_pcie*, i32, i64, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
