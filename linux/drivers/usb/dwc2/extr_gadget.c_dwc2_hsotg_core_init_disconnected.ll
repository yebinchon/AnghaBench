; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_core_init_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_core_init_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_7__**, i64, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }

@ECONNRESET = common dso_local global i32 0, align 4
@GUSBCFG = common dso_local global i32 0, align 4
@GUSBCFG_TOUTCAL_MASK = common dso_local global i32 0, align 4
@GUSBCFG_SRPCAP = common dso_local global i32 0, align 4
@GUSBCFG_HNPCAP = common dso_local global i32 0, align 4
@DCTL = common dso_local global i32 0, align 4
@DCTL_SFTDISCON = common dso_local global i32 0, align 4
@DCFG_DEVSPD_LS = common dso_local global i32 0, align 4
@DWC2_PHY_TYPE_PARAM_FS = common dso_local global i32 0, align 4
@DCFG_DEVSPD_FS48 = common dso_local global i32 0, align 4
@DCFG_DEVSPD_FS = common dso_local global i32 0, align 4
@DCFG_DEVSPD_HS = common dso_local global i32 0, align 4
@DCFG_IPG_ISOC_SUPPORDED = common dso_local global i32 0, align 4
@DCFG = common dso_local global i32 0, align 4
@GOTGINT = common dso_local global i32 0, align 4
@GINTSTS = common dso_local global i32 0, align 4
@GINTSTS_ERLYSUSP = common dso_local global i32 0, align 4
@GINTSTS_SESSREQINT = common dso_local global i32 0, align 4
@GINTSTS_GOUTNAKEFF = common dso_local global i32 0, align 4
@GINTSTS_GINNAKEFF = common dso_local global i32 0, align 4
@GINTSTS_USBRST = common dso_local global i32 0, align 4
@GINTSTS_RESETDET = common dso_local global i32 0, align 4
@GINTSTS_ENUMDONE = common dso_local global i32 0, align 4
@GINTSTS_OTGINT = common dso_local global i32 0, align 4
@GINTSTS_USBSUSP = common dso_local global i32 0, align 4
@GINTSTS_WKUPINT = common dso_local global i32 0, align 4
@GINTSTS_LPMTRANRCVD = common dso_local global i32 0, align 4
@GINTSTS_INCOMPL_SOIN = common dso_local global i32 0, align 4
@GINTSTS_INCOMPL_SOOUT = common dso_local global i32 0, align 4
@GINTSTS_CONIDSTSCHNG = common dso_local global i32 0, align 4
@GINTMSK = common dso_local global i32 0, align 4
@GAHBCFG_GLBL_INTR_EN = common dso_local global i32 0, align 4
@GAHBCFG_DMA_EN = common dso_local global i32 0, align 4
@GAHBCFG = common dso_local global i32 0, align 4
@DCFG_DESCDMA_EN = common dso_local global i32 0, align 4
@GAHBCFG_NP_TXF_EMP_LVL = common dso_local global i32 0, align 4
@GAHBCFG_P_TXF_EMP_LVL = common dso_local global i32 0, align 4
@DIEPMSK_TXFIFOEMPTY = common dso_local global i32 0, align 4
@DIEPMSK_INTKNTXFEMPMSK = common dso_local global i32 0, align 4
@DIEPMSK_EPDISBLDMSK = common dso_local global i32 0, align 4
@DIEPMSK_XFERCOMPLMSK = common dso_local global i32 0, align 4
@DIEPMSK_TIMEOUTMSK = common dso_local global i32 0, align 4
@DIEPMSK_AHBERRMSK = common dso_local global i32 0, align 4
@DIEPMSK = common dso_local global i32 0, align 4
@DOEPMSK_STSPHSERCVDMSK = common dso_local global i32 0, align 4
@DOEPMSK_EPDISBLDMSK = common dso_local global i32 0, align 4
@DOEPMSK_AHBERRMSK = common dso_local global i32 0, align 4
@DOEPMSK_SETUPMSK = common dso_local global i32 0, align 4
@DOEPMSK = common dso_local global i32 0, align 4
@DOEPMSK_BNAMSK = common dso_local global i32 0, align 4
@DIEPMSK_BNAININTRMSK = common dso_local global i32 0, align 4
@DCTL_SERVICE_INTERVAL_SUPPORTED = common dso_local global i32 0, align 4
@DAINTMSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"EP0: DIEPCTL0=0x%08x, DOEPCTL0=0x%08x\0A\00", align 1
@DIEPCTL0 = common dso_local global i32 0, align 4
@DOEPCTL0 = common dso_local global i32 0, align 4
@GINTSTS_OEPINT = common dso_local global i32 0, align 4
@GINTSTS_IEPINT = common dso_local global i32 0, align 4
@GINTSTS_RXFLVL = common dso_local global i32 0, align 4
@DCTL_PWRONPRGDONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"DCTL=0x%08x\0A\00", align 1
@DOEPTSIZ0 = common dso_local global i32 0, align 4
@DXEPCTL_CNAK = common dso_local global i32 0, align 4
@DXEPCTL_EPENA = common dso_local global i32 0, align 4
@DXEPCTL_USBACTEP = common dso_local global i32 0, align 4
@DCTL_CGOUTNAK = common dso_local global i32 0, align 4
@DCTL_CGNPINNAK = common dso_local global i32 0, align 4
@DWC2_L0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_hsotg_core_init_disconnected(%struct.dwc2_hsotg* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %11, i32 0, i32 4
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %13, i64 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = load i32, i32* @ECONNRESET, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i32 @kill_all_requests(%struct.dwc2_hsotg* %10, %struct.TYPE_7__* %15, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %23 = call i64 @dwc2_core_reset(%struct.dwc2_hsotg* %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %457

26:                                               ; preds = %21
  br label %77

27:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %28

28:                                               ; preds = %73, %27
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %31 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %28
  %35 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %36 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %35, i32 0, i32 6
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %37, i64 %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %45 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %44, i32 0, i32 6
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32 @dwc2_hsotg_ep_disable(%struct.TYPE_8__* %51)
  br label %53

53:                                               ; preds = %43, %34
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %55 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %54, i32 0, i32 4
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %56, i64 %58
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %53
  %63 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %64 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %63, i32 0, i32 4
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %65, i64 %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i32 @dwc2_hsotg_ep_disable(%struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %62, %53
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %28

76:                                               ; preds = %28
  br label %77

77:                                               ; preds = %76, %26
  %78 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %79 = load i32, i32* @GUSBCFG, align 4
  %80 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @GUSBCFG_TOUTCAL_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = call i32 @GUSBCFG_TOUTCAL(i32 7)
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* @GUSBCFG_SRPCAP, align 4
  %89 = load i32, i32* @GUSBCFG_HNPCAP, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @GUSBCFG, align 4
  %97 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %94, i32 %95, i32 %96)
  %98 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %99 = call i32 @dwc2_phy_init(%struct.dwc2_hsotg* %98, i32 1)
  %100 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %101 = call i32 @dwc2_hsotg_init_fifo(%struct.dwc2_hsotg* %100)
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %77
  %105 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %106 = load i32, i32* @DCTL, align 4
  %107 = load i32, i32* @DCTL_SFTDISCON, align 4
  %108 = call i32 @dwc2_set_bit(%struct.dwc2_hsotg* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %77
  %110 = call i32 @DCFG_EPMISCNT(i32 1)
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %114 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %137 [
    i32 128, label %117
    i32 129, label %121
  ]

117:                                              ; preds = %109
  %118 = load i32, i32* @DCFG_DEVSPD_LS, align 4
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %141

121:                                              ; preds = %109
  %122 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %123 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @DWC2_PHY_TYPE_PARAM_FS, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i32, i32* @DCFG_DEVSPD_FS48, align 4
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  br label %136

132:                                              ; preds = %121
  %133 = load i32, i32* @DCFG_DEVSPD_FS, align 4
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %132, %128
  br label %141

137:                                              ; preds = %109
  %138 = load i32, i32* @DCFG_DEVSPD_HS, align 4
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %137, %136, %117
  %142 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %143 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i32, i32* @DCFG_IPG_ISOC_SUPPORDED, align 4
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %147, %141
  %152 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @DCFG, align 4
  %155 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %152, i32 %153, i32 %154)
  %156 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %157 = load i32, i32* @GOTGINT, align 4
  %158 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %156, i32 -1, i32 %157)
  %159 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %160 = load i32, i32* @GINTSTS, align 4
  %161 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %159, i32 -1, i32 %160)
  %162 = load i32, i32* @GINTSTS_ERLYSUSP, align 4
  %163 = load i32, i32* @GINTSTS_SESSREQINT, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @GINTSTS_GOUTNAKEFF, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @GINTSTS_GINNAKEFF, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @GINTSTS_USBRST, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @GINTSTS_RESETDET, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @GINTSTS_ENUMDONE, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @GINTSTS_OTGINT, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @GINTSTS_USBSUSP, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @GINTSTS_WKUPINT, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @GINTSTS_LPMTRANRCVD, align 4
  %182 = or i32 %180, %181
  store i32 %182, i32* %5, align 4
  %183 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %184 = call i64 @using_desc_dma(%struct.dwc2_hsotg* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %151
  %187 = load i32, i32* @GINTSTS_INCOMPL_SOIN, align 4
  %188 = load i32, i32* @GINTSTS_INCOMPL_SOOUT, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* %5, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %186, %151
  %193 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %194 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %192
  %199 = load i32, i32* @GINTSTS_CONIDSTSCHNG, align 4
  %200 = load i32, i32* %5, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %198, %192
  %203 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @GINTMSK, align 4
  %206 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %203, i32 %204, i32 %205)
  %207 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %208 = call i64 @using_dma(%struct.dwc2_hsotg* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %231

210:                                              ; preds = %202
  %211 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %212 = load i32, i32* @GAHBCFG_GLBL_INTR_EN, align 4
  %213 = load i32, i32* @GAHBCFG_DMA_EN, align 4
  %214 = or i32 %212, %213
  %215 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %216 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %214, %218
  %220 = load i32, i32* @GAHBCFG, align 4
  %221 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %211, i32 %219, i32 %220)
  %222 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %223 = call i64 @using_desc_dma(%struct.dwc2_hsotg* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %210
  %226 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %227 = load i32, i32* @DCFG, align 4
  %228 = load i32, i32* @DCFG_DESCDMA_EN, align 4
  %229 = call i32 @dwc2_set_bit(%struct.dwc2_hsotg* %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %225, %210
  br label %248

231:                                              ; preds = %202
  %232 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %233 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %234 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = load i32, i32* @GAHBCFG_NP_TXF_EMP_LVL, align 4
  %239 = load i32, i32* @GAHBCFG_P_TXF_EMP_LVL, align 4
  %240 = or i32 %238, %239
  br label %242

241:                                              ; preds = %231
  br label %242

242:                                              ; preds = %241, %237
  %243 = phi i32 [ %240, %237 ], [ 0, %241 ]
  %244 = load i32, i32* @GAHBCFG_GLBL_INTR_EN, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @GAHBCFG, align 4
  %247 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %232, i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %242, %230
  %249 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %250 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %251 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %250, i32 0, i32 5
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %248
  %255 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %256 = call i64 @using_dma(%struct.dwc2_hsotg* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = load i32, i32* @DIEPMSK_TXFIFOEMPTY, align 4
  %260 = load i32, i32* @DIEPMSK_INTKNTXFEMPMSK, align 4
  %261 = or i32 %259, %260
  br label %263

262:                                              ; preds = %254, %248
  br label %263

263:                                              ; preds = %262, %258
  %264 = phi i32 [ %261, %258 ], [ 0, %262 ]
  %265 = load i32, i32* @DIEPMSK_EPDISBLDMSK, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @DIEPMSK_XFERCOMPLMSK, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @DIEPMSK_TIMEOUTMSK, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @DIEPMSK_AHBERRMSK, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @DIEPMSK, align 4
  %274 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %249, i32 %272, i32 %273)
  %275 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %276 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %277 = call i64 @using_dma(%struct.dwc2_hsotg* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %263
  %280 = load i32, i32* @DIEPMSK_XFERCOMPLMSK, align 4
  %281 = load i32, i32* @DOEPMSK_STSPHSERCVDMSK, align 4
  %282 = or i32 %280, %281
  br label %284

283:                                              ; preds = %263
  br label %284

284:                                              ; preds = %283, %279
  %285 = phi i32 [ %282, %279 ], [ 0, %283 ]
  %286 = load i32, i32* @DOEPMSK_EPDISBLDMSK, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @DOEPMSK_AHBERRMSK, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @DOEPMSK_SETUPMSK, align 4
  %291 = or i32 %289, %290
  %292 = load i32, i32* @DOEPMSK, align 4
  %293 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %275, i32 %291, i32 %292)
  %294 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %295 = call i64 @using_desc_dma(%struct.dwc2_hsotg* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %284
  %298 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %299 = load i32, i32* @DOEPMSK, align 4
  %300 = load i32, i32* @DOEPMSK_BNAMSK, align 4
  %301 = call i32 @dwc2_set_bit(%struct.dwc2_hsotg* %298, i32 %299, i32 %300)
  %302 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %303 = load i32, i32* @DIEPMSK, align 4
  %304 = load i32, i32* @DIEPMSK_BNAININTRMSK, align 4
  %305 = call i32 @dwc2_set_bit(%struct.dwc2_hsotg* %302, i32 %303, i32 %304)
  br label %306

306:                                              ; preds = %297, %284
  %307 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %308 = call i64 @using_desc_dma(%struct.dwc2_hsotg* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %306
  %311 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %312 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %310
  %317 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %318 = load i32, i32* @DCTL, align 4
  %319 = load i32, i32* @DCTL_SERVICE_INTERVAL_SUPPORTED, align 4
  %320 = call i32 @dwc2_set_bit(%struct.dwc2_hsotg* %317, i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %316, %310, %306
  %322 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %323 = load i32, i32* @DAINTMSK, align 4
  %324 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %322, i32 0, i32 %323)
  %325 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %326 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %329 = load i32, i32* @DIEPCTL0, align 4
  %330 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %328, i32 %329)
  %331 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %332 = load i32, i32* @DOEPCTL0, align 4
  %333 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %331, i32 %332)
  %334 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %327, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %330, i32 %333)
  %335 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %336 = load i32, i32* @GINTSTS_OEPINT, align 4
  %337 = load i32, i32* @GINTSTS_IEPINT, align 4
  %338 = or i32 %336, %337
  %339 = call i32 @dwc2_hsotg_en_gsint(%struct.dwc2_hsotg* %335, i32 %338)
  %340 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %341 = call i64 @using_dma(%struct.dwc2_hsotg* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %347, label %343

343:                                              ; preds = %321
  %344 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %345 = load i32, i32* @GINTSTS_RXFLVL, align 4
  %346 = call i32 @dwc2_hsotg_en_gsint(%struct.dwc2_hsotg* %344, i32 %345)
  br label %347

347:                                              ; preds = %343, %321
  %348 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %349 = call i32 @dwc2_hsotg_ctrl_epint(%struct.dwc2_hsotg* %348, i32 0, i32 0, i32 1)
  %350 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %351 = call i32 @dwc2_hsotg_ctrl_epint(%struct.dwc2_hsotg* %350, i32 0, i32 1, i32 1)
  %352 = load i32, i32* %4, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %364, label %354

354:                                              ; preds = %347
  %355 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %356 = load i32, i32* @DCTL, align 4
  %357 = load i32, i32* @DCTL_PWRONPRGDONE, align 4
  %358 = call i32 @dwc2_set_bit(%struct.dwc2_hsotg* %355, i32 %356, i32 %357)
  %359 = call i32 @udelay(i32 10)
  %360 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %361 = load i32, i32* @DCTL, align 4
  %362 = load i32, i32* @DCTL_PWRONPRGDONE, align 4
  %363 = call i32 @dwc2_clear_bit(%struct.dwc2_hsotg* %360, i32 %361, i32 %362)
  br label %364

364:                                              ; preds = %354, %347
  %365 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %366 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %369 = load i32, i32* @DCTL, align 4
  %370 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %368, i32 %369)
  %371 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %367, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %370)
  %372 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %373 = call i32 @DXEPTSIZ_MC(i32 1)
  %374 = call i32 @DXEPTSIZ_PKTCNT(i32 1)
  %375 = or i32 %373, %374
  %376 = call i32 @DXEPTSIZ_XFERSIZE(i32 8)
  %377 = or i32 %375, %376
  %378 = load i32, i32* @DOEPTSIZ0, align 4
  %379 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %372, i32 %377, i32 %378)
  %380 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %381 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %382 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %381, i32 0, i32 4
  %383 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %383, i64 0
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @dwc2_hsotg_ep0_mps(i32 %388)
  %390 = load i32, i32* @DXEPCTL_CNAK, align 4
  %391 = or i32 %389, %390
  %392 = load i32, i32* @DXEPCTL_EPENA, align 4
  %393 = or i32 %391, %392
  %394 = load i32, i32* @DXEPCTL_USBACTEP, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* @DOEPCTL0, align 4
  %397 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %380, i32 %395, i32 %396)
  %398 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %399 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %400 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %399, i32 0, i32 4
  %401 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %401, i64 0
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @dwc2_hsotg_ep0_mps(i32 %406)
  %408 = load i32, i32* @DXEPCTL_USBACTEP, align 4
  %409 = or i32 %407, %408
  %410 = load i32, i32* @DIEPCTL0, align 4
  %411 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %398, i32 %409, i32 %410)
  %412 = load i32, i32* @DCTL_CGOUTNAK, align 4
  %413 = load i32, i32* @DCTL_CGNPINNAK, align 4
  %414 = or i32 %412, %413
  store i32 %414, i32* %6, align 4
  %415 = load i32, i32* %4, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %421, label %417

