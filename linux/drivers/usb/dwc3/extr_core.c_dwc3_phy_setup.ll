; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_phy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_phy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32, i32, i64, i64, i64, i32, %struct.TYPE_2__, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@DWC3_GUSB3PIPECTL_UX_EXIT_PX = common dso_local global i32 0, align 4
@DWC3_REVISION_194A = common dso_local global i64 0, align 8
@DWC3_GUSB3PIPECTL_SUSPHY = common dso_local global i32 0, align 4
@DWC3_GUSB3PIPECTL_U2SSINP3OK = common dso_local global i32 0, align 4
@DWC3_GUSB3PIPECTL_DISRXDETINP3 = common dso_local global i32 0, align 4
@DWC3_GUSB3PIPECTL_REQP1P2P3 = common dso_local global i32 0, align 4
@DWC3_GUSB3PIPECTL_DEP1P2P3_EN = common dso_local global i32 0, align 4
@DWC3_GUSB3PIPECTL_DEPOCHANGE = common dso_local global i32 0, align 4
@DWC3_GUSB3PIPECTL_LFPSFILT = common dso_local global i32 0, align 4
@DWC3_GUSB3PIPECTL_RX_DETOPOLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"utmi\00", align 1
@DWC3_GUSB2PHYCFG_ULPI_UTMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@DWC3_GUSB2PHYCFG_PHYIF_MASK = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG_USBTRDTIM_MASK = common dso_local global i32 0, align 4
@UTMI_PHYIF_8_BIT = common dso_local global i32 0, align 4
@USBTRDTIM_UTMI_8_BIT = common dso_local global i32 0, align 4
@UTMI_PHYIF_16_BIT = common dso_local global i32 0, align 4
@USBTRDTIM_UTMI_16_BIT = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG_SUSPHY = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG_ENBLSLPM = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*)* @dwc3_phy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_phy_setup(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @DWC3_GUSB3PIPECTL(i32 0)
  %8 = call i32 @dwc3_readl(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @DWC3_GUSB3PIPECTL_UX_EXIT_PX, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %14 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DWC3_REVISION_194A, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @DWC3_GUSB3PIPECTL_SUSPHY, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %24 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %23, i32 0, i32 18
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @DWC3_GUSB3PIPECTL_U2SSINP3OK, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %33 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %32, i32 0, i32 17
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @DWC3_GUSB3PIPECTL_DISRXDETINP3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %42 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %41, i32 0, i32 16
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @DWC3_GUSB3PIPECTL_REQP1P2P3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %51 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %50, i32 0, i32 15
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @DWC3_GUSB3PIPECTL_DEP1P2P3_EN, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %60 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %59, i32 0, i32 14
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @DWC3_GUSB3PIPECTL_DEPOCHANGE, align 4
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %69 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %68, i32 0, i32 13
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @DWC3_GUSB3PIPECTL_LFPSFILT, align 4
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %78 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %77, i32 0, i32 12
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @DWC3_GUSB3PIPECTL_RX_DETOPOLL, align 4
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %87 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %86, i32 0, i32 11
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %92 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @DWC3_GUSB3PIPECTL_TX_DEEPH(i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %90, %85
  %98 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %99 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* @DWC3_GUSB3PIPECTL_SUSPHY, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %3, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %109 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @DWC3_GUSB3PIPECTL_DEPOCHANGE, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %3, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %119 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @DWC3_GUSB3PIPECTL(i32 0)
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @dwc3_writel(i32 %120, i32 %121, i32 %122)
  %124 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %125 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %128 = call i32 @dwc3_readl(i32 %126, i32 %127)
  store i32 %128, i32* %3, align 4
  %129 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %130 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @DWC3_GHWPARAMS3_HSPHY_IFC(i32 %132)
  switch i32 %133, label %181 [
    i32 130, label %134
    i32 131, label %180
  ]

134:                                              ; preds = %117
  %135 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %136 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %134
  %140 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %141 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @strncmp(i32 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* @DWC3_GUSB2PHYCFG_ULPI_UTMI, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %3, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %3, align 4
  br label %182

150:                                              ; preds = %139, %134
  %151 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %152 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %150
  %156 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %157 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @strncmp(i32 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %155
  %162 = load i32, i32* @DWC3_GUSB2PHYCFG_ULPI_UTMI, align 4
  %163 = load i32, i32* %3, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %3, align 4
  %165 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %166 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @dwc3_writel(i32 %167, i32 %168, i32 %169)
  br label %178

171:                                              ; preds = %155, %150
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* @DWC3_GUSB2PHYCFG_ULPI_UTMI, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  br label %182

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %177, %161
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %117, %179
  br label %181

181:                                              ; preds = %117, %180
  br label %182

182:                                              ; preds = %181, %176, %145
  %183 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %184 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  switch i32 %185, label %214 [
    i32 129, label %186
    i32 128, label %200
  ]

186:                                              ; preds = %182
  %187 = load i32, i32* @DWC3_GUSB2PHYCFG_PHYIF_MASK, align 4
  %188 = load i32, i32* @DWC3_GUSB2PHYCFG_USBTRDTIM_MASK, align 4
  %189 = or i32 %187, %188
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %3, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %3, align 4
  %193 = load i32, i32* @UTMI_PHYIF_8_BIT, align 4
  %194 = call i32 @DWC3_GUSB2PHYCFG_PHYIF(i32 %193)
  %195 = load i32, i32* @USBTRDTIM_UTMI_8_BIT, align 4
  %196 = call i32 @DWC3_GUSB2PHYCFG_USBTRDTIM(i32 %195)
  %197 = or i32 %194, %196
  %198 = load i32, i32* %3, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %3, align 4
  br label %215

200:                                              ; preds = %182
  %201 = load i32, i32* @DWC3_GUSB2PHYCFG_PHYIF_MASK, align 4
  %202 = load i32, i32* @DWC3_GUSB2PHYCFG_USBTRDTIM_MASK, align 4
  %203 = or i32 %201, %202
  %204 = xor i32 %203, -1
  %205 = load i32, i32* %3, align 4
  %206 = and i32 %205, %204
  store i32 %206, i32* %3, align 4
  %207 = load i32, i32* @UTMI_PHYIF_16_BIT, align 4
  %208 = call i32 @DWC3_GUSB2PHYCFG_PHYIF(i32 %207)
  %209 = load i32, i32* @USBTRDTIM_UTMI_16_BIT, align 4
  %210 = call i32 @DWC3_GUSB2PHYCFG_USBTRDTIM(i32 %209)
  %211 = or i32 %208, %210
  %212 = load i32, i32* %3, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %3, align 4
  br label %215

214:                                              ; preds = %182
  br label %215

215:                                              ; preds = %214, %200, %186
  %216 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %217 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @DWC3_REVISION_194A, align 8
  %220 = icmp sgt i64 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %215
  %222 = load i32, i32* @DWC3_GUSB2PHYCFG_SUSPHY, align 4
  %223 = load i32, i32* %3, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %221, %215
  %226 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %227 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load i32, i32* @DWC3_GUSB2PHYCFG_SUSPHY, align 4
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %3, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %230, %225
  %236 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %237 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load i32, i32* @DWC3_GUSB2PHYCFG_ENBLSLPM, align 4
  %242 = xor i32 %241, -1
  %243 = load i32, i32* %3, align 4
  %244 = and i32 %243, %242
  store i32 %244, i32* %3, align 4
  br label %249

245:                                              ; preds = %235
  %246 = load i32, i32* @DWC3_GUSB2PHYCFG_ENBLSLPM, align 4
  %247 = load i32, i32* %3, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %3, align 4
  br label %249

249:                                              ; preds = %245, %240
  %250 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %251 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = load i32, i32* @DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS, align 4
  %256 = xor i32 %255, -1
  %257 = load i32, i32* %3, align 4
  %258 = and i32 %257, %256
  store i32 %258, i32* %3, align 4
  br label %259

259:                                              ; preds = %254, %249
  %260 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %261 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %264 = load i32, i32* %3, align 4
  %265 = call i32 @dwc3_writel(i32 %262, i32 %263, i32 %264)
  ret i32 0
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @DWC3_GUSB3PIPECTL(i32) #1

declare dso_local i32 @DWC3_GUSB3PIPECTL_TX_DEEPH(i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @DWC3_GUSB2PHYCFG(i32) #1

declare dso_local i32 @DWC3_GHWPARAMS3_HSPHY_IFC(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @DWC3_GUSB2PHYCFG_PHYIF(i32) #1

declare dso_local i32 @DWC3_GUSB2PHYCFG_USBTRDTIM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
