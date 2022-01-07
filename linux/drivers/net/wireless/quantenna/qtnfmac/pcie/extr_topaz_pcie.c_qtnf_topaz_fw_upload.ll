; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_topaz_fw_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_topaz_fw_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_topaz_state = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.firmware = type { i32, i32 }

@QTN_BDA_FW_LOAD_RDY = common dso_local global i32 0, align 4
@QTN_FW_DL_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: card is not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"starting firmware upload: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: request_firmware error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: FW upload error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_pcie_topaz_state*, i8*)* @qtnf_topaz_fw_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_topaz_fw_upload(%struct.qtnf_pcie_topaz_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_pcie_topaz_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.qtnf_pcie_topaz_state* %0, %struct.qtnf_pcie_topaz_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %4, align 8
  %10 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %7, align 8
  %13 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %4, align 8
  %14 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* @QTN_BDA_FW_LOAD_RDY, align 4
  %18 = load i32, i32* @QTN_FW_DL_TIMEOUT_MS, align 4
  %19 = call i64 @qtnf_poll_state(i32* %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 -1, i32* %3, align 4
  br label %55

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @request_firmware(%struct.firmware** %6, i8* %27, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 %35)
  store i32 -1, i32* %3, align 4
  br label %55

37:                                               ; preds = %24
  %38 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %4, align 8
  %39 = load %struct.firmware*, %struct.firmware** %6, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.firmware*, %struct.firmware** %6, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @qtnf_ep_fw_load(%struct.qtnf_pcie_topaz_state* %38, i32 %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.firmware*, %struct.firmware** %6, align 8
  %47 = call i32 @release_firmware(%struct.firmware* %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %37
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %33, %21
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @qtnf_poll_state(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @qtnf_ep_fw_load(%struct.qtnf_pcie_topaz_state*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
