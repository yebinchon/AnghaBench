; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_hub_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_hub_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_10__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_hub_descriptor = type { i32, i32, i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"ClearHubFeature %1xh\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ClearHubFeature request %1xh unknown\0A\00", align 1
@USB_PORT_FEAT_L1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ClearPortFeature USB_PORT_FEAT_ENABLE\0A\00", align 1
@HPRT0_ENA = common dso_local global i32 0, align 4
@HPRT0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"ClearPortFeature USB_PORT_FEAT_SUSPEND\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"ClearPortFeature USB_PORT_FEAT_POWER\0A\00", align 1
@HPRT0_PWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"ClearPortFeature USB_PORT_FEAT_INDICATOR\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"ClearPortFeature USB_PORT_FEAT_C_CONNECTION\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"ClearPortFeature USB_PORT_FEAT_C_RESET\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"ClearPortFeature USB_PORT_FEAT_C_ENABLE\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"ClearPortFeature USB_PORT_FEAT_C_SUSPEND\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"ClearPortFeature USB_PORT_FEAT_C_PORT_L1\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"ClearPortFeature USB_PORT_FEAT_C_OVER_CURRENT\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"ClearPortFeature request %1xh unknown or unsupported\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"GetHubDescriptor\0A\00", align 1
@USB_DT_HUB = common dso_local global i32 0, align 4
@HUB_CHAR_COMMON_LPSM = common dso_local global i32 0, align 4
@HUB_CHAR_INDV_PORT_OCPM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"GetHubStatus\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"GetPortStatus wIndex=0x%04x flags=0x%08x\0A\00", align 1
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_ENABLE = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_SUSPEND = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_L1 = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_RESET = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"Overcurrent change detected\0A\00", align 1
@USB_PORT_STAT_C_OVERCURRENT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"  HPRT0: 0x%08x\0A\00", align 1
@HPRT0_CONNSTS = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@HPRT0_SUSP = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@HPRT0_OVRCURRACT = common dso_local global i32 0, align 4
@USB_PORT_STAT_OVERCURRENT = common dso_local global i32 0, align 4
@HPRT0_RST = common dso_local global i32 0, align 4
@USB_PORT_STAT_RESET = common dso_local global i32 0, align 4
@USB_PORT_STAT_POWER = common dso_local global i32 0, align 4
@HPRT0_SPD_MASK = common dso_local global i32 0, align 4
@HPRT0_SPD_SHIFT = common dso_local global i32 0, align 4
@HPRT0_SPD_HIGH_SPEED = common dso_local global i32 0, align 4
@USB_PORT_STAT_HIGH_SPEED = common dso_local global i32 0, align 4
@HPRT0_SPD_LOW_SPEED = common dso_local global i32 0, align 4
@USB_PORT_STAT_LOW_SPEED = common dso_local global i32 0, align 4
@HPRT0_TSTCTL_MASK = common dso_local global i32 0, align 4
@USB_PORT_STAT_TEST = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"Enabling descriptor DMA mode\0A\00", align 1
@HCFG = common dso_local global i32 0, align 4
@HCFG_DESCDMA = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"port_status=%08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"SetHubFeature\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SetPortFeature\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"SetPortFeature - USB_PORT_FEAT_SUSPEND\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"SetPortFeature - USB_PORT_FEAT_POWER\0A\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"SetPortFeature - USB_PORT_FEAT_RESET\0A\00", align 1
@PCGCTL = common dso_local global i32 0, align 4
@PCGCTL_ENBL_SLEEP_GATING = common dso_local global i32 0, align 4
@PCGCTL_STOPPCLK = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [26 x i8] c"In host mode, hprt0=%08x\0A\00", align 1
@DWC2_L0 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [42 x i8] c"SetPortFeature - USB_PORT_FEAT_INDICATOR\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"SetPortFeature - USB_PORT_FEAT_TEST\0A\00", align 1
@HPRT0_TSTCTL_SHIFT = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [44 x i8] c"SetPortFeature %1xh unknown or unsupported\0A\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"Unknown hub control request: %1xh wIndex: %1xh wValue: %1xh\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, i32, i32, i32, i8*, i32)* @dwc2_hcd_hub_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_hcd_hub_control(%struct.dwc2_hsotg* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.dwc2_hsotg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_hub_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %668 [
    i32 146, label %22
    i32 145, label %39
    i32 144, label %181
    i32 143, label %217
    i32 142, label %224
    i32 141, label %473
    i32 140, label %478
  ]

22:                                               ; preds = %6
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %24 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i32, i8*, ...) @dev_dbg(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %30 [
    i32 148, label %29
    i32 147, label %29
  ]

29:                                               ; preds = %22, %22
  br label %38

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %14, align 4
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %30, %29
  br label %679

39:                                               ; preds = %6
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @USB_PORT_FEAT_L1, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43
  br label %669

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %39
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %172 [
    i32 133, label %53
    i32 129, label %67
    i32 131, label %89
    i32 132, label %113
    i32 139, label %118
    i32 135, label %127
    i32 138, label %136
    i32 134, label %145
    i32 136, label %154
    i32 137, label %163
  ]

53:                                               ; preds = %51
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %55 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %59 = call i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @HPRT0_ENA, align 4
  %61 = load i32, i32* %15, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %15, align 4
  %63 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @HPRT0, align 4
  %66 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %63, i32 %64, i32 %65)
  br label %180

