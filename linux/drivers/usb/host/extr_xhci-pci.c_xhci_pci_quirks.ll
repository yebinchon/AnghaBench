; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-pci.c_xhci_pci_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-pci.c_xhci_pci_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.xhci_hcd = type { i32, i32, i32 }
%struct.pci_dev = type { i64, i32, i32 }

@PCI_VENDOR_ID_FRESCO_LOGIC = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_FRESCO_LOGIC_PDK = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_FRESCO_LOGIC_FL1400 = common dso_local global i32 0, align 4
@XHCI_RESET_EP_QUIRK = common dso_local global i32 0, align 4
@trace_xhci_dbg_quirks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"QUIRK: Fresco Logic xHC needs configure endpoint cmd after reset endpoint\00", align 1
@XHCI_SLOW_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"QUIRK: Fresco Logic xHC revision %umust be suspended extra slowly\00", align 1
@XHCI_BROKEN_STREAMS = common dso_local global i32 0, align 4
@XHCI_BROKEN_MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"QUIRK: Fresco Logic revision %u has broken MSI implementation\00", align 1
@XHCI_TRUST_TX_LENGTH = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_FRESCO_LOGIC_FL1009 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_NEC = common dso_local global i64 0, align 8
@XHCI_NEC_HOST = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AMD = common dso_local global i64 0, align 8
@XHCI_AMD_0x96_HOST = common dso_local global i32 0, align 4
@XHCI_AMD_PLL_FIX = common dso_local global i32 0, align 4
@XHCI_SUSPEND_DELAY = common dso_local global i32 0, align 4
@XHCI_SNPS_BROKEN_SUSPEND = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_PROMONTORYA_4 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_PROMONTORYA_3 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_PROMONTORYA_2 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_PROMONTORYA_1 = common dso_local global i32 0, align 4
@XHCI_U2_DISABLE_WAKE = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@XHCI_LPM_SUPPORT = common dso_local global i32 0, align 4
@XHCI_INTEL_HOST = common dso_local global i32 0, align 4
@XHCI_AVOID_BEI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_PANTHERPOINT_XHCI = common dso_local global i32 0, align 4
@XHCI_EP_LIMIT_QUIRK = common dso_local global i32 0, align 4
@XHCI_SW_BW_CHECKING = common dso_local global i32 0, align 4
@XHCI_SPURIOUS_REBOOT = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_LYNXPOINT_LP_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_WILDCATPOINT_LP_XHCI = common dso_local global i32 0, align 4
@XHCI_SPURIOUS_WAKEUP = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_SUNRISEPOINT_LP_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_SUNRISEPOINT_H_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_CHERRYVIEW_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_BROXTON_M_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_BROXTON_B_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_APL_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_DNV_XHCI = common dso_local global i32 0, align 4
@XHCI_PME_STUCK_QUIRK = common dso_local global i32 0, align 4
@XHCI_SSIC_PORT_UNUSED = common dso_local global i32 0, align 4
@XHCI_INTEL_USB_ROLE_SW = common dso_local global i32 0, align 4
@XHCI_MISSING_CAS = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_ALPINE_RIDGE_2C_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_ALPINE_RIDGE_4C_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_ALPINE_RIDGE_C_2C_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_ALPINE_RIDGE_C_4C_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_TITAN_RIDGE_2C_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_TITAN_RIDGE_4C_XHCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_TITAN_RIDGE_DD_XHCI = common dso_local global i32 0, align 4
@XHCI_DEFAULT_PM_RUNTIME_ALLOW = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ETRON = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_EJ168 = common dso_local global i32 0, align 4
@XHCI_RESET_ON_RESUME = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_RENESAS = common dso_local global i64 0, align 8
@XHCI_ZERO_64B_REGS = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_VIA = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_ASMEDIA = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_ASMEDIA_1042A_XHCI = common dso_local global i32 0, align 4
@XHCI_ASMEDIA_MODIFY_FLOWCONTROL = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_TI = common dso_local global i64 0, align 8
@XHCI_LIMIT_ENDPOINT_INTERVAL_7 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_BROADCOM = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_CAVIUM = common dso_local global i64 0, align 8
@XHCI_RESET_PLL_ON_DISCONNECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"QUIRK: Resetting on resume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.xhci_hcd*)* @xhci_pci_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_pci_quirks(%struct.device* %0, %struct.xhci_hcd* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.xhci_hcd* %1, %struct.xhci_hcd** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.pci_dev* @to_pci_dev(%struct.device* %6)
  store %struct.pci_dev* %7, %struct.pci_dev** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCI_VENDOR_ID_FRESCO_LOGIC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %97

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PCI_DEVICE_ID_FRESCO_LOGIC_PDK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PCI_DEVICE_ID_FRESCO_LOGIC_FL1400, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %19, %13
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PCI_DEVICE_ID_FRESCO_LOGIC_PDK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* @XHCI_RESET_EP_QUIRK, align 4
  %38 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %39 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %43 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %44 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %42, i32 %43, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %36, %31, %25
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PCI_DEVICE_ID_FRESCO_LOGIC_PDK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i32, i32* @XHCI_SLOW_SUSPEND, align 4
  %58 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %59 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %63 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %62, i32 %63, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %56, %51, %45
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PCI_DEVICE_ID_FRESCO_LOGIC_PDK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* @XHCI_BROKEN_STREAMS, align 4
  %76 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %77 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %68
  %81 = load i32, i32* @XHCI_BROKEN_MSI, align 4
  %82 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %83 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %87 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %86, i32 %87, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @XHCI_TRUST_TX_LENGTH, align 4
  %93 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %94 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %80, %19, %2
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PCI_VENDOR_ID_FRESCO_LOGIC, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @PCI_DEVICE_ID_FRESCO_LOGIC_FL1009, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32, i32* @XHCI_BROKEN_STREAMS, align 4
  %111 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %112 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %103, %97
  %116 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PCI_VENDOR_ID_NEC, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* @XHCI_NEC_HOST, align 4
  %123 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %124 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %115
  %128 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %135 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 150
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32, i32* @XHCI_AMD_0x96_HOST, align 4
  %140 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %141 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %133, %127
  %145 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = call i64 (...) @usb_amd_quirk_pll_check()
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32, i32* @XHCI_AMD_PLL_FIX, align 4
  %155 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %156 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %150, %144
  %160 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %161 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %186

