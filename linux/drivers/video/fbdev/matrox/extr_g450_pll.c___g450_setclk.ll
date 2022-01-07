; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_g450_pll.c___g450_setclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_g450_pll.c___g450_setclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.matrox_pll_cache, %struct.matrox_pll_cache, %struct.matrox_pll_cache }
%struct.matrox_pll_cache = type { i32 }
%struct.TYPE_3__ = type { %struct.matrox_pll_limits, %struct.matrox_pll_limits, %struct.matrox_pll_limits }
%struct.matrox_pll_limits = type { i32 }

@M1064_XPWRCTRL = common dso_local global i32 0, align 4
@M1064_XPWRCTRL_PANELPDN = common dso_local global i32 0, align 4
@M_SEQ_INDEX = common dso_local global i32 0, align 4
@M_SEQ1 = common dso_local global i32 0, align 4
@M_SEQ_DATA = common dso_local global i32 0, align 4
@M_SEQ1_SCROFF = common dso_local global i32 0, align 4
@M1064_XPIXCLKCTRL = common dso_local global i32 0, align 4
@M1064_XPIXCLKCTRL_DIS = common dso_local global i32 0, align 4
@M1064_XPIXCLKCTRL_PLL_UP = common dso_local global i32 0, align 4
@M1064_XDVICLKCTRL_DVIDATAPATHSEL = common dso_local global i32 0, align 4
@M1064_XDVICLKCTRL_C1DVICLKSEL = common dso_local global i32 0, align 4
@M1064_XDVICLKCTRL_C1DVICLKEN = common dso_local global i32 0, align 4
@M1064_XDVICLKCTRL_DVILOOPCTL = common dso_local global i32 0, align 4
@M1064_XDVICLKCTRL_P1LOOPBWDTCTL = common dso_local global i32 0, align 4
@M_MISC_REG_READ = common dso_local global i32 0, align 4
@M_MISC_REG = common dso_local global i32 0, align 4
@PCI_OPTION_REG = common dso_local global i32 0, align 4
@M1064_XPIXPLLCM = common dso_local global i32 0, align 4
@M1064_XPIXPLLCN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NO_MORE_MNP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, i32, i32, i32*, i32*)* @__g450_setclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__g450_setclk(%struct.matrox_fb_info* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.matrox_fb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.matrox_pll_limits*, align 8
  %15 = alloca %struct.matrox_pll_cache*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %178 [
    i32 132, label %32
    i32 131, label %32
    i32 130, label %32
    i32 129, label %117
    i32 128, label %141
  ]

32:                                               ; preds = %5, %5, %5
  %33 = load i64, i64* %18, align 8
  %34 = call i32 @matroxfb_DAC_lock_irqsave(i64 %33)
  %35 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %36 = load i32, i32* @M1064_XPWRCTRL, align 4
  %37 = call i32 @matroxfb_DAC_in(%struct.matrox_fb_info* %35, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %39 = load i32, i32* @M1064_XPWRCTRL, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @M1064_XPWRCTRL_PANELPDN, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %38, i32 %39, i32 %43)
  %45 = load i32, i32* @M_SEQ_INDEX, align 4
  %46 = load i32, i32* @M_SEQ1, align 4
  %47 = call i32 @mga_outb(i32 %45, i32 %46)
  %48 = load i32, i32* @M_SEQ_DATA, align 4
  %49 = load i32, i32* @M_SEQ_DATA, align 4
  %50 = call i32 @mga_inb(i32 %49)
  %51 = load i32, i32* @M_SEQ1_SCROFF, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @mga_outb(i32 %48, i32 %52)
  %54 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %55 = load i32, i32* @M1064_XPIXCLKCTRL, align 4
  %56 = call i32 @matroxfb_DAC_in(%struct.matrox_fb_info* %54, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* @M1064_XPIXCLKCTRL_DIS, align 4
  %58 = load i32, i32* %16, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @M1064_XPIXCLKCTRL_PLL_UP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %32
  %65 = load i32, i32* @M1064_XPIXCLKCTRL_PLL_UP, align 4
  %66 = load i32, i32* %16, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %64, %32
  %69 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %70 = load i32, i32* @M1064_XPIXCLKCTRL, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %75 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp uge i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 0, i32* %16, align 4
  br label %89

79:                                               ; preds = %68
  %80 = load i32, i32* @M1064_XDVICLKCTRL_DVIDATAPATHSEL, align 4
  %81 = load i32, i32* @M1064_XDVICLKCTRL_C1DVICLKSEL, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @M1064_XDVICLKCTRL_C1DVICLKEN, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @M1064_XDVICLKCTRL_DVILOOPCTL, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @M1064_XDVICLKCTRL_P1LOOPBWDTCTL, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %79, %78
  %90 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %91 = load i32, i32* @M1064_XPWRCTRL, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %90, i32 %91, i32 %92)
  %94 = load i64, i64* %18, align 8
  %95 = call i32 @matroxfb_DAC_unlock_irqrestore(i64 %94)
  %96 = load i32, i32* @M_MISC_REG_READ, align 4
  %97 = call i32 @mga_inb(i32 %96)
  %98 = and i32 %97, -13
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %9, align 4
  switch i32 %99, label %104 [
    i32 132, label %100
    i32 131, label %101
  ]

100:                                              ; preds = %89
  br label %107

101:                                              ; preds = %89
  %102 = load i32, i32* %19, align 4
  %103 = or i32 %102, 4
  store i32 %103, i32* %19, align 4
  br label %107

104:                                              ; preds = %89
  %105 = load i32, i32* %19, align 4
  %106 = or i32 %105, 12
  store i32 %106, i32* %19, align 4
  br label %107

107:                                              ; preds = %104, %101, %100
  %108 = load i32, i32* @M_MISC_REG, align 4
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @mga_outb(i32 %108, i32 %109)
  %111 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %112 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store %struct.matrox_pll_limits* %113, %struct.matrox_pll_limits** %14, align 8
  %114 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %115 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store %struct.matrox_pll_cache* %116, %struct.matrox_pll_cache** %15, align 8
  br label %181

117:                                              ; preds = %5
  %118 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %119 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @PCI_OPTION_REG, align 4
  %122 = call i32 @pci_read_config_dword(i32 %120, i32 %121, i32* %20)
  %123 = load i32, i32* %20, align 4
  %124 = and i32 %123, 32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %117
  %127 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %128 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PCI_OPTION_REG, align 4
  %131 = load i32, i32* %20, align 4
  %132 = or i32 %131, 32
  %133 = call i32 @pci_write_config_dword(i32 %129, i32 %130, i32 %132)
  br label %134

134:                                              ; preds = %126, %117
  %135 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %136 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store %struct.matrox_pll_limits* %137, %struct.matrox_pll_limits** %14, align 8
  %138 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %139 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store %struct.matrox_pll_cache* %140, %struct.matrox_pll_cache** %15, align 8
  br label %181

141:                                              ; preds = %5
  %142 = load i64, i64* %23, align 8
  %143 = call i32 @matroxfb_DAC_lock_irqsave(i64 %142)
  %144 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %145 = load i32, i32* @M1064_XPWRCTRL, align 4
  %146 = call i32 @matroxfb_DAC_in(%struct.matrox_fb_info* %144, i32 %145)
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %21, align 4
  %148 = and i32 %147, 2
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %141
  %151 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %152 = load i32, i32* @M1064_XPWRCTRL, align 4
  %153 = load i32, i32* %21, align 4
  %154 = or i32 %153, 2
  %155 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %151, i32 %152, i32 %154)
  br label %156

