; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"AXI slave error\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"AXI decode error\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Target abort\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Master abort\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Invalid write\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Legacy interrupt\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Response decoding error\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"AXI response decoding error\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Transaction timeout\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Slot present pin change\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Slot clock request change\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"TMS clock ramp change\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"TMS ready for power down\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Peer2Peer error\00", align 1
@__const.tegra_pcie_isr.err_msg = private unnamed_addr constant [15 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)], align 16
@AFI_INTR_CODE = common dso_local global i32 0, align 4
@AFI_INTR_CODE_MASK = common dso_local global i32 0, align 4
@AFI_INTR_SIGNATURE = common dso_local global i32 0, align 4
@AFI_INTR_LEGACY = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@AFI_INTR_MASTER_ABORT = common dso_local global i64 0, align 8
@AFI_INTR_PE_PRSNT_SENSE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"%s, signature: %08x\0A\00", align 1
@AFI_INTR_TARGET_ABORT = common dso_local global i64 0, align 8
@AFI_INTR_FPCI_DECODE_ERROR = common dso_local global i64 0, align 8
@AFI_UPPER_FPCI_ADDRESS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"  FPCI address: %10llx\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_pcie_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [15 x i8*], align 16
  %7 = alloca %struct.tegra_pcie*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = bitcast [15 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([15 x i8*]* @__const.tegra_pcie_isr.err_msg to i8*), i64 120, i1 false)
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.tegra_pcie*
  store %struct.tegra_pcie* %15, %struct.tegra_pcie** %7, align 8
  %16 = load %struct.tegra_pcie*, %struct.tegra_pcie** %7, align 8
  %17 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.tegra_pcie*, %struct.tegra_pcie** %7, align 8
  %20 = load i32, i32* @AFI_INTR_CODE, align 4
  %21 = call i32 @afi_readl(%struct.tegra_pcie* %19, i32 %20)
  %22 = load i32, i32* @AFI_INTR_CODE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = load %struct.tegra_pcie*, %struct.tegra_pcie** %7, align 8
  %26 = load i32, i32* @AFI_INTR_SIGNATURE, align 4
  %27 = call i32 @afi_readl(%struct.tegra_pcie* %25, i32 %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  %29 = load %struct.tegra_pcie*, %struct.tegra_pcie** %7, align 8
  %30 = load i32, i32* @AFI_INTR_CODE, align 4
  %31 = call i32 @afi_writel(%struct.tegra_pcie* %29, i32 0, i32 %30)
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @AFI_INTR_LEGACY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %105

37:                                               ; preds = %2
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds [15 x i8*], [15 x i8*]* %6, i64 0, i64 0
  %40 = call i64 @ARRAY_SIZE(i8** %39)
  %41 = icmp uge i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i64 0, i64* %9, align 8
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @AFI_INTR_MASTER_ABORT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @AFI_INTR_PE_PRSNT_SENSE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47, %43
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds [15 x i8*], [15 x i8*]* %6, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %55, i64 %56)
  br label %65

58:                                               ; preds = %47
  %59 = load %struct.device*, %struct.device** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds [15 x i8*], [15 x i8*]* %6, i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %62, i64 %63)
  br label %65

65:                                               ; preds = %58, %51
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @AFI_INTR_TARGET_ABORT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @AFI_INTR_MASTER_ABORT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @AFI_INTR_FPCI_DECODE_ERROR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %73, %69, %65
  %78 = load %struct.tegra_pcie*, %struct.tegra_pcie** %7, align 8
  %79 = load i32, i32* @AFI_UPPER_FPCI_ADDRESS, align 4
  %80 = call i32 @afi_readl(%struct.tegra_pcie* %78, i32 %79)
  %81 = and i32 %80, 255
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = trunc i64 %83 to i32
  %85 = shl i32 %84, 32
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %10, align 8
  %88 = and i64 %87, 4294967292
  %89 = or i64 %86, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %12, align 4
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @AFI_INTR_MASTER_ABORT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %77
  %95 = load %struct.device*, %struct.device** %8, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %96)
  br label %102

98:                                               ; preds = %77
  %99 = load %struct.device*, %struct.device** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %73
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %35
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @afi_readl(%struct.tegra_pcie*, i32) #2

declare dso_local i32 @afi_writel(%struct.tegra_pcie*, i32, i32) #2

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