165:                                              ; preds = %159
  %166 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %167 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 5600
  br i1 %169, label %180, label %170

170:                                              ; preds = %165
  %171 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %172 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 5601
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 17339
  br i1 %179, label %180, label %186

180:                                              ; preds = %175, %170, %165
  %181 = load i32, i32* @XHCI_SUSPEND_DELAY, align 4
  %182 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %183 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %175, %159
  %187 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %188 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %208

192:                                              ; preds = %186
  %193 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %194 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 5600
  br i1 %196, label %202, label %197

197:                                              ; preds = %192
  %198 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %199 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 5601
  br i1 %201, label %202, label %208

202:                                              ; preds = %197, %192
  %203 = load i32, i32* @XHCI_SNPS_BROKEN_SUSPEND, align 4
  %204 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %205 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %202, %197, %186
  %209 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %210 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = load i32, i32* @XHCI_TRUST_TX_LENGTH, align 4
  %216 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %217 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %214, %208
  %221 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %222 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %256

226:                                              ; preds = %220
  %227 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %228 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @PCI_DEVICE_ID_AMD_PROMONTORYA_4, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %250, label %232

232:                                              ; preds = %226
  %233 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %234 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @PCI_DEVICE_ID_AMD_PROMONTORYA_3, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %250, label %238

238:                                              ; preds = %232
  %239 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %240 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @PCI_DEVICE_ID_AMD_PROMONTORYA_2, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %250, label %244

244:                                              ; preds = %238
  %245 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %246 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @PCI_DEVICE_ID_AMD_PROMONTORYA_1, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %256

250:                                              ; preds = %244, %238, %232, %226
  %251 = load i32, i32* @XHCI_U2_DISABLE_WAKE, align 4
  %252 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %253 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %250, %244, %220
  %257 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %258 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %278

262:                                              ; preds = %256
  %263 = load i32, i32* @XHCI_LPM_SUPPORT, align 4
  %264 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %265 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  %268 = load i32, i32* @XHCI_INTEL_HOST, align 4
  %269 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %270 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 4
  %273 = load i32, i32* @XHCI_AVOID_BEI, align 4
  %274 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %275 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %262, %256
  %279 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %280 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %308