67:                                               ; preds = %51
  %68 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %69 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %73 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %67
  %77 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %78 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %83 = call i32 @dwc2_exit_hibernation(%struct.dwc2_hsotg* %82, i32 0, i32 0, i32 1)
  br label %87

84:                                               ; preds = %76
  %85 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %86 = call i32 @dwc2_port_resume(%struct.dwc2_hsotg* %85)
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %67
  br label %180

89:                                               ; preds = %51
  %90 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %91 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @dev_dbg(i32 %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %94 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %95 = call i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @HPRT0_PWR, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* @HPRT0_PWR, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %15, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %15, align 4
  %103 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @HPRT0, align 4
  %106 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %89
  %110 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %111 = call i32 @dwc2_vbus_supply_exit(%struct.dwc2_hsotg* %110)
  br label %112

112:                                              ; preds = %109, %89
  br label %180

113:                                              ; preds = %51
  %114 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %115 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @dev_dbg(i32 %116, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %180

118:                                              ; preds = %51
  %119 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %120 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @dev_dbg(i32 %121, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %123 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %124 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 6
  store i32 0, i32* %126, align 4
  br label %180

127:                                              ; preds = %51
  %128 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %129 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, ...) @dev_dbg(i32 %130, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %132 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %133 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  store i32 0, i32* %135, align 4
  br label %180

136:                                              ; preds = %51
  %137 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %138 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @dev_dbg(i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %141 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %142 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 5
  store i32 0, i32* %144, align 4
  br label %180

145:                                              ; preds = %51
  %146 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %147 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @dev_dbg(i32 %148, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %150 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %151 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 4
  store i32 0, i32* %153, align 4
  br label %180

154:                                              ; preds = %51
  %155 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %156 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i8*, ...) @dev_dbg(i32 %157, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %159 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %160 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 3
  store i32 0, i32* %162, align 4
  br label %180

163:                                              ; preds = %51
  %164 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %165 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, i8*, ...) @dev_dbg(i32 %166, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %168 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %169 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  store i32 0, i32* %171, align 4
  br label %180

172:                                              ; preds = %51
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %14, align 4
  %175 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %176 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @dev_err(i32 %177, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %172, %163, %154, %145, %136, %127, %118, %113, %112, %88, %53
  br label %679

181:                                              ; preds = %6
  %182 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %183 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, ...) @dev_dbg(i32 %184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %186 = load i8*, i8** %11, align 8
  %187 = bitcast i8* %186 to %struct.usb_hub_descriptor*
  store %struct.usb_hub_descriptor* %187, %struct.usb_hub_descriptor** %13, align 8
  %188 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %13, align 8
  %189 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %188, i32 0, i32 0
  store i32 9, i32* %189, align 8
  %190 = load i32, i32* @USB_DT_HUB, align 4
  %191 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %13, align 8
  %192 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %191, i32 0, i32 6
  store i32 %190, i32* %192, align 8
  %193 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %13, align 8
  %194 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %193, i32 0, i32 1
  store i32 1, i32* %194, align 4
  %195 = load i32, i32* @HUB_CHAR_COMMON_LPSM, align 4
  %196 = load i32, i32* @HUB_CHAR_INDV_PORT_OCPM, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @cpu_to_le16(i32 %197)
  %199 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %13, align 8
  %200 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  %201 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %13, align 8
  %202 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %201, i32 0, i32 2
  store i32 1, i32* %202, align 8
  %203 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %13, align 8
  %204 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %203, i32 0, i32 4
  store i32 0, i32* %204, align 8
  %205 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %13, align 8
  %206 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 0, i32* %210, align 4
  %211 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %13, align 8
  %212 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 255, i32* %216, align 4
  br label %679

217:                                              ; preds = %6
  %218 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %219 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i32, i8*, ...) @dev_dbg(i32 %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %222 = load i8*, i8** %11, align 8
  %223 = call i32 @memset(i8* %222, i32 0, i32 4)
  br label %679

224:                                              ; preds = %6
  %225 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %226 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %10, align 4
  %229 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %230 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %229, i32 0, i32 6
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (i32, i8*, i32, ...) @dev_vdbg(i32 %227, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %228, i32 %232)
  %234 = load i32, i32* %10, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %224
  %237 = load i32, i32* %10, align 4
  %238 = icmp sgt i32 %237, 1
  br i1 %238, label %239, label %240

239:                                              ; preds = %236, %224
  br label %669

240:                                              ; preds = %236
  store i32 0, i32* %16, align 4
  %241 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %242 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %240
  %248 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %249 = shl i32 %248, 16
  %250 = load i32, i32* %16, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %16, align 4
  br label %252

252:                                              ; preds = %247, %240
  %253 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %254 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %253, i32 0, i32 6
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %252
  %260 = load i32, i32* @USB_PORT_STAT_C_ENABLE, align 4
  %261 = shl i32 %260, 16
  %262 = load i32, i32* %16, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %16, align 4
  br label %264

264:                                              ; preds = %259, %252
  %265 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %266 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %265, i32 0, i32 6
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %264
  %272 = load i32, i32* @USB_PORT_STAT_C_SUSPEND, align 4
  %273 = shl i32 %272, 16
  %274 = load i32, i32* %16, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %16, align 4
  br label %276

276:                                              ; preds = %271, %264
  %277 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %278 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %277, i32 0, i32 6
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %276
  %284 = load i32, i32* @USB_PORT_STAT_C_L1, align 4
  %285 = shl i32 %284, 16
  %286 = load i32, i32* %16, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %16, align 4
  br label %288

288:                                              ; preds = %283, %276
  %289 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %290 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %289, i32 0, i32 6
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %288
  %296 = load i32, i32* @USB_PORT_STAT_C_RESET, align 4
  %297 = shl i32 %296, 16
  %298 = load i32, i32* %16, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %16, align 4
  br label %300

300:                                              ; preds = %295, %288
  %301 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %302 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %301, i32 0, i32 6
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %316

307:                                              ; preds = %300
  %308 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %309 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @dev_warn(i32 %310, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %312 = load i32, i32* @USB_PORT_STAT_C_OVERCURRENT, align 4
  %313 = shl i32 %312, 16
  %314 = load i32, i32* %16, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %16, align 4
  br label %316

316:                                              ; preds = %307, %300
  %317 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %318 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %317, i32 0, i32 6
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %316
  %324 = load i32, i32* %16, align 4
  %325 = call i32 @cpu_to_le32(i32 %324)
  %326 = load i8*, i8** %11, align 8
  %327 = bitcast i8* %326 to i32*
  store i32 %325, i32* %327, align 4
  br label %679

328:                                              ; preds = %316
  %329 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %330 = load i32, i32* @HPRT0, align 4
  %331 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %329, i32 %330)
  store i32 %331, i32* %15, align 4
  %332 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %333 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %15, align 4
  %336 = call i32 (i32, i8*, i32, ...) @dev_vdbg(i32 %334, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %335)
  %337 = load i32, i32* %15, align 4
  %338 = load i32, i32* @HPRT0_CONNSTS, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %328
  %342 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %343 = load i32, i32* %16, align 4
  %344 = or i32 %343, %342
  store i32 %344, i32* %16, align 4
  br label %345

345:                                              ; preds = %341, %328
  %346 = load i32, i32* %15, align 4
  %347 = load i32, i32* @HPRT0_ENA, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %345
  %351 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %352 = load i32, i32* %16, align 4
  %353 = or i32 %352, %351
  store i32 %353, i32* %16, align 4
  br label %354

354:                                              ; preds = %350, %345
  %355 = load i32, i32* %15, align 4
  %356 = load i32, i32* @HPRT0_SUSP, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %354
  %360 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %361 = load i32, i32* %16, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %16, align 4
  br label %363

363:                                              ; preds = %359, %354
  %364 = load i32, i32* %15, align 4
  %365 = load i32, i32* @HPRT0_OVRCURRACT, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %363
  %369 = load i32, i32* @USB_PORT_STAT_OVERCURRENT, align 4
  %370 = load i32, i32* %16, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %16, align 4
  br label %372

372:                                              ; preds = %368, %363
  %373 = load i32, i32* %15, align 4
  %374 = load i32, i32* @HPRT0_RST, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %372
  %378 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %379 = load i32, i32* %16, align 4
  %380 = or i32 %379, %378
  store i32 %380, i32* %16, align 4
  br label %381

381:                                              ; preds = %377, %372
  %382 = load i32, i32* %15, align 4
  %383 = load i32, i32* @HPRT0_PWR, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %381
  %387 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  %388 = load i32, i32* %16, align 4
  %389 = or i32 %388, %387
  store i32 %389, i32* %16, align 4
  br label %390

390:                                              ; preds = %386, %381
  %391 = load i32, i32* %15, align 4
  %392 = load i32, i32* @HPRT0_SPD_MASK, align 4
  %393 = and i32 %391, %392
  %394 = load i32, i32* @HPRT0_SPD_SHIFT, align 4
  %395 = ashr i32 %393, %394
  store i32 %395, i32* %17, align 4
  %396 = load i32, i32* %17, align 4
  %397 = load i32, i32* @HPRT0_SPD_HIGH_SPEED, align 4
  %398 = icmp eq i32 %396, %397
  br i1 %398, label %399, label %403

399:                                              ; preds = %390
  %400 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  %401 = load i32, i32* %16, align 4
  %402 = or i32 %401, %400
  store i32 %402, i32* %16, align 4
  br label %412

403:                                              ; preds = %390
  %404 = load i32, i32* %17, align 4
  %405 = load i32, i32* @HPRT0_SPD_LOW_SPEED, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %411

407:                                              ; preds = %403
  %408 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  %409 = load i32, i32* %16, align 4
  %410 = or i32 %409, %408
  store i32 %410, i32* %16, align 4
  br label %411

411:                                              ; preds = %407, %403
  br label %412

412:                                              ; preds = %411, %399
  %413 = load i32, i32* %15, align 4
  %414 = load i32, i32* @HPRT0_TSTCTL_MASK, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %412
  %418 = load i32, i32* @USB_PORT_STAT_TEST, align 4
  %419 = load i32, i32* %16, align 4
  %420 = or i32 %419, %418
  store i32 %420, i32* %16, align 4
  br label %421

421:                                              ; preds = %417, %412
  %422 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %423 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %463

427:                                              ; preds = %421
  %428 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %429 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %462

432:                                              ; preds = %427
  %433 = load i32, i32* %16, align 4
  %434 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %435 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  %436 = or i32 %434, %435
  %437 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  %438 = or i32 %436, %437
  %439 = and i32 %433, %438
  %440 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %442, label %462

442:                                              ; preds = %432
  %443 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %444 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @dev_info(i32 %445, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %447 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %448 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %447, i32 0, i32 5
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 0
  store i32 1, i32* %449, align 4
  %450 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %451 = load i32, i32* @HCFG, align 4
  %452 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %450, i32 %451)
  store i32 %452, i32* %20, align 4
  %453 = load i32, i32* @HCFG_DESCDMA, align 4
  %454 = load i32, i32* %20, align 4
  %455 = or i32 %454, %453
  store i32 %455, i32* %20, align 4
  %456 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %457 = load i32, i32* %20, align 4
  %458 = load i32, i32* @HCFG, align 4
  %459 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %456, i32 %457, i32 %458)
  %460 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %461 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %460, i32 0, i32 0
  store i32 0, i32* %461, align 4
  br label %462

462:                                              ; preds = %442, %432, %427
  br label %463

463:                                              ; preds = %462, %421
  %464 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %465 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* %16, align 4
  %468 = call i32 (i32, i8*, i32, ...) @dev_vdbg(i32 %466, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %467)
  %469 = load i32, i32* %16, align 4
  %470 = call i32 @cpu_to_le32(i32 %469)
  %471 = load i8*, i8** %11, align 8
  %472 = bitcast i8* %471 to i32*
  store i32 %470, i32* %472, align 4
  br label %679

473:                                              ; preds = %6
  %474 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %475 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 4
  %477 = call i32 (i32, i8*, ...) @dev_dbg(i32 %476, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  br label %679

478:                                              ; preds = %6
  %479 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %480 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 4
  %482 = call i32 (i32, i8*, ...) @dev_dbg(i32 %481, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  %483 = load i32, i32* %9, align 4
  %484 = icmp ne i32 %483, 128
  br i1 %484, label %485, label %492

485:                                              ; preds = %478
  %486 = load i32, i32* %10, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %485
  %489 = load i32, i32* %10, align 4
  %490 = icmp sgt i32 %489, 1
  br i1 %490, label %491, label %492

491:                                              ; preds = %488, %485
  br label %669

492:                                              ; preds = %488, %478
  %493 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %494 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %493, i32 0, i32 6
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %500, label %499

499:                                              ; preds = %492
  br label %679

500:                                              ; preds = %492
  %501 = load i32, i32* %9, align 4
  switch i32 %501, label %659 [
    i32 129, label %502
    i32 131, label %527
    i32 130, label %550
    i32 132, label %633
    i32 128, label %638
  ]

502:                                              ; preds = %500
  %503 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %504 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 4
  %506 = call i32 (i32, i8*, ...) @dev_dbg(i32 %505, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0))
  %507 = load i32, i32* %10, align 4
  %508 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %509 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = icmp ne i32 %507, %510
  br i1 %511, label %512, label %513

512:                                              ; preds = %502
  br label %669

513:                                              ; preds = %502
  %514 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %515 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %514, i32 0, i32 5
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = icmp eq i32 %517, 2
  br i1 %518, label %519, label %522

519:                                              ; preds = %513
  %520 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %521 = call i32 @dwc2_enter_hibernation(%struct.dwc2_hsotg* %520, i32 1)
  br label %526

522:                                              ; preds = %513
  %523 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %524 = load i32, i32* %10, align 4
  %525 = call i32 @dwc2_port_suspend(%struct.dwc2_hsotg* %523, i32 %524)
  br label %526

526:                                              ; preds = %522, %519
  br label %667

527:                                              ; preds = %500
  %528 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %529 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %528, i32 0, i32 2
  %530 = load i32, i32* %529, align 4
  %531 = call i32 (i32, i8*, ...) @dev_dbg(i32 %530, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0))
  %532 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %533 = call i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %532)
  store i32 %533, i32* %15, align 4
  %534 = load i32, i32* %15, align 4
  %535 = load i32, i32* @HPRT0_PWR, align 4
  %536 = and i32 %534, %535
  store i32 %536, i32* %19, align 4
  %537 = load i32, i32* @HPRT0_PWR, align 4
  %538 = load i32, i32* %15, align 4
  %539 = or i32 %538, %537
  store i32 %539, i32* %15, align 4
  %540 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %541 = load i32, i32* %15, align 4
  %542 = load i32, i32* @HPRT0, align 4
  %543 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %540, i32 %541, i32 %542)
  %544 = load i32, i32* %19, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %549, label %546

546:                                              ; preds = %527
  %547 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %548 = call i32 @dwc2_vbus_supply_init(%struct.dwc2_hsotg* %547)
  br label %549

549:                                              ; preds = %546, %527
  br label %667

550:                                              ; preds = %500
  %551 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %552 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %551, i32 0, i32 5
  %553 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  %555 = icmp eq i32 %554, 2
  br i1 %555, label %556, label %564

556:                                              ; preds = %550
  %557 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %558 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %557, i32 0, i32 4
  %559 = load i32, i32* %558, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %564

561:                                              ; preds = %556
  %562 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %563 = call i32 @dwc2_exit_hibernation(%struct.dwc2_hsotg* %562, i32 0, i32 1, i32 1)
  br label %564

564:                                              ; preds = %561, %556, %550
  %565 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %566 = call i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %565)
  store i32 %566, i32* %15, align 4
  %567 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %568 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %567, i32 0, i32 2
  %569 = load i32, i32* %568, align 4
  %570 = call i32 (i32, i8*, ...) @dev_dbg(i32 %569, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0))
  %571 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %572 = load i32, i32* @PCGCTL, align 4
  %573 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %571, i32 %572)
  store i32 %573, i32* %18, align 4
  %574 = load i32, i32* @PCGCTL_ENBL_SLEEP_GATING, align 4
  %575 = load i32, i32* @PCGCTL_STOPPCLK, align 4
  %576 = or i32 %574, %575
  %577 = xor i32 %576, -1
  %578 = load i32, i32* %18, align 4
  %579 = and i32 %578, %577
  store i32 %579, i32* %18, align 4
  %580 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %581 = load i32, i32* %18, align 4
  %582 = load i32, i32* @PCGCTL, align 4
  %583 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %580, i32 %581, i32 %582)
  %584 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %585 = load i32, i32* @PCGCTL, align 4
  %586 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %584, i32 0, i32 %585)
  %587 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %588 = call i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %587)
  store i32 %588, i32* %15, align 4
  %589 = load i32, i32* %15, align 4
  %590 = load i32, i32* @HPRT0_PWR, align 4
  %591 = and i32 %589, %590
  store i32 %591, i32* %19, align 4
  %592 = load i32, i32* @HPRT0_SUSP, align 4
  %593 = xor i32 %592, -1
  %594 = load i32, i32* %15, align 4
  %595 = and i32 %594, %593
  store i32 %595, i32* %15, align 4
  %596 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %597 = call i32 @dwc2_hcd_is_b_host(%struct.dwc2_hsotg* %596)
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %620, label %599

