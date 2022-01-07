; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_handle_otg_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_handle_otg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i8*, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@GOTGINT = common dso_local global i32 0, align 4
@GOTGCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"++OTG Interrupt gotgint=%0x [%s]\0A\00", align 1
@GOTGINT_SES_END_DET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c" ++OTG Interrupt: Session End Detected++ (%s)\0A\00", align 1
@OTG_STATE_B_HOST = common dso_local global i8* null, align 8
@OTG_STATE_B_PERIPHERAL = common dso_local global i8* null, align 8
@GOTGCTL_DEVHNPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Session End Detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Device Not Connected/Responding!\0A\00", align 1
@DWC2_L0 = common dso_local global i32 0, align 4
@GOTGINT_SES_REQ_SUC_STS_CHNG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c" ++OTG Interrupt: Session Request Success Status Change++\0A\00", align 1
@GOTGCTL_SESREQSCS = common dso_local global i32 0, align 4
@DWC2_PHY_TYPE_PARAM_FS = common dso_local global i64 0, align 8
@GOTGCTL_SESREQ = common dso_local global i32 0, align 4
@GOTGINT_HST_NEG_SUC_STS_CHNG = common dso_local global i32 0, align 4
@DWC2_CORE_REV_3_00a = common dso_local global i64 0, align 8
@GOTGCTL_HSTNEGSCS = common dso_local global i32 0, align 4
@GINTMSK = common dso_local global i32 0, align 4
@GINTSTS_SOF = common dso_local global i32 0, align 4
@GOTGCTL_HNPREQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"HNP Failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Device Not Connected/Responding\0A\00", align 1
@GOTGINT_HST_NEG_DET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c" ++OTG Interrupt: Host Negotiation Detected++ (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"a_suspend->a_peripheral (%d)\0A\00", align 1
@OTG_STATE_A_PERIPHERAL = common dso_local global i8* null, align 8
@OTG_STATE_A_HOST = common dso_local global i8* null, align 8
@GOTGINT_A_DEV_TOUT_CHG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c" ++OTG Interrupt: A-Device Timeout Change++\0A\00", align 1
@GOTGINT_DBNCE_DONE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c" ++OTG Interrupt: Debounce Done++\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_handle_otg_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_handle_otg_intr(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %7 = load i32, i32* @GOTGINT, align 4
  %8 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %10 = load i32, i32* @GOTGCTL, align 4
  %11 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %17 = call i32 @dwc2_op_state_str(%struct.dwc2_hsotg* %16)
  %18 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @GOTGINT_SES_END_DET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %79