284:                                              ; preds = %278
  %285 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %286 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @PCI_DEVICE_ID_INTEL_PANTHERPOINT_XHCI, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %308

290:                                              ; preds = %284
  %291 = load i32, i32* @XHCI_EP_LIMIT_QUIRK, align 4
  %292 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %293 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %297 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %296, i32 0, i32 2
  store i32 64, i32* %297, align 4
  %298 = load i32, i32* @XHCI_SW_BW_CHECKING, align 4
  %299 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %300 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 4
  %303 = load i32, i32* @XHCI_SPURIOUS_REBOOT, align 4
  %304 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %305 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %290, %284, %278
  %309 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %310 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %337

314:                                              ; preds = %308
  %315 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %316 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @PCI_DEVICE_ID_INTEL_LYNXPOINT_LP_XHCI, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %326, label %320

320:                                              ; preds = %314
  %321 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %322 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @PCI_DEVICE_ID_INTEL_WILDCATPOINT_LP_XHCI, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %337

326:                                              ; preds = %320, %314
  %327 = load i32, i32* @XHCI_SPURIOUS_REBOOT, align 4
  %328 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %329 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = or i32 %330, %327
  store i32 %331, i32* %329, align 4
  %332 = load i32, i32* @XHCI_SPURIOUS_WAKEUP, align 4
  %333 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %334 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 4
  br label %337

337:                                              ; preds = %326, %320, %308
  %338 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %339 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %391

343:                                              ; preds = %337
  %344 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %345 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @PCI_DEVICE_ID_INTEL_SUNRISEPOINT_LP_XHCI, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %385, label %349

349:                                              ; preds = %343
  %350 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %351 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @PCI_DEVICE_ID_INTEL_SUNRISEPOINT_H_XHCI, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %385, label %355

355:                                              ; preds = %349
  %356 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %357 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @PCI_DEVICE_ID_INTEL_CHERRYVIEW_XHCI, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %385, label %361

361:                                              ; preds = %355
  %362 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %363 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @PCI_DEVICE_ID_INTEL_BROXTON_M_XHCI, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %385, label %367

367:                                              ; preds = %361
  %368 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %369 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @PCI_DEVICE_ID_INTEL_BROXTON_B_XHCI, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %385, label %373

373:                                              ; preds = %367
  %374 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %375 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @PCI_DEVICE_ID_INTEL_APL_XHCI, align 4
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %385, label %379

379:                                              ; preds = %373
  %380 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %381 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @PCI_DEVICE_ID_INTEL_DNV_XHCI, align 4
  %384 = icmp eq i32 %382, %383
  br i1 %384, label %385, label %391

385:                                              ; preds = %379, %373, %367, %361, %355, %349, %343
  %386 = load i32, i32* @XHCI_PME_STUCK_QUIRK, align 4
  %387 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %388 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 4
  br label %391

391:                                              ; preds = %385, %379, %337
  %392 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %393 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %409

397:                                              ; preds = %391
  %398 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %399 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @PCI_DEVICE_ID_INTEL_CHERRYVIEW_XHCI, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %409

403:                                              ; preds = %397
  %404 = load i32, i32* @XHCI_SSIC_PORT_UNUSED, align 4
  %405 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %406 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, %404
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %403, %397, %391
  %410 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %411 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %439

415:                                              ; preds = %409
  %416 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %417 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @PCI_DEVICE_ID_INTEL_CHERRYVIEW_XHCI, align 4
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %433, label %421

421:                                              ; preds = %415
  %422 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %423 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @PCI_DEVICE_ID_INTEL_SUNRISEPOINT_LP_XHCI, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %433, label %427

427:                                              ; preds = %421
  %428 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %429 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @PCI_DEVICE_ID_INTEL_APL_XHCI, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %433, label %439

433:                                              ; preds = %427, %421, %415
  %434 = load i32, i32* @XHCI_INTEL_USB_ROLE_SW, align 4
  %435 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %436 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = or i32 %437, %434
  store i32 %438, i32* %436, align 4
  br label %439

439:                                              ; preds = %433, %427, %409
  %440 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %441 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %445, label %481

445:                                              ; preds = %439
  %446 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %447 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @PCI_DEVICE_ID_INTEL_CHERRYVIEW_XHCI, align 4
  %450 = icmp eq i32 %448, %449
  br i1 %450, label %475, label %451