599:                                              ; preds = %564
  %600 = load i32, i32* @HPRT0_PWR, align 4
  %601 = load i32, i32* @HPRT0_RST, align 4
  %602 = or i32 %600, %601
  %603 = load i32, i32* %15, align 4
  %604 = or i32 %603, %602
  store i32 %604, i32* %15, align 4
  %605 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %606 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %605, i32 0, i32 2
  %607 = load i32, i32* %606, align 4
  %608 = load i32, i32* %15, align 4
  %609 = call i32 (i32, i8*, ...) @dev_dbg(i32 %607, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i32 %608)
  %610 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %611 = load i32, i32* %15, align 4
  %612 = load i32, i32* @HPRT0, align 4
  %613 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %610, i32 %611, i32 %612)
  %614 = load i32, i32* %19, align 4
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %619, label %616

616:                                              ; preds = %599
  %617 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %618 = call i32 @dwc2_vbus_supply_init(%struct.dwc2_hsotg* %617)
  br label %619

619:                                              ; preds = %616, %599
  br label %620

620:                                              ; preds = %619, %564
  %621 = call i32 @msleep(i32 50)
  %622 = load i32, i32* @HPRT0_RST, align 4
  %623 = xor i32 %622, -1
  %624 = load i32, i32* %15, align 4
  %625 = and i32 %624, %623
  store i32 %625, i32* %15, align 4
  %626 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %627 = load i32, i32* %15, align 4
  %628 = load i32, i32* @HPRT0, align 4
  %629 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %626, i32 %627, i32 %628)
  %630 = load i32, i32* @DWC2_L0, align 4
  %631 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %632 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %631, i32 0, i32 3
  store i32 %630, i32* %632, align 4
  br label %667