156:                                              ; preds = %150, %141
  %157 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %158 = load i32, i32* @M1064_XPIXPLLCM, align 4
  %159 = call i32 @matroxfb_DAC_in(%struct.matrox_fb_info* %157, i32 %158)
  %160 = shl i32 %159, 16
  store i32 %160, i32* %22, align 4
  %161 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %162 = load i32, i32* @M1064_XPIXPLLCN, align 4
  %163 = call i32 @matroxfb_DAC_in(%struct.matrox_fb_info* %161, i32 %162)
  %164 = shl i32 %163, 8
  %165 = load i32, i32* %22, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %22, align 4
  %167 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %168 = load i32, i32* %22, align 4
  %169 = call i32 @g450_mnp2vco(%struct.matrox_fb_info* %167, i32 %168)
  store i32 %169, i32* %13, align 4
  %170 = load i64, i64* %23, align 8
  %171 = call i32 @matroxfb_DAC_unlock_irqrestore(i64 %170)
  %172 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %173 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store %struct.matrox_pll_limits* %174, %struct.matrox_pll_limits** %14, align 8
  %175 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %176 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store %struct.matrox_pll_cache* %177, %struct.matrox_pll_cache** %15, align 8
  br label %181

178:                                              ; preds = %5
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %6, align 4
  br label %329