451:                                              ; preds = %445
  %452 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %453 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @PCI_DEVICE_ID_INTEL_SUNRISEPOINT_LP_XHCI, align 4
  %456 = icmp eq i32 %454, %455
  br i1 %456, label %475, label %457

457:                                              ; preds = %451
  %458 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %459 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @PCI_DEVICE_ID_INTEL_SUNRISEPOINT_H_XHCI, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %475, label %463

463:                                              ; preds = %457
  %464 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %465 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* @PCI_DEVICE_ID_INTEL_APL_XHCI, align 4
  %468 = icmp eq i32 %466, %467
  br i1 %468, label %475, label %469

469:                                              ; preds = %463
  %470 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %471 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @PCI_DEVICE_ID_INTEL_DNV_XHCI, align 4
  %474 = icmp eq i32 %472, %473
  br i1 %474, label %475, label %481

475:                                              ; preds = %469, %463, %457, %451, %445
  %476 = load i32, i32* @XHCI_MISSING_CAS, align 4
  %477 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %478 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = or i32 %479, %476
  store i32 %480, i32* %478, align 4
  br label %481

481:                                              ; preds = %475, %469, %439
  %482 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %483 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %486 = icmp eq i64 %484, %485
  br i1 %486, label %487, label %535

487:                                              ; preds = %481
  %488 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %489 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  %491 = load i32, i32* @PCI_DEVICE_ID_INTEL_ALPINE_RIDGE_2C_XHCI, align 4
  %492 = icmp eq i32 %490, %491
  br i1 %492, label %529, label %493

493:                                              ; preds = %487
  %494 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %495 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @PCI_DEVICE_ID_INTEL_ALPINE_RIDGE_4C_XHCI, align 4
  %498 = icmp eq i32 %496, %497
  br i1 %498, label %529, label %499

499:                                              ; preds = %493
  %500 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %501 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 8
  %503 = load i32, i32* @PCI_DEVICE_ID_INTEL_ALPINE_RIDGE_C_2C_XHCI, align 4
  %504 = icmp eq i32 %502, %503
  br i1 %504, label %529, label %505

505:                                              ; preds = %499
  %506 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %507 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* @PCI_DEVICE_ID_INTEL_ALPINE_RIDGE_C_4C_XHCI, align 4
  %510 = icmp eq i32 %508, %509
  br i1 %510, label %529, label %511

511:                                              ; preds = %505
  %512 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %513 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* @PCI_DEVICE_ID_INTEL_TITAN_RIDGE_2C_XHCI, align 4
  %516 = icmp eq i32 %514, %515
  br i1 %516, label %529, label %517

517:                                              ; preds = %511
  %518 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %519 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @PCI_DEVICE_ID_INTEL_TITAN_RIDGE_4C_XHCI, align 4
  %522 = icmp eq i32 %520, %521
  br i1 %522, label %529, label %523

523:                                              ; preds = %517
  %524 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %525 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 8
  %527 = load i32, i32* @PCI_DEVICE_ID_INTEL_TITAN_RIDGE_DD_XHCI, align 4
  %528 = icmp eq i32 %526, %527
  br i1 %528, label %529, label %535

529:                                              ; preds = %523, %517, %511, %505, %499, %493, %487
  %530 = load i32, i32* @XHCI_DEFAULT_PM_RUNTIME_ALLOW, align 4
  %531 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %532 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = or i32 %533, %530
  store i32 %534, i32* %532, align 4
  br label %535

535:                                              ; preds = %529, %523, %481
  %536 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %537 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %536, i32 0, i32 0
  %538 = load i64, i64* %537, align 8
  %539 = load i64, i64* @PCI_VENDOR_ID_ETRON, align 8
  %540 = icmp eq i64 %538, %539
  br i1 %540, label %541, label %563

541:                                              ; preds = %535
  %542 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %543 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* @PCI_DEVICE_ID_EJ168, align 4
  %546 = icmp eq i32 %544, %545
  br i1 %546, label %547, label %563

547:                                              ; preds = %541
  %548 = load i32, i32* @XHCI_RESET_ON_RESUME, align 4
  %549 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %550 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  %552 = or i32 %551, %548
  store i32 %552, i32* %550, align 4
  %553 = load i32, i32* @XHCI_TRUST_TX_LENGTH, align 4
  %554 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %555 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 4
  %557 = or i32 %556, %553
  store i32 %557, i32* %555, align 4
  %558 = load i32, i32* @XHCI_BROKEN_STREAMS, align 4
  %559 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %560 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 4
  %562 = or i32 %561, %558
  store i32 %562, i32* %560, align 4
  br label %563