23:                                               ; preds = %1
  %24 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %25 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %28 = call i32 @dwc2_op_state_str(%struct.dwc2_hsotg* %27)
  %29 = call i32 (i32, i8*, ...) @dev_dbg(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %31 = load i32, i32* @GOTGCTL, align 4
  %32 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %34 = call i64 @dwc2_is_device_mode(%struct.dwc2_hsotg* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %38 = call i32 @dwc2_hsotg_disconnect(%struct.dwc2_hsotg* %37)
  br label %39

39:                                               ; preds = %36, %23
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %41 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** @OTG_STATE_B_HOST, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i8*, i8** @OTG_STATE_B_PERIPHERAL, align 8
  %47 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %48 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %67

49:                                               ; preds = %39
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @GOTGCTL_DEVHNPEN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %56 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %60 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %54, %49
  %64 = load i32, i32* @DWC2_L0, align 4
  %65 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %66 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %45
  %68 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %69 = load i32, i32* @GOTGCTL, align 4
  %70 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @GOTGCTL_DEVHNPEN, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @GOTGCTL, align 4
  %78 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %67, %1
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @GOTGINT_SES_REQ_SUC_STS_CHNG, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %126

84:                                               ; preds = %79
  %85 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %86 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @dev_dbg(i32 %87, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %90 = load i32, i32* @GOTGCTL, align 4
  %91 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @GOTGCTL_SESREQSCS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %125

96:                                               ; preds = %84
  %97 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %98 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DWC2_PHY_TYPE_PARAM_FS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %105 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %111 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %110, i32 0, i32 1
  store i32 1, i32* %111, align 8
  br label %124

112:                                              ; preds = %103, %96
  %113 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %114 = load i32, i32* @GOTGCTL, align 4
  %115 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %113, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* @GOTGCTL_SESREQ, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %4, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %4, align 4
  %120 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @GOTGCTL, align 4
  %123 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %112, %109
  br label %125

125:                                              ; preds = %124, %84
  br label %126

126:                                              ; preds = %125, %79
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @GOTGINT_HST_NEG_SUC_STS_CHNG, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %202

131:                                              ; preds = %126
  %132 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %133 = load i32, i32* @GOTGCTL, align 4
  %134 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %132, i32 %133)
  store i32 %134, i32* %4, align 4
  %135 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %136 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @DWC2_CORE_REV_3_00a, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = call i32 @udelay(i32 100)
  br label %143

143:                                              ; preds = %141, %131
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @GOTGCTL_HSTNEGSCS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %143
  %149 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %150 = call i64 @dwc2_is_host_mode(%struct.dwc2_hsotg* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %178

152:                                              ; preds = %148
  %153 = load i8*, i8** @OTG_STATE_B_HOST, align 8
  %154 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %155 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %157 = load i32, i32* @GINTMSK, align 4
  %158 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %156, i32 %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* @GINTSTS_SOF, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %5, align 4
  %163 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @GINTMSK, align 4
  %166 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %163, i32 %164, i32 %165)
  %167 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %168 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %167, i32 0, i32 3
  %169 = call i32 @spin_unlock(i32* %168)
  %170 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %171 = call i32 @dwc2_hcd_start(%struct.dwc2_hsotg* %170)
  %172 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %173 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %172, i32 0, i32 3
  %174 = call i32 @spin_lock(i32* %173)
  %175 = load i8*, i8** @OTG_STATE_B_HOST, align 8
  %176 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %177 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  br label %178

178:                                              ; preds = %152, %148
  br label %201

179:                                              ; preds = %143
  %180 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %181 = load i32, i32* @GOTGCTL, align 4
  %182 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %180, i32 %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* @GOTGCTL_HNPREQ, align 4
  %184 = load i32, i32* @GOTGCTL_DEVHNPEN, align 4
  %185 = or i32 %183, %184
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %4, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %4, align 4
  %189 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @GOTGCTL, align 4
  %192 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %189, i32 %190, i32 %191)
  %193 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %194 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32, i8*, ...) @dev_dbg(i32 %195, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %197 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %198 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @dev_err(i32 %199, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %201

201:                                              ; preds = %179, %178
  br label %202

202:                                              ; preds = %201, %126
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* @GOTGINT_HST_NEG_DET, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %263

207:                                              ; preds = %202
  %208 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %209 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %212 = call i64 @dwc2_is_host_mode(%struct.dwc2_hsotg* %211)
  %213 = icmp ne i64 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  %216 = call i32 (i32, i8*, ...) @dev_dbg(i32 %210, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i8* %215)
  %217 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %218 = call i64 @dwc2_is_device_mode(%struct.dwc2_hsotg* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %239

220:                                              ; preds = %207
  %221 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %222 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %225 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 (i32, i8*, ...) @dev_dbg(i32 %223, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %226)
  %228 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %229 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %228, i32 0, i32 3
  %230 = call i32 @spin_unlock(i32* %229)
  %231 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %232 = call i32 @dwc2_hcd_disconnect(%struct.dwc2_hsotg* %231, i32 0)
  %233 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %234 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %233, i32 0, i32 3
  %235 = call i32 @spin_lock(i32* %234)
  %236 = load i8*, i8** @OTG_STATE_A_PERIPHERAL, align 8
  %237 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %238 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %237, i32 0, i32 0
  store i8* %236, i8** %238, align 8
  br label %262

239:                                              ; preds = %207
  %240 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %241 = load i32, i32* @GINTMSK, align 4
  %242 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %240, i32 %241)
  store i32 %242, i32* %5, align 4
  %243 = load i32, i32* @GINTSTS_SOF, align 4
  %244 = xor i32 %243, -1
  %245 = load i32, i32* %5, align 4
  %246 = and i32 %245, %244
  store i32 %246, i32* %5, align 4
  %247 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %248 = load i32, i32* %5, align 4
  %249 = load i32, i32* @GINTMSK, align 4
  %250 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %247, i32 %248, i32 %249)
  %251 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %252 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %251, i32 0, i32 3
  %253 = call i32 @spin_unlock(i32* %252)
  %254 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %255 = call i32 @dwc2_hcd_start(%struct.dwc2_hsotg* %254)
  %256 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %257 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %256, i32 0, i32 3
  %258 = call i32 @spin_lock(i32* %257)
  %259 = load i8*, i8** @OTG_STATE_A_HOST, align 8
  %260 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %261 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %260, i32 0, i32 0
  store i8* %259, i8** %261, align 8
  br label %262

262:                                              ; preds = %239, %220
  br label %263

263:                                              ; preds = %262, %202
  %264 = load i32, i32* %3, align 4
  %265 = load i32, i32* @GOTGINT_A_DEV_TOUT_CHG, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %270 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = call i32 (i32, i8*, ...) @dev_dbg(i32 %271, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  br label %273

273:                                              ; preds = %268, %263
  %274 = load i32, i32* %3, align 4
  %275 = load i32, i32* @GOTGINT_DBNCE_DONE, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %280 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i32, i8*, ...) @dev_dbg(i32 %281, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %283

283:                                              ; preds = %278, %273
  %284 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %285 = load i32, i32* %3, align 4
  %286 = load i32, i32* @GOTGINT, align 4
  %287 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %284, i32 %285, i32 %286)
  ret void
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dwc2_op_state_str(%struct.dwc2_hsotg*) #1

declare dso_local i64 @dwc2_is_device_mode(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hsotg_disconnect(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @dwc2_is_host_mode(%struct.dwc2_hsotg*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dwc2_hcd_start(%struct.dwc2_hsotg*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dwc2_hcd_disconnect(%struct.dwc2_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