417:                                              ; preds = %364
  %418 = load i32, i32* @DCTL_SFTDISCON, align 4
  %419 = load i32, i32* %6, align 4
  %420 = or i32 %419, %418
  store i32 %420, i32* %6, align 4
  br label %421

421:                                              ; preds = %417, %364
  %422 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %423 = load i32, i32* @DCTL, align 4
  %424 = load i32, i32* %6, align 4
  %425 = call i32 @dwc2_set_bit(%struct.dwc2_hsotg* %422, i32 %423, i32 %424)
  %426 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %427 = call i32 @dwc2_gadget_init_lpm(%struct.dwc2_hsotg* %426)
  %428 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %429 = call i64 @using_desc_dma(%struct.dwc2_hsotg* %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %440

431:                                              ; preds = %421
  %432 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %433 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %432, i32 0, i32 3
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 2
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %431
  %438 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %439 = call i32 @dwc2_gadget_program_ref_clk(%struct.dwc2_hsotg* %438)
  br label %440

440:                                              ; preds = %437, %431, %421
  %441 = call i32 @mdelay(i32 3)
  %442 = load i32, i32* @DWC2_L0, align 4
  %443 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %444 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %443, i32 0, i32 2
  store i32 %442, i32* %444, align 8
  %445 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %446 = call i32 @dwc2_hsotg_enqueue_setup(%struct.dwc2_hsotg* %445)
  %447 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %448 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %451 = load i32, i32* @DIEPCTL0, align 4
  %452 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %450, i32 %451)
  %453 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %454 = load i32, i32* @DOEPCTL0, align 4
  %455 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %453, i32 %454)
  %456 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %449, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %452, i32 %455)
  br label %457

457:                                              ; preds = %440, %25
  ret void
}

declare dso_local i32 @kill_all_requests(%struct.dwc2_hsotg*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @dwc2_core_reset(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_hsotg_ep_disable(%struct.TYPE_8__*) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @GUSBCFG_TOUTCAL(i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dwc2_phy_init(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_hsotg_init_fifo(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_set_bit(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @DCFG_EPMISCNT(i32) #1

declare dso_local i64 @using_desc_dma(%struct.dwc2_hsotg*) #1

declare dso_local i64 @using_dma(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dwc2_hsotg_en_gsint(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_hsotg_ctrl_epint(%struct.dwc2_hsotg*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dwc2_clear_bit(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @DXEPTSIZ_MC(i32) #1

declare dso_local i32 @DXEPTSIZ_PKTCNT(i32) #1

declare dso_local i32 @DXEPTSIZ_XFERSIZE(i32) #1

declare dso_local i32 @dwc2_hsotg_ep0_mps(i32) #1

declare dso_local i32 @dwc2_gadget_init_lpm(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_gadget_program_ref_clk(%struct.dwc2_hsotg*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dwc2_hsotg_enqueue_setup(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