563:                                              ; preds = %547, %541, %535
  %564 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %565 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* @PCI_VENDOR_ID_RENESAS, align 8
  %568 = icmp eq i64 %566, %567
  br i1 %568, label %569, label %585

569:                                              ; preds = %563
  %570 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %571 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 8
  %573 = icmp eq i32 %572, 20
  br i1 %573, label %574, label %585

574:                                              ; preds = %569
  %575 = load i32, i32* @XHCI_TRUST_TX_LENGTH, align 4
  %576 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %577 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 4
  %579 = or i32 %578, %575
  store i32 %579, i32* %577, align 4
  %580 = load i32, i32* @XHCI_ZERO_64B_REGS, align 4
  %581 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %582 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 4
  %584 = or i32 %583, %580
  store i32 %584, i32* %582, align 4
  br label %585

585:                                              ; preds = %574, %569, %563
  %586 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %587 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %586, i32 0, i32 0
  %588 = load i64, i64* %587, align 8
  %589 = load i64, i64* @PCI_VENDOR_ID_RENESAS, align 8
  %590 = icmp eq i64 %588, %589
  br i1 %590, label %591, label %607

591:                                              ; preds = %585
  %592 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %593 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %592, i32 0, i32 1
  %594 = load i32, i32* %593, align 8
  %595 = icmp eq i32 %594, 21
  br i1 %595, label %596, label %607

596:                                              ; preds = %591
  %597 = load i32, i32* @XHCI_RESET_ON_RESUME, align 4
  %598 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %599 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 4
  %601 = or i32 %600, %597
  store i32 %601, i32* %599, align 4
  %602 = load i32, i32* @XHCI_ZERO_64B_REGS, align 4
  %603 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %604 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  %606 = or i32 %605, %602
  store i32 %606, i32* %604, align 4
  br label %607

607:                                              ; preds = %596, %591, %585
  %608 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %609 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %608, i32 0, i32 0
  %610 = load i64, i64* %609, align 8
  %611 = load i64, i64* @PCI_VENDOR_ID_VIA, align 8
  %612 = icmp eq i64 %610, %611
  br i1 %612, label %613, label %619

613:                                              ; preds = %607
  %614 = load i32, i32* @XHCI_RESET_ON_RESUME, align 4
  %615 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %616 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 4
  %618 = or i32 %617, %614
  store i32 %618, i32* %616, align 4
  br label %619

619:                                              ; preds = %613, %607
  %620 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %621 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %620, i32 0, i32 0
  %622 = load i64, i64* %621, align 8
  %623 = load i64, i64* @PCI_VENDOR_ID_VIA, align 8
  %624 = icmp eq i64 %622, %623
  br i1 %624, label %625, label %636

625:                                              ; preds = %619
  %626 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %627 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %626, i32 0, i32 1
  %628 = load i32, i32* %627, align 8
  %629 = icmp eq i32 %628, 13362
  br i1 %629, label %630, label %636

630:                                              ; preds = %625
  %631 = load i32, i32* @XHCI_BROKEN_STREAMS, align 4
  %632 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %633 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 4
  %635 = or i32 %634, %631
  store i32 %635, i32* %633, align 4
  br label %636

636:                                              ; preds = %630, %625, %619
  %637 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %638 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %637, i32 0, i32 0
  %639 = load i64, i64* %638, align 8
  %640 = load i64, i64* @PCI_VENDOR_ID_ASMEDIA, align 8
  %641 = icmp eq i64 %639, %640
  br i1 %641, label %642, label %653

642:                                              ; preds = %636
  %643 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %644 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %643, i32 0, i32 1
  %645 = load i32, i32* %644, align 8
  %646 = icmp eq i32 %645, 4162
  br i1 %646, label %647, label %653

647:                                              ; preds = %642
  %648 = load i32, i32* @XHCI_BROKEN_STREAMS, align 4
  %649 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %650 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 4
  %652 = or i32 %651, %648
  store i32 %652, i32* %650, align 4
  br label %653

