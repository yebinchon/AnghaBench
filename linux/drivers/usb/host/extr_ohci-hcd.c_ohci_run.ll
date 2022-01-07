; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c_ohci_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c_ohci_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32, i32, i32, i32, i64, %struct.TYPE_6__*, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.usb_hcd = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@OHCI_RH_HALTED = common dso_local global i32 0, align 4
@FI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"fminterval delta %d\0A\00", align 1
@OHCI_CTRL_RWC = common dso_local global i32 0, align 4
@OHCI_CTRL_HCFS = common dso_local global i32 0, align 4
@OHCI_USB_RESET = common dso_local global i32 0, align 4
@OHCI_HCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"USB HC reset timed out!\0A\00", align 1
@OHCI_QUIRK_INITRESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"enabling initreset quirk\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"init err (%08x %04x)\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@HCD_FLAG_POLL_RH = common dso_local global i32 0, align 4
@OHCI_CONTROL_INIT = common dso_local global i32 0, align 4
@OHCI_RH_RUNNING = common dso_local global i32 0, align 4
@RH_HS_DRWE = common dso_local global i32 0, align 4
@OHCI_INTR_INIT = common dso_local global i32 0, align 4
@RH_A_PSM = common dso_local global i32 0, align 4
@RH_A_OCPM = common dso_local global i32 0, align 4
@OHCI_QUIRK_SUPERIO = common dso_local global i32 0, align 4
@RH_A_NOCP = common dso_local global i32 0, align 4
@RH_A_POTPGT = common dso_local global i32 0, align 4
@RH_A_NPS = common dso_local global i32 0, align 4
@OHCI_QUIRK_AMD756 = common dso_local global i32 0, align 4
@OHCI_QUIRK_HUB_POWER = common dso_local global i32 0, align 4
@RH_HS_LPSC = common dso_local global i32 0, align 4
@RH_B_PPCM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@STATECHANGE_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ohci_hcd*)* @ohci_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_run(%struct.ohci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %3, align 8
  %8 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %14 = call %struct.usb_hcd* @ohci_to_hcd(%struct.ohci_hcd* %13)
  store %struct.usb_hcd* %14, %struct.usb_hcd** %7, align 8
  %15 = load i32, i32* @OHCI_RH_HALTED, align 4
  %16 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %17 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %1
  %21 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %22 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %23 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %22, i32 0, i32 5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = call i32 @ohci_readl(%struct.ohci_hcd* %21, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 16383
  %29 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %32 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FI, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %20
  %37 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %38 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %39 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FI, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %36, %20
  %45 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %46 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @FSMP(i32 %47)
  %49 = shl i32 %48, 16
  %50 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %51 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %44, %1
  %55 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %56 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %63 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @device_set_wakeup_capable(i32 %65, i32 1)
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %69 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @OHCI_CTRL_HCFS, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %84 [
    i32 130, label %73
    i32 128, label %74
    i32 129, label %74
  ]

73:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %95

74:                                               ; preds = %67, %67
  %75 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %76 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %77 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %81 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, 129
  store i32 %83, i32* %81, align 4
  store i32 10, i32* %5, align 4
  br label %95

84:                                               ; preds = %67
  %85 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %86 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %87 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @OHCI_USB_RESET, align 4
  %91 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %92 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  store i32 50, i32* %5, align 4
  br label %95

95:                                               ; preds = %84, %74, %73
  %96 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %97 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %98 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %101 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %100, i32 0, i32 5
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = call i32 @ohci_writel(%struct.ohci_hcd* %96, i32 %99, i32* %103)
  %105 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %106 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %107 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %106, i32 0, i32 5
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 @ohci_readl(%struct.ohci_hcd* %105, i32* %109)
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @msleep(i32 %111)
  %113 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %114 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memset(i32 %115, i32 0, i32 4)
  %117 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %118 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %117, i32 0, i32 3
  %119 = call i32 @spin_lock_irq(i32* %118)
  br label %120

120:                                              ; preds = %221, %95
  %121 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %122 = load i32, i32* @OHCI_HCR, align 4
  %123 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %124 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %123, i32 0, i32 5
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 9
  %127 = call i32 @ohci_writel(%struct.ohci_hcd* %121, i32 %122, i32* %126)
  store i32 30, i32* %5, align 4
  br label %128

128:                                              ; preds = %148, %120
  %129 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %130 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %131 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %130, i32 0, i32 5
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 9
  %134 = call i32 @ohci_readl(%struct.ohci_hcd* %129, i32* %133)
  %135 = load i32, i32* @OHCI_HCR, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %128
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %5, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %144 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %143, i32 0, i32 3
  %145 = call i32 @spin_unlock_irq(i32* %144)
  %146 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %147 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_err(%struct.ohci_hcd* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %405

148:                                              ; preds = %138
  %149 = call i32 @udelay(i32 1)
  br label %128

150:                                              ; preds = %128
  %151 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %152 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %150
  %158 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %159 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %160 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %163 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %162, i32 0, i32 5
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = call i32 @ohci_writel(%struct.ohci_hcd* %158, i32 %161, i32* %165)
  %167 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %168 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %169 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %168, i32 0, i32 5
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = call i32 @ohci_readl(%struct.ohci_hcd* %167, i32* %171)
  br label %173

173:                                              ; preds = %157, %150
  %174 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %175 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %176 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %175, i32 0, i32 5
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 8
  %179 = call i32 @ohci_writel(%struct.ohci_hcd* %174, i32 0, i32* %178)
  %180 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %181 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %182 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %181, i32 0, i32 5
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 7
  %185 = call i32 @ohci_writel(%struct.ohci_hcd* %180, i32 0, i32* %184)
  %186 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %187 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %188 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %192 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %191, i32 0, i32 5
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 6
  %195 = call i32 @ohci_writel(%struct.ohci_hcd* %186, i32 %190, i32* %194)
  %196 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %197 = call i32 @periodic_reinit(%struct.ohci_hcd* %196)
  %198 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %199 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %200 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %199, i32 0, i32 5
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 5
  %203 = call i32 @ohci_readl(%struct.ohci_hcd* %198, i32* %202)
  %204 = and i32 %203, 1073676288
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %173
  %207 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %208 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %209 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %208, i32 0, i32 5
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 4
  %212 = call i32 @ohci_readl(%struct.ohci_hcd* %207, i32* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %249, label %214

214:                                              ; preds = %206, %173
  %215 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %216 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %214
  %222 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %223 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %224 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %228 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %227, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %120

229:                                              ; preds = %214
  %230 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %231 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %230, i32 0, i32 3
  %232 = call i32 @spin_unlock_irq(i32* %231)
  %233 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %234 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %235 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %236 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %235, i32 0, i32 5
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 5
  %239 = call i32 @ohci_readl(%struct.ohci_hcd* %234, i32* %238)
  %240 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %241 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %242 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %241, i32 0, i32 5
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 4
  %245 = call i32 @ohci_readl(%struct.ohci_hcd* %240, i32* %244)
  %246 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_err(%struct.ohci_hcd* %233, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %239, i32 %245)
  %247 = load i32, i32* @EOVERFLOW, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %2, align 4
  br label %405

249:                                              ; preds = %206
  %250 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %251 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %252 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %251, i32 0, i32 1
  %253 = call i32 @set_bit(i32 %250, i32* %252)
  %254 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %255 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %254, i32 0, i32 0
  store i32 1, i32* %255, align 4
  %256 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %257 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %258 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, %256
  store i32 %260, i32* %258, align 4
  %261 = load i32, i32* @OHCI_CONTROL_INIT, align 4
  %262 = or i32 %261, 130
  %263 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %264 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %268 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %269 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %272 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %271, i32 0, i32 5
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = call i32 @ohci_writel(%struct.ohci_hcd* %267, i32 %270, i32* %274)
  %276 = load i32, i32* @OHCI_RH_RUNNING, align 4
  %277 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %278 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %277, i32 0, i32 6
  store i32 %276, i32* %278, align 8
  %279 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %280 = load i32, i32* @RH_HS_DRWE, align 4
  %281 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %282 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %281, i32 0, i32 5
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 1
  %286 = call i32 @ohci_writel(%struct.ohci_hcd* %279, i32 %280, i32* %285)
  %287 = load i32, i32* @OHCI_INTR_INIT, align 4
  store i32 %287, i32* %4, align 4
  %288 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %289 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %290 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %289, i32 0, i32 5
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 3
  %293 = call i32 @ohci_writel(%struct.ohci_hcd* %288, i32 -1, i32* %292)
  %294 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %295 = load i32, i32* %4, align 4
  %296 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %297 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %296, i32 0, i32 5
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 2
  %300 = call i32 @ohci_writel(%struct.ohci_hcd* %294, i32 %295, i32* %299)
  %301 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %302 = call i32 @roothub_a(%struct.ohci_hcd* %301)
  store i32 %302, i32* %5, align 4
  %303 = load i32, i32* @RH_A_PSM, align 4
  %304 = load i32, i32* @RH_A_OCPM, align 4
  %305 = or i32 %303, %304
  %306 = xor i32 %305, -1
  %307 = load i32, i32* %5, align 4
  %308 = and i32 %307, %306
  store i32 %308, i32* %5, align 4
  %309 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %310 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @OHCI_QUIRK_SUPERIO, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %333

315:                                              ; preds = %249
  %316 = load i32, i32* @RH_A_NOCP, align 4
  %317 = load i32, i32* %5, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %5, align 4
  %319 = load i32, i32* @RH_A_POTPGT, align 4
  %320 = load i32, i32* @RH_A_NPS, align 4
  %321 = or i32 %319, %320
  %322 = xor i32 %321, -1
  %323 = load i32, i32* %5, align 4
  %324 = and i32 %323, %322
  store i32 %324, i32* %5, align 4
  %325 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %326 = load i32, i32* %5, align 4
  %327 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %328 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %327, i32 0, i32 5
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 2
  %332 = call i32 @ohci_writel(%struct.ohci_hcd* %325, i32 %326, i32* %331)
  br label %360

333:                                              ; preds = %249
  %334 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %335 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @OHCI_QUIRK_AMD756, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %347, label %340

340:                                              ; preds = %333
  %341 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %342 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @OHCI_QUIRK_HUB_POWER, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %359

347:                                              ; preds = %340, %333
  %348 = load i32, i32* @RH_A_NPS, align 4
  %349 = load i32, i32* %5, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %5, align 4
  %351 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %352 = load i32, i32* %5, align 4
  %353 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %354 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %353, i32 0, i32 5
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 2
  %358 = call i32 @ohci_writel(%struct.ohci_hcd* %351, i32 %352, i32* %357)
  br label %359

359:                                              ; preds = %347, %340
  br label %360

360:                                              ; preds = %359, %315
  %361 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %362 = load i32, i32* @RH_HS_LPSC, align 4
  %363 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %364 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %363, i32 0, i32 5
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 1
  %368 = call i32 @ohci_writel(%struct.ohci_hcd* %361, i32 %362, i32* %367)
  %369 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %370 = load i32, i32* %5, align 4
  %371 = load i32, i32* @RH_A_NPS, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %360
  br label %377

375:                                              ; preds = %360
  %376 = load i32, i32* @RH_B_PPCM, align 4
  br label %377

377:                                              ; preds = %375, %374
  %378 = phi i32 [ 0, %374 ], [ %376, %375 ]
  %379 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %380 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %379, i32 0, i32 5
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 0
  %384 = call i32 @ohci_writel(%struct.ohci_hcd* %369, i32 %378, i32* %383)
  %385 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %386 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %387 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %386, i32 0, i32 5
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 0
  %390 = call i32 @ohci_readl(%struct.ohci_hcd* %385, i32* %389)
  %391 = load i64, i64* @jiffies, align 8
  %392 = load i64, i64* @STATECHANGE_DELAY, align 8
  %393 = add nsw i64 %391, %392
  %394 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %395 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %394, i32 0, i32 4
  store i64 %393, i64* %395, align 8
  %396 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %397 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %396, i32 0, i32 3
  %398 = call i32 @spin_unlock_irq(i32* %397)
  %399 = load i32, i32* %5, align 4
  %400 = ashr i32 %399, 23
  %401 = and i32 %400, 510
  %402 = call i32 @mdelay(i32 %401)
  %403 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %404 = call i32 @ohci_dump(%struct.ohci_hcd* %403)
  store i32 0, i32* %2, align 4
  br label %405

405:                                              ; preds = %377, %229, %142
  %406 = load i32, i32* %2, align 4
  ret i32 %406
}

declare dso_local %struct.usb_hcd* @ohci_to_hcd(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_readl(%struct.ohci_hcd*, i32*) #1

declare dso_local i32 @ohci_dbg(%struct.ohci_hcd*, i8*, ...) #1

declare dso_local i32 @FSMP(i32) #1

declare dso_local i32 @device_set_wakeup_capable(i32, i32) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ohci_err(%struct.ohci_hcd*, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @periodic_reinit(%struct.ohci_hcd*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @roothub_a(%struct.ohci_hcd*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ohci_dump(%struct.ohci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