181:                                              ; preds = %156, %134, %107
  store i32 0, i32* %12, align 4
  %182 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %183 = load %struct.matrox_pll_limits*, %struct.matrox_pll_limits** %14, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @g450_firstpll(%struct.matrox_fb_info* %182, %struct.matrox_pll_limits* %183, i32* %25, i32 %184)
  store i32 %185, i32* %24, align 4
  br label %186

186:                                              ; preds = %280, %181
  %187 = load i32, i32* %24, align 4
  %188 = load i32, i32* @NO_MORE_MNP, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %285

190:                                              ; preds = %186
  %191 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %192 = load i32, i32* %24, align 4
  %193 = call i32 @g450_mnp2vco(%struct.matrox_fb_info* %191, i32 %192)
  store i32 %193, i32* %27, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %24, align 4
  %196 = load i32, i32* %27, align 4
  %197 = call i32 @g450_vco2f(i32 %195, i32 %196)
  %198 = call i32 @pll_freq_delta(i32 %194, i32 %197)
  store i32 %198, i32* %28, align 4
  %199 = load i32, i32* %12, align 4
  store i32 %199, i32* %26, align 4
  br label %200

200:                                              ; preds = %264, %190
  %201 = load i32, i32* %26, align 4
  %202 = icmp ugt i32 %201, 0
  br i1 %202, label %203, label %267

203:                                              ; preds = %200
  %204 = load i32, i32* %28, align 4
  %205 = load i32*, i32** %11, align 8
  %206 = load i32, i32* %26, align 4
  %207 = sub i32 %206, 1
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp ule i32 %204, %210
  br i1 %211, label %212, label %262

212:                                              ; preds = %203
  %213 = load i32, i32* %28, align 4
  %214 = load i32*, i32** %11, align 8
  %215 = load i32, i32* %26, align 4
  %216 = sub i32 %215, 1
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %213, %219
  br i1 %220, label %221, label %241

221:                                              ; preds = %212
  %222 = load i32, i32* %27, align 4
  %223 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %224 = load i32*, i32** %10, align 8
  %225 = load i32, i32* %26, align 4
  %226 = sub i32 %225, 1
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @g450_mnp2vco(%struct.matrox_fb_info* %223, i32 %229)
  %231 = icmp ne i32 %222, %230
  br i1 %231, label %232, label %241

232:                                              ; preds = %221
  %233 = load i32, i32* %27, align 4
  %234 = load %struct.matrox_pll_limits*, %struct.matrox_pll_limits** %14, align 8
  %235 = getelementptr inbounds %struct.matrox_pll_limits, %struct.matrox_pll_limits* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %236, 17
  %238 = sdiv i32 %237, 16
  %239 = icmp ult i32 %233, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %232
  br label %267

241:                                              ; preds = %232, %221, %212
  %242 = load i32*, i32** %10, align 8
  %243 = load i32, i32* %26, align 4
  %244 = sub i32 %243, 1
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %10, align 8
  %249 = load i32, i32* %26, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %247, i32* %251, align 4
  %252 = load i32*, i32** %11, align 8
  %253 = load i32, i32* %26, align 4
  %254 = sub i32 %253, 1
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %11, align 8
  %259 = load i32, i32* %26, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %257, i32* %261, align 4
  br label %263

262:                                              ; preds = %203
  br label %267

263:                                              ; preds = %241
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %26, align 4
  %266 = add i32 %265, -1
  store i32 %266, i32* %26, align 4
  br label %200

267:                                              ; preds = %262, %240, %200
  %268 = load i32, i32* %24, align 4
  %269 = load i32*, i32** %10, align 8
  %270 = load i32, i32* %26, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %268, i32* %272, align 4
  %273 = load i32, i32* %28, align 4
  %274 = load i32*, i32** %11, align 8
  %275 = load i32, i32* %26, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32 %273, i32* %277, align 4
  %278 = load i32, i32* %12, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %12, align 4
  br label %280