653:                                              ; preds = %647, %642, %636
  %654 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %655 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %654, i32 0, i32 0
  %656 = load i64, i64* %655, align 8
  %657 = load i64, i64* @PCI_VENDOR_ID_ASMEDIA, align 8
  %658 = icmp eq i64 %656, %657
  br i1 %658, label %659, label %670

659:                                              ; preds = %653
  %660 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %661 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %660, i32 0, i32 1
  %662 = load i32, i32* %661, align 8
  %663 = icmp eq i32 %662, 4418
  br i1 %663, label %664, label %670

664:                                              ; preds = %659
  %665 = load i32, i32* @XHCI_TRUST_TX_LENGTH, align 4
  %666 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %667 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 4
  %669 = or i32 %668, %665
  store i32 %669, i32* %667, align 4
  br label %670

670:                                              ; preds = %664, %659, %653
  %671 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %672 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %671, i32 0, i32 0
  %673 = load i64, i64* %672, align 8
  %674 = load i64, i64* @PCI_VENDOR_ID_ASMEDIA, align 8
  %675 = icmp eq i64 %673, %674
  br i1 %675, label %676, label %688

676:                                              ; preds = %670
  %677 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %678 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %677, i32 0, i32 1
  %679 = load i32, i32* %678, align 8
  %680 = load i32, i32* @PCI_DEVICE_ID_ASMEDIA_1042A_XHCI, align 4
  %681 = icmp eq i32 %679, %680
  br i1 %681, label %682, label %688

682:                                              ; preds = %676
  %683 = load i32, i32* @XHCI_ASMEDIA_MODIFY_FLOWCONTROL, align 4
  %684 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %685 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %684, i32 0, i32 0
  %686 = load i32, i32* %685, align 4
  %687 = or i32 %686, %683
  store i32 %687, i32* %685, align 4
  br label %688

688:                                              ; preds = %682, %676, %670
  %689 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %690 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %689, i32 0, i32 0
  %691 = load i64, i64* %690, align 8
  %692 = load i64, i64* @PCI_VENDOR_ID_TI, align 8
  %693 = icmp eq i64 %691, %692
  br i1 %693, label %694, label %705

694:                                              ; preds = %688
  %695 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %696 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %695, i32 0, i32 1
  %697 = load i32, i32* %696, align 8
  %698 = icmp eq i32 %697, 33345
  br i1 %698, label %699, label %705

699:                                              ; preds = %694
  %700 = load i32, i32* @XHCI_LIMIT_ENDPOINT_INTERVAL_7, align 4
  %701 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %702 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 4
  %704 = or i32 %703, %700
  store i32 %704, i32* %702, align 4
  br label %705

705:                                              ; preds = %699, %694, %688
  %706 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %707 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %706, i32 0, i32 0
  %708 = load i64, i64* %707, align 8
  %709 = load i64, i64* @PCI_VENDOR_ID_BROADCOM, align 8
  %710 = icmp eq i64 %708, %709
  br i1 %710, label %717, label %711

711:                                              ; preds = %705
  %712 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %713 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %712, i32 0, i32 0
  %714 = load i64, i64* %713, align 8
  %715 = load i64, i64* @PCI_VENDOR_ID_CAVIUM, align 8
  %716 = icmp eq i64 %714, %715
  br i1 %716, label %717, label %728

717:                                              ; preds = %711, %705
  %718 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %719 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %718, i32 0, i32 1
  %720 = load i32, i32* %719, align 8
  %721 = icmp eq i32 %720, 36902
  br i1 %721, label %722, label %728

722:                                              ; preds = %717
  %723 = load i32, i32* @XHCI_RESET_PLL_ON_DISCONNECT, align 4
  %724 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %725 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 4
  %727 = or i32 %726, %723
  store i32 %727, i32* %725, align 4
  br label %728

728:                                              ; preds = %722, %717, %711
  %729 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %730 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %729, i32 0, i32 0
  %731 = load i32, i32* %730, align 4
  %732 = load i32, i32* @XHCI_RESET_ON_RESUME, align 4
  %733 = and i32 %731, %732
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %739

735:                                              ; preds = %728
  %736 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %737 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %738 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %736, i32 %737, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %739

739:                                              ; preds = %735, %728
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*, ...) #1

declare dso_local i64 @usb_amd_quirk_pll_check(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