633:                                              ; preds = %500
  %634 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %635 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %634, i32 0, i32 2
  %636 = load i32, i32* %635, align 4
  %637 = call i32 (i32, i8*, ...) @dev_dbg(i32 %636, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0))
  br label %667

638:                                              ; preds = %500
  %639 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %640 = call i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %639)
  store i32 %640, i32* %15, align 4
  %641 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %642 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %641, i32 0, i32 2
  %643 = load i32, i32* %642, align 4
  %644 = call i32 (i32, i8*, ...) @dev_dbg(i32 %643, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0))
  %645 = load i32, i32* @HPRT0_TSTCTL_MASK, align 4
  %646 = xor i32 %645, -1
  %647 = load i32, i32* %15, align 4
  %648 = and i32 %647, %646
  store i32 %648, i32* %15, align 4
  %649 = load i32, i32* %10, align 4
  %650 = ashr i32 %649, 8
  %651 = load i32, i32* @HPRT0_TSTCTL_SHIFT, align 4
  %652 = shl i32 %650, %651
  %653 = load i32, i32* %15, align 4
  %654 = or i32 %653, %652
  store i32 %654, i32* %15, align 4
  %655 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %656 = load i32, i32* %15, align 4
  %657 = load i32, i32* @HPRT0, align 4
  %658 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %655, i32 %656, i32 %657)
  br label %667