280:                                              ; preds = %267
  %281 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %282 = load %struct.matrox_pll_limits*, %struct.matrox_pll_limits** %14, align 8
  %283 = load i32, i32* %24, align 4
  %284 = call i32 @g450_nextpll(%struct.matrox_fb_info* %281, %struct.matrox_pll_limits* %282, i32* %25, i32 %283)
  store i32 %284, i32* %24, align 4
  br label %186

285:                                              ; preds = %186
  %286 = load i32, i32* %12, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* @EBUSY, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %6, align 4
  br label %329

291:                                              ; preds = %285
  %292 = load i64, i64* %29, align 8
  %293 = call i32 @matroxfb_DAC_lock_irqsave(i64 %292)
  %294 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %295 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %15, align 8
  %296 = load i32*, i32** %10, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @g450_checkcache(%struct.matrox_fb_info* %294, %struct.matrox_pll_cache* %295, i32 %298)
  store i32 %299, i32* %30, align 4
  %300 = load i32, i32* %30, align 4
  %301 = load i32, i32* @NO_MORE_MNP, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %308

303:                                              ; preds = %291
  %304 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %305 = load i32, i32* %30, align 4
  %306 = load i32, i32* %9, align 4
  %307 = call i32 @matroxfb_g450_setpll_cond(%struct.matrox_fb_info* %304, i32 %305, i32 %306)
  br label %320

308:                                              ; preds = %291
  %309 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %310 = load i32, i32* %9, align 4
  %311 = load i32*, i32** %10, align 8
  %312 = load i32, i32* %12, align 4
  %313 = call i32 @g450_findworkingpll(%struct.matrox_fb_info* %309, i32 %310, i32* %311, i32 %312)
  store i32 %313, i32* %30, align 4
  %314 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %15, align 8
  %315 = load i32*, i32** %10, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %30, align 4
  %319 = call i32 @g450_addcache(%struct.matrox_pll_cache* %314, i32 %317, i32 %318)
  br label %320

320:                                              ; preds = %308, %303
  %321 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %322 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %321, i32 0, i32 1
  %323 = load i32, i32* %30, align 4
  %324 = load i32, i32* %9, align 4
  %325 = call i32 @updatehwstate_clk(i32* %322, i32 %323, i32 %324)
  %326 = load i64, i64* %29, align 8
  %327 = call i32 @matroxfb_DAC_unlock_irqrestore(i64 %326)
  %328 = load i32, i32* %30, align 4
  store i32 %328, i32* %6, align 4
  br label %329

329:                                              ; preds = %320, %288, %178
  %330 = load i32, i32* %6, align 4
  ret i32 %330
}

declare dso_local i32 @matroxfb_DAC_lock_irqsave(i64) #1

declare dso_local i32 @matroxfb_DAC_in(%struct.matrox_fb_info*, i32) #1

declare dso_local i32 @matroxfb_DAC_out(%struct.matrox_fb_info*, i32, i32) #1

declare dso_local i32 @mga_outb(i32, i32) #1

declare dso_local i32 @mga_inb(i32) #1

declare dso_local i32 @matroxfb_DAC_unlock_irqrestore(i64) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @g450_mnp2vco(%struct.matrox_fb_info*, i32) #1

declare dso_local i32 @g450_firstpll(%struct.matrox_fb_info*, %struct.matrox_pll_limits*, i32*, i32) #1

declare dso_local i32 @pll_freq_delta(i32, i32) #1

declare dso_local i32 @g450_vco2f(i32, i32) #1

declare dso_local i32 @g450_nextpll(%struct.matrox_fb_info*, %struct.matrox_pll_limits*, i32*, i32) #1

declare dso_local i32 @g450_checkcache(%struct.matrox_fb_info*, %struct.matrox_pll_cache*, i32) #1

declare dso_local i32 @matroxfb_g450_setpll_cond(%struct.matrox_fb_info*, i32, i32) #1

declare dso_local i32 @g450_findworkingpll(%struct.matrox_fb_info*, i32, i32*, i32) #1

declare dso_local i32 @g450_addcache(%struct.matrox_pll_cache*, i32, i32) #1

declare dso_local i32 @updatehwstate_clk(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
