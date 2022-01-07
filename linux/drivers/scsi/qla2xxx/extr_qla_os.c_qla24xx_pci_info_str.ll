; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla24xx_pci_info_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla24xx_pci_info_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32 }

@qla24xx_pci_info_str.pci_bus_modes = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"33\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"66\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"133\00", align 1
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_MLW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"2.5GT/s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"5.0GT/s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"8.0GT/s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"PCIe (%s x%d)\00", align 1
@CSRX_PCIX_BUS_MODE_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"PCI (%s MHz)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"PCI-X Mode %d (%s MHz)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.scsi_qla_host*, i8*, i64)* @qla24xx_pci_info_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla24xx_pci_info_str(%struct.scsi_qla_host* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 0
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %8, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @pci_is_pcie(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %3
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %27 = call i32 @pcie_capability_read_dword(i32 %25, i32 %26, i32* %10)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @PCI_EXP_LNKCAP_MLW, align 4
  %33 = and i32 %31, %32
  %34 = ashr i32 %33, 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %39 [
    i32 1, label %36
    i32 2, label %37
    i32 3, label %38
  ]

36:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %40

37:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %40

38:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %40

39:                                               ; preds = %22
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %40

40:                                               ; preds = %39, %38, %37, %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %41, i64 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %43, i32 %44)
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %4, align 8
  br label %84

47:                                               ; preds = %3
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CSRX_PCIX_BUS_MODE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = ashr i32 %52, 8
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %68

59:                                               ; preds = %56, %47
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i8*], [4 x i8*]* @qla24xx_pci_info_str.pci_bus_modes, i64 0, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %60, i64 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %66)
  br label %82

68:                                               ; preds = %56
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 2, i32 1
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i8*], [4 x i8*]* @qla24xx_pci_info_str.pci_bus_modes, i64 0, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %69, i64 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %75, i8* %80)
  br label %82

82:                                               ; preds = %68, %59
  %83 = load i8*, i8** %6, align 8
  store i8* %83, i8** %4, align 8
  br label %84

84:                                               ; preds = %82, %40
  %85 = load i8*, i8** %4, align 8
  ret i8* %85
}

declare dso_local i64 @pci_is_pcie(i32) #1

declare dso_local i32 @pcie_capability_read_dword(i32, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