659:                                              ; preds = %500
  %660 = load i32, i32* @EINVAL, align 4
  %661 = sub nsw i32 0, %660
  store i32 %661, i32* %14, align 4
  %662 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %663 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %662, i32 0, i32 2
  %664 = load i32, i32* %663, align 4
  %665 = load i32, i32* %9, align 4
  %666 = call i32 @dev_err(i32 %664, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i64 0, i64 0), i32 %665)
  br label %667

667:                                              ; preds = %659, %638, %633, %620, %549, %526
  br label %679

668:                                              ; preds = %6
  br label %669

669:                                              ; preds = %668, %512, %491, %239, %49
  %670 = load i32, i32* @EINVAL, align 4
  %671 = sub nsw i32 0, %670
  store i32 %671, i32* %14, align 4
  %672 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %673 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %672, i32 0, i32 2
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* %8, align 4
  %676 = load i32, i32* %10, align 4
  %677 = load i32, i32* %9, align 4
  %678 = call i32 (i32, i8*, ...) @dev_dbg(i32 %674, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.29, i64 0, i64 0), i32 %675, i32 %676, i32 %677)
  br label %679

679:                                              ; preds = %669, %667, %499, %473, %463, %323, %217, %181, %180, %38
  %680 = load i32, i32* %14, align 4
  ret i32 %680
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dwc2_read_hprt0(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dwc2_exit_hibernation(%struct.dwc2_hsotg*, i32, i32, i32) #1

declare dso_local i32 @dwc2_port_resume(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_vbus_supply_exit(%struct.dwc2_hsotg*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dwc2_enter_hibernation(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_port_suspend(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_vbus_supply_init(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hcd_is_b_host(%struct.dwc2_hsotg*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
