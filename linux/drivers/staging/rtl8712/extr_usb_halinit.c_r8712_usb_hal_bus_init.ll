; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_halinit.c_r8712_usb_hal_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_halinit.c_r8712_usb_hal_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.registry_priv }
%struct.registry_priv = type { i64 }

@_SUCCESS = common dso_local global i32 0, align 4
@RTL8712_FPGA = common dso_local global i64 0, align 8
@SYS_CLKR = common dso_local global i32 0, align 4
@SPS1_CTRL = common dso_local global i32 0, align 4
@AFE_MISC = common dso_local global i32 0, align 4
@LDOA15_CTRL = common dso_local global i32 0, align 4
@SYS_ISO_CTRL = common dso_local global i32 0, align 4
@AFE_XTAL_CTRL = common dso_local global i32 0, align 4
@AFE_PLL_CTRL = common dso_local global i32 0, align 4
@SYS_FUNC_EN = common dso_local global i32 0, align 4
@CR = common dso_local global i32 0, align 4
@RTL8712_1stCUT = common dso_local global i64 0, align 8
@SPS0_CTRL = common dso_local global i32 0, align 4
@AFE_MISC_BGEN = common dso_local global i32 0, align 4
@AFE_MISC_MBEN = common dso_local global i32 0, align 4
@LDA15_EN = common dso_local global i32 0, align 4
@SPS1_LDEN = common dso_local global i32 0, align 4
@SPS1_SWEN = common dso_local global i32 0, align 4
@SYS_CLKSEL = common dso_local global i32 0, align 4
@PMC_FSM = common dso_local global i32 0, align 4
@CPU_CLKSEL = common dso_local global i32 0, align 4
@RTL8712_2ndCUT = common dso_local global i64 0, align 8
@RTL8712_3rdCUT = common dso_local global i64 0, align 8
@AFE_MISC_I32_EN = common dso_local global i32 0, align 4
@LDOV12D_CTRL = common dso_local global i32 0, align 4
@LDV12_EN = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@_TXDMA_INIT_VALUE = common dso_local global i32 0, align 4
@_TXDMA_EN = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_usb_hal_bus_init(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.registry_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  store i32 20, i32* %5, align 4
  %8 = load %struct._adapter*, %struct._adapter** %2, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 0
  store %struct.registry_priv* %9, %struct.registry_priv** %6, align 8
  %10 = load %struct.registry_priv*, %struct.registry_priv** %6, align 8
  %11 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RTL8712_FPGA, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %174

15:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %16 = load %struct._adapter*, %struct._adapter** %2, align 8
  %17 = load i32, i32* @SYS_CLKR, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @r8712_write8(%struct._adapter* %16, i32 %17, i32 %18)
  %20 = load %struct._adapter*, %struct._adapter** %2, align 8
  %21 = load i32, i32* @SPS1_CTRL, align 4
  %22 = call i32 @r8712_read8(%struct._adapter* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, 1
  store i32 %24, i32* %3, align 4
  %25 = load %struct._adapter*, %struct._adapter** %2, align 8
  %26 = load i32, i32* @SPS1_CTRL, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @r8712_write8(%struct._adapter* %25, i32 %26, i32 %27)
  %29 = load %struct._adapter*, %struct._adapter** %2, align 8
  %30 = load i32, i32* @AFE_MISC, align 4
  %31 = call i32 @r8712_read8(%struct._adapter* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load %struct._adapter*, %struct._adapter** %2, align 8
  %35 = load i32, i32* @AFE_MISC, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @r8712_write8(%struct._adapter* %34, i32 %35, i32 %36)
  %38 = load %struct._adapter*, %struct._adapter** %2, align 8
  %39 = load i32, i32* @LDOA15_CTRL, align 4
  %40 = call i32 @r8712_read8(%struct._adapter* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %3, align 4
  %43 = load %struct._adapter*, %struct._adapter** %2, align 8
  %44 = load i32, i32* @LDOA15_CTRL, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @r8712_write8(%struct._adapter* %43, i32 %44, i32 %45)
  %47 = load %struct._adapter*, %struct._adapter** %2, align 8
  %48 = load i32, i32* @SPS1_CTRL, align 4
  %49 = call i32 @r8712_read8(%struct._adapter* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, 2
  store i32 %51, i32* %3, align 4
  %52 = load %struct._adapter*, %struct._adapter** %2, align 8
  %53 = load i32, i32* @SPS1_CTRL, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @r8712_write8(%struct._adapter* %52, i32 %53, i32 %54)
  %56 = load %struct._adapter*, %struct._adapter** %2, align 8
  %57 = load i32, i32* @AFE_MISC, align 4
  %58 = call i32 @r8712_read8(%struct._adapter* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, 2
  store i32 %60, i32* %3, align 4
  %61 = load %struct._adapter*, %struct._adapter** %2, align 8
  %62 = load i32, i32* @AFE_MISC, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @r8712_write8(%struct._adapter* %61, i32 %62, i32 %63)
  %65 = load %struct._adapter*, %struct._adapter** %2, align 8
  %66 = load i32, i32* @SYS_ISO_CTRL, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @r8712_read8(%struct._adapter* %65, i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, 8
  store i32 %70, i32* %3, align 4
  %71 = load %struct._adapter*, %struct._adapter** %2, align 8
  %72 = load i32, i32* @SYS_ISO_CTRL, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @r8712_write8(%struct._adapter* %71, i32 %73, i32 %74)
  %76 = load %struct._adapter*, %struct._adapter** %2, align 8
  %77 = load i32, i32* @SYS_ISO_CTRL, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @r8712_read8(%struct._adapter* %76, i32 %78)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = and i32 %80, 239
  store i32 %81, i32* %3, align 4
  %82 = load %struct._adapter*, %struct._adapter** %2, align 8
  %83 = load i32, i32* @SYS_ISO_CTRL, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @r8712_write8(%struct._adapter* %82, i32 %84, i32 %85)
  %87 = load %struct._adapter*, %struct._adapter** %2, align 8
  %88 = load i32, i32* @AFE_XTAL_CTRL, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @r8712_read8(%struct._adapter* %87, i32 %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = and i32 %91, 251
  store i32 %92, i32* %3, align 4
  %93 = load %struct._adapter*, %struct._adapter** %2, align 8
  %94 = load i32, i32* @AFE_XTAL_CTRL, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @r8712_write8(%struct._adapter* %93, i32 %95, i32 %96)
  %98 = load %struct._adapter*, %struct._adapter** %2, align 8
  %99 = load i32, i32* @AFE_PLL_CTRL, align 4
  %100 = call i32 @r8712_read8(%struct._adapter* %98, i32 %99)
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, 1
  store i32 %102, i32* %3, align 4
  %103 = load %struct._adapter*, %struct._adapter** %2, align 8
  %104 = load i32, i32* @AFE_PLL_CTRL, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @r8712_write8(%struct._adapter* %103, i32 %104, i32 %105)
  store i32 238, i32* %3, align 4
  %107 = load %struct._adapter*, %struct._adapter** %2, align 8
  %108 = load i32, i32* @SYS_ISO_CTRL, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @r8712_write8(%struct._adapter* %107, i32 %108, i32 %109)
  %111 = load %struct._adapter*, %struct._adapter** %2, align 8
  %112 = load i32, i32* @SYS_CLKR, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i32 @r8712_read8(%struct._adapter* %111, i32 %113)
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, 8
  store i32 %116, i32* %3, align 4
  %117 = load %struct._adapter*, %struct._adapter** %2, align 8
  %118 = load i32, i32* @SYS_CLKR, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @r8712_write8(%struct._adapter* %117, i32 %119, i32 %120)
  %122 = load %struct._adapter*, %struct._adapter** %2, align 8
  %123 = load i32, i32* @SYS_FUNC_EN, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i32 @r8712_read8(%struct._adapter* %122, i32 %124)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = or i32 %126, 8
  store i32 %127, i32* %3, align 4
  %128 = load %struct._adapter*, %struct._adapter** %2, align 8
  %129 = load i32, i32* @SYS_FUNC_EN, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @r8712_write8(%struct._adapter* %128, i32 %130, i32 %131)
  %133 = load i32, i32* %3, align 4
  %134 = or i32 %133, 128
  store i32 %134, i32* %3, align 4
  %135 = load %struct._adapter*, %struct._adapter** %2, align 8
  %136 = load i32, i32* @SYS_FUNC_EN, align 4
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @r8712_write8(%struct._adapter* %135, i32 %137, i32 %138)
  %140 = load %struct._adapter*, %struct._adapter** %2, align 8
  %141 = load i32, i32* @SYS_CLKR, align 4
  %142 = add nsw i32 %141, 1
  %143 = call i32 @r8712_read8(%struct._adapter* %140, i32 %142)
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* %3, align 4
  %145 = or i32 %144, 128
  %146 = and i32 %145, 191
  store i32 %146, i32* %3, align 4
  %147 = load %struct._adapter*, %struct._adapter** %2, align 8
  %148 = load i32, i32* @SYS_CLKR, align 4
  %149 = add nsw i32 %148, 1
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @r8712_write8(%struct._adapter* %147, i32 %149, i32 %150)
  store i32 252, i32* %3, align 4
  %152 = load %struct._adapter*, %struct._adapter** %2, align 8
  %153 = load i32, i32* @CR, align 4
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @r8712_write8(%struct._adapter* %152, i32 %153, i32 %154)
  store i32 55, i32* %3, align 4
  %156 = load %struct._adapter*, %struct._adapter** %2, align 8
  %157 = load i32, i32* @CR, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @r8712_write8(%struct._adapter* %156, i32 %158, i32 %159)
  %161 = load %struct._adapter*, %struct._adapter** %2, align 8
  %162 = load %struct._adapter*, %struct._adapter** %2, align 8
  %163 = call i32 @r8712_read8(%struct._adapter* %162, i32 270860459)
  %164 = call i32 @BIT(i32 6)
  %165 = or i32 %163, %164
  %166 = call i32 @BIT(i32 7)
  %167 = or i32 %165, %166
  %168 = call i32 @r8712_write8(%struct._adapter* %161, i32 270860459, i32 %167)
  %169 = load %struct._adapter*, %struct._adapter** %2, align 8
  %170 = load %struct._adapter*, %struct._adapter** %2, align 8
  %171 = call i32 @r8712_read8(%struct._adapter* %170, i32 270860296)
  %172 = and i32 %171, -5
  %173 = call i32 @r8712_write8(%struct._adapter* %169, i32 270860296, i32 %172)
  br label %658

174:                                              ; preds = %1
  %175 = load %struct.registry_priv*, %struct.registry_priv** %6, align 8
  %176 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @RTL8712_1stCUT, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %376

180:                                              ; preds = %174
  %181 = load %struct._adapter*, %struct._adapter** %2, align 8
  %182 = load i32, i32* @SPS0_CTRL, align 4
  %183 = add nsw i32 %182, 1
  %184 = call i32 @r8712_write8(%struct._adapter* %181, i32 %183, i32 83)
  %185 = load %struct._adapter*, %struct._adapter** %2, align 8
  %186 = load i32, i32* @SPS0_CTRL, align 4
  %187 = call i32 @r8712_write8(%struct._adapter* %185, i32 %186, i32 87)
  %188 = load %struct._adapter*, %struct._adapter** %2, align 8
  %189 = load i32, i32* @AFE_MISC, align 4
  %190 = call i32 @r8712_read8(%struct._adapter* %188, i32 %189)
  store i32 %190, i32* %3, align 4
  %191 = load %struct._adapter*, %struct._adapter** %2, align 8
  %192 = load i32, i32* @AFE_MISC, align 4
  %193 = load i32, i32* %3, align 4
  %194 = load i32, i32* @AFE_MISC_BGEN, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @AFE_MISC_MBEN, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @r8712_write8(%struct._adapter* %191, i32 %192, i32 %197)
  %199 = load %struct._adapter*, %struct._adapter** %2, align 8
  %200 = load i32, i32* @LDOA15_CTRL, align 4
  %201 = call i32 @r8712_read8(%struct._adapter* %199, i32 %200)
  store i32 %201, i32* %3, align 4
  %202 = load %struct._adapter*, %struct._adapter** %2, align 8
  %203 = load i32, i32* @LDOA15_CTRL, align 4
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @LDA15_EN, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @r8712_write8(%struct._adapter* %202, i32 %203, i32 %206)
  %208 = load %struct._adapter*, %struct._adapter** %2, align 8
  %209 = load i32, i32* @SPS1_CTRL, align 4
  %210 = call i32 @r8712_read8(%struct._adapter* %208, i32 %209)
  store i32 %210, i32* %3, align 4
  %211 = load %struct._adapter*, %struct._adapter** %2, align 8
  %212 = load i32, i32* @SPS1_CTRL, align 4
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* @SPS1_LDEN, align 4
  %215 = or i32 %213, %214
  %216 = call i32 @r8712_write8(%struct._adapter* %211, i32 %212, i32 %215)
  %217 = call i32 @msleep(i32 20)
  %218 = load %struct._adapter*, %struct._adapter** %2, align 8
  %219 = load i32, i32* @SPS1_CTRL, align 4
  %220 = call i32 @r8712_read8(%struct._adapter* %218, i32 %219)
  store i32 %220, i32* %3, align 4
  %221 = load %struct._adapter*, %struct._adapter** %2, align 8
  %222 = load i32, i32* @SPS1_CTRL, align 4
  %223 = load i32, i32* %3, align 4
  %224 = load i32, i32* @SPS1_SWEN, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @r8712_write8(%struct._adapter* %221, i32 %222, i32 %225)
  %227 = load %struct._adapter*, %struct._adapter** %2, align 8
  %228 = load i32, i32* @SPS1_CTRL, align 4
  %229 = call i32 @r8712_write32(%struct._adapter* %227, i32 %228, i32 10990183)
  %230 = load %struct._adapter*, %struct._adapter** %2, align 8
  %231 = load i32, i32* @SYS_ISO_CTRL, align 4
  %232 = add nsw i32 %231, 1
  %233 = call i32 @r8712_read8(%struct._adapter* %230, i32 %232)
  store i32 %233, i32* %3, align 4
  %234 = load %struct._adapter*, %struct._adapter** %2, align 8
  %235 = load i32, i32* @SYS_ISO_CTRL, align 4
  %236 = add nsw i32 %235, 1
  %237 = load i32, i32* %3, align 4
  %238 = or i32 %237, 8
  %239 = call i32 @r8712_write8(%struct._adapter* %234, i32 %236, i32 %238)
  %240 = load %struct._adapter*, %struct._adapter** %2, align 8
  %241 = load i32, i32* @SYS_FUNC_EN, align 4
  %242 = add nsw i32 %241, 1
  %243 = call i32 @r8712_read8(%struct._adapter* %240, i32 %242)
  store i32 %243, i32* %3, align 4
  %244 = load %struct._adapter*, %struct._adapter** %2, align 8
  %245 = load i32, i32* @SYS_FUNC_EN, align 4
  %246 = add nsw i32 %245, 1
  %247 = load i32, i32* %3, align 4
  %248 = or i32 %247, 32
  %249 = call i32 @r8712_write8(%struct._adapter* %244, i32 %246, i32 %248)
  %250 = load %struct._adapter*, %struct._adapter** %2, align 8
  %251 = load i32, i32* @SYS_ISO_CTRL, align 4
  %252 = add nsw i32 %251, 1
  %253 = call i32 @r8712_read8(%struct._adapter* %250, i32 %252)
  store i32 %253, i32* %3, align 4
  %254 = load %struct._adapter*, %struct._adapter** %2, align 8
  %255 = load i32, i32* @SYS_ISO_CTRL, align 4
  %256 = add nsw i32 %255, 1
  %257 = load i32, i32* %3, align 4
  %258 = and i32 %257, 111
  %259 = call i32 @r8712_write8(%struct._adapter* %254, i32 %256, i32 %258)
  %260 = load %struct._adapter*, %struct._adapter** %2, align 8
  %261 = load i32, i32* @AFE_XTAL_CTRL, align 4
  %262 = add nsw i32 %261, 1
  %263 = call i32 @r8712_read8(%struct._adapter* %260, i32 %262)
  store i32 %263, i32* %3, align 4
  %264 = load %struct._adapter*, %struct._adapter** %2, align 8
  %265 = load i32, i32* @AFE_XTAL_CTRL, align 4
  %266 = add nsw i32 %265, 1
  %267 = load i32, i32* %3, align 4
  %268 = and i32 %267, 251
  %269 = call i32 @r8712_write8(%struct._adapter* %264, i32 %266, i32 %268)
  %270 = load %struct._adapter*, %struct._adapter** %2, align 8
  %271 = load i32, i32* @AFE_PLL_CTRL, align 4
  %272 = call i32 @r8712_read8(%struct._adapter* %270, i32 %271)
  store i32 %272, i32* %3, align 4
  %273 = load %struct._adapter*, %struct._adapter** %2, align 8
  %274 = load i32, i32* @AFE_PLL_CTRL, align 4
  %275 = load i32, i32* %3, align 4
  %276 = or i32 %275, 17
  %277 = call i32 @r8712_write8(%struct._adapter* %273, i32 %274, i32 %276)
  %278 = load %struct._adapter*, %struct._adapter** %2, align 8
  %279 = load i32, i32* @SYS_ISO_CTRL, align 4
  %280 = call i32 @r8712_read8(%struct._adapter* %278, i32 %279)
  store i32 %280, i32* %3, align 4
  %281 = load %struct._adapter*, %struct._adapter** %2, align 8
  %282 = load i32, i32* @SYS_ISO_CTRL, align 4
  %283 = load i32, i32* %3, align 4
  %284 = and i32 %283, 238
  %285 = call i32 @r8712_write8(%struct._adapter* %281, i32 %282, i32 %284)
  %286 = load %struct._adapter*, %struct._adapter** %2, align 8
  %287 = load i32, i32* @SYS_CLKR, align 4
  %288 = call i32 @r8712_read8(%struct._adapter* %286, i32 %287)
  store i32 %288, i32* %3, align 4
  %289 = load %struct._adapter*, %struct._adapter** %2, align 8
  %290 = load i32, i32* @SYS_CLKR, align 4
  %291 = load i32, i32* %3, align 4
  %292 = load i32, i32* @SYS_CLKSEL, align 4
  %293 = xor i32 %292, -1
  %294 = and i32 %291, %293
  %295 = call i32 @r8712_write8(%struct._adapter* %289, i32 %290, i32 %294)
  %296 = load %struct._adapter*, %struct._adapter** %2, align 8
  %297 = load i32, i32* @SYS_CLKR, align 4
  %298 = call i32 @r8712_read8(%struct._adapter* %296, i32 %297)
  store i32 %298, i32* %3, align 4
  %299 = load %struct._adapter*, %struct._adapter** %2, align 8
  %300 = load i32, i32* @SYS_CLKR, align 4
  %301 = add nsw i32 %300, 1
  %302 = call i32 @r8712_read8(%struct._adapter* %299, i32 %301)
  store i32 %302, i32* %3, align 4
  %303 = load %struct._adapter*, %struct._adapter** %2, align 8
  %304 = load i32, i32* @SYS_CLKR, align 4
  %305 = add nsw i32 %304, 1
  %306 = load i32, i32* %3, align 4
  %307 = or i32 %306, 24
  %308 = call i32 @r8712_write8(%struct._adapter* %303, i32 %305, i32 %307)
  %309 = load %struct._adapter*, %struct._adapter** %2, align 8
  %310 = load i32, i32* @PMC_FSM, align 4
  %311 = call i32 @r8712_write8(%struct._adapter* %309, i32 %310, i32 2)
  %312 = load %struct._adapter*, %struct._adapter** %2, align 8
  %313 = load i32, i32* @SYS_FUNC_EN, align 4
  %314 = add nsw i32 %313, 1
  %315 = call i32 @r8712_read8(%struct._adapter* %312, i32 %314)
  store i32 %315, i32* %3, align 4
  %316 = load %struct._adapter*, %struct._adapter** %2, align 8
  %317 = load i32, i32* @SYS_FUNC_EN, align 4
  %318 = add nsw i32 %317, 1
  %319 = load i32, i32* %3, align 4
  %320 = or i32 %319, 8
  %321 = call i32 @r8712_write8(%struct._adapter* %316, i32 %318, i32 %320)
  %322 = load %struct._adapter*, %struct._adapter** %2, align 8
  %323 = load i32, i32* @SYS_FUNC_EN, align 4
  %324 = add nsw i32 %323, 1
  %325 = call i32 @r8712_read8(%struct._adapter* %322, i32 %324)
  store i32 %325, i32* %3, align 4
  %326 = load %struct._adapter*, %struct._adapter** %2, align 8
  %327 = load i32, i32* @SYS_FUNC_EN, align 4
  %328 = add nsw i32 %327, 1
  %329 = load i32, i32* %3, align 4
  %330 = or i32 %329, 128
  %331 = call i32 @r8712_write8(%struct._adapter* %326, i32 %328, i32 %330)
  %332 = load %struct._adapter*, %struct._adapter** %2, align 8
  %333 = load i32, i32* @SYS_CLKR, align 4
  %334 = add nsw i32 %333, 1
  %335 = call i32 @r8712_read8(%struct._adapter* %332, i32 %334)
  store i32 %335, i32* %3, align 4
  %336 = load %struct._adapter*, %struct._adapter** %2, align 8
  %337 = load i32, i32* @SYS_CLKR, align 4
  %338 = add nsw i32 %337, 1
  %339 = load i32, i32* %3, align 4
  %340 = or i32 %339, 128
  %341 = and i32 %340, 191
  %342 = call i32 @r8712_write8(%struct._adapter* %336, i32 %338, i32 %341)
  %343 = load %struct._adapter*, %struct._adapter** %2, align 8
  %344 = load i32, i32* @CR, align 4
  %345 = call i32 @r8712_write8(%struct._adapter* %343, i32 %344, i32 252)
  %346 = load %struct._adapter*, %struct._adapter** %2, align 8
  %347 = load i32, i32* @CR, align 4
  %348 = add nsw i32 %347, 1
  %349 = call i32 @r8712_write8(%struct._adapter* %346, i32 %348, i32 55)
  %350 = load %struct._adapter*, %struct._adapter** %2, align 8
  %351 = call i32 @r8712_read8(%struct._adapter* %350, i32 270925404)
  store i32 %351, i32* %3, align 4
  %352 = load %struct._adapter*, %struct._adapter** %2, align 8
  %353 = load i32, i32* %3, align 4
  %354 = call i32 @BIT(i32 7)
  %355 = or i32 %353, %354
  %356 = call i32 @r8712_write8(%struct._adapter* %352, i32 270925404, i32 %355)
  %357 = load %struct._adapter*, %struct._adapter** %2, align 8
  %358 = call i32 @r8712_read8(%struct._adapter* %357, i32 270860459)
  store i32 %358, i32* %3, align 4
  %359 = load %struct._adapter*, %struct._adapter** %2, align 8
  %360 = load i32, i32* %3, align 4
  %361 = call i32 @BIT(i32 6)
  %362 = or i32 %360, %361
  %363 = call i32 @BIT(i32 7)
  %364 = or i32 %362, %363
  %365 = call i32 @r8712_write8(%struct._adapter* %359, i32 270860459, i32 %364)
  %366 = load %struct._adapter*, %struct._adapter** %2, align 8
  %367 = load i32, i32* @SYS_CLKR, align 4
  %368 = call i32 @r8712_read8(%struct._adapter* %366, i32 %367)
  store i32 %368, i32* %3, align 4
  %369 = load %struct._adapter*, %struct._adapter** %2, align 8
  %370 = load i32, i32* @SYS_CLKR, align 4
  %371 = load i32, i32* %3, align 4
  %372 = load i32, i32* @CPU_CLKSEL, align 4
  %373 = xor i32 %372, -1
  %374 = and i32 %371, %373
  %375 = call i32 @r8712_write8(%struct._adapter* %369, i32 %370, i32 %374)
  br label %657

376:                                              ; preds = %174
  %377 = load %struct.registry_priv*, %struct.registry_priv** %6, align 8
  %378 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @RTL8712_2ndCUT, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %388, label %382

382:                                              ; preds = %376
  %383 = load %struct.registry_priv*, %struct.registry_priv** %6, align 8
  %384 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @RTL8712_3rdCUT, align 8
  %387 = icmp eq i64 %385, %386
  br i1 %387, label %388, label %654

388:                                              ; preds = %382, %376
  %389 = load %struct._adapter*, %struct._adapter** %2, align 8
  %390 = call i32 @r8712_write8(%struct._adapter* %389, i32 55, i32 176)
  %391 = call i32 @msleep(i32 20)
  %392 = load %struct._adapter*, %struct._adapter** %2, align 8
  %393 = call i32 @r8712_write8(%struct._adapter* %392, i32 55, i32 48)
  %394 = load %struct._adapter*, %struct._adapter** %2, align 8
  %395 = load i32, i32* @SYS_CLKR, align 4
  %396 = add nsw i32 %395, 1
  %397 = call i32 @r8712_read8(%struct._adapter* %394, i32 %396)
  store i32 %397, i32* %3, align 4
  %398 = load i32, i32* %3, align 4
  %399 = and i32 %398, 128
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %409

401:                                              ; preds = %388
  %402 = load i32, i32* %3, align 4
  %403 = and i32 %402, 63
  store i32 %403, i32* %3, align 4
  %404 = load %struct._adapter*, %struct._adapter** %2, align 8
  %405 = load i32, i32* @SYS_CLKR, align 4
  %406 = add nsw i32 %405, 1
  %407 = load i32, i32* %3, align 4
  %408 = call i32 @r8712_write8(%struct._adapter* %404, i32 %406, i32 %407)
  br label %409

409:                                              ; preds = %401, %388
  %410 = load %struct._adapter*, %struct._adapter** %2, align 8
  %411 = load i32, i32* @SYS_FUNC_EN, align 4
  %412 = add nsw i32 %411, 1
  %413 = call i32 @r8712_read8(%struct._adapter* %410, i32 %412)
  store i32 %413, i32* %3, align 4
  %414 = load i32, i32* %3, align 4
  %415 = and i32 %414, 115
  store i32 %415, i32* %3, align 4
  %416 = load %struct._adapter*, %struct._adapter** %2, align 8
  %417 = load i32, i32* @SYS_FUNC_EN, align 4
  %418 = add nsw i32 %417, 1
  %419 = load i32, i32* %3, align 4
  %420 = call i32 @r8712_write8(%struct._adapter* %416, i32 %418, i32 %419)
  %421 = call i32 @msleep(i32 20)
  %422 = load %struct._adapter*, %struct._adapter** %2, align 8
  %423 = load i32, i32* @SPS0_CTRL, align 4
  %424 = add nsw i32 %423, 1
  %425 = call i32 @r8712_write8(%struct._adapter* %422, i32 %424, i32 83)
  %426 = load %struct._adapter*, %struct._adapter** %2, align 8
  %427 = load i32, i32* @SPS0_CTRL, align 4
  %428 = call i32 @r8712_write8(%struct._adapter* %426, i32 %427, i32 87)
  %429 = load %struct._adapter*, %struct._adapter** %2, align 8
  %430 = load i32, i32* @AFE_MISC, align 4
  %431 = call i32 @r8712_read8(%struct._adapter* %429, i32 %430)
  store i32 %431, i32* %3, align 4
  %432 = load %struct._adapter*, %struct._adapter** %2, align 8
  %433 = load i32, i32* @AFE_MISC, align 4
  %434 = load i32, i32* %3, align 4
  %435 = load i32, i32* @AFE_MISC_BGEN, align 4
  %436 = or i32 %434, %435
  %437 = call i32 @r8712_write8(%struct._adapter* %432, i32 %433, i32 %436)
  %438 = load %struct._adapter*, %struct._adapter** %2, align 8
  %439 = load i32, i32* @AFE_MISC, align 4
  %440 = load i32, i32* %3, align 4
  %441 = load i32, i32* @AFE_MISC_BGEN, align 4
  %442 = or i32 %440, %441
  %443 = load i32, i32* @AFE_MISC_MBEN, align 4
  %444 = or i32 %442, %443
  %445 = load i32, i32* @AFE_MISC_I32_EN, align 4
  %446 = or i32 %444, %445
  %447 = call i32 @r8712_write8(%struct._adapter* %438, i32 %439, i32 %446)
  %448 = load %struct._adapter*, %struct._adapter** %2, align 8
  %449 = load i32, i32* @LDOA15_CTRL, align 4
  %450 = call i32 @r8712_read8(%struct._adapter* %448, i32 %449)
  store i32 %450, i32* %3, align 4
  %451 = load %struct._adapter*, %struct._adapter** %2, align 8
  %452 = load i32, i32* @LDOA15_CTRL, align 4
  %453 = load i32, i32* %3, align 4
  %454 = load i32, i32* @LDA15_EN, align 4
  %455 = or i32 %453, %454
  %456 = call i32 @r8712_write8(%struct._adapter* %451, i32 %452, i32 %455)
  %457 = load %struct._adapter*, %struct._adapter** %2, align 8
  %458 = load i32, i32* @LDOV12D_CTRL, align 4
  %459 = call i32 @r8712_read8(%struct._adapter* %457, i32 %458)
  store i32 %459, i32* %3, align 4
  %460 = load %struct._adapter*, %struct._adapter** %2, align 8
  %461 = load i32, i32* @LDOV12D_CTRL, align 4
  %462 = load i32, i32* %3, align 4
  %463 = load i32, i32* @LDV12_EN, align 4
  %464 = or i32 %462, %463
  %465 = call i32 @r8712_write8(%struct._adapter* %460, i32 %461, i32 %464)
  %466 = load %struct._adapter*, %struct._adapter** %2, align 8
  %467 = load i32, i32* @SYS_ISO_CTRL, align 4
  %468 = add nsw i32 %467, 1
  %469 = call i32 @r8712_read8(%struct._adapter* %466, i32 %468)
  store i32 %469, i32* %3, align 4
  %470 = load %struct._adapter*, %struct._adapter** %2, align 8
  %471 = load i32, i32* @SYS_ISO_CTRL, align 4
  %472 = add nsw i32 %471, 1
  %473 = load i32, i32* %3, align 4
  %474 = or i32 %473, 8
  %475 = call i32 @r8712_write8(%struct._adapter* %470, i32 %472, i32 %474)
  %476 = load %struct._adapter*, %struct._adapter** %2, align 8
  %477 = load i32, i32* @SYS_FUNC_EN, align 4
  %478 = add nsw i32 %477, 1
  %479 = call i32 @r8712_read8(%struct._adapter* %476, i32 %478)
  store i32 %479, i32* %3, align 4
  %480 = load %struct._adapter*, %struct._adapter** %2, align 8
  %481 = load i32, i32* @SYS_FUNC_EN, align 4
  %482 = add nsw i32 %481, 1
  %483 = load i32, i32* %3, align 4
  %484 = or i32 %483, 32
  %485 = call i32 @r8712_write8(%struct._adapter* %480, i32 %482, i32 %484)
  %486 = load %struct._adapter*, %struct._adapter** %2, align 8
  %487 = load i32, i32* @SYS_ISO_CTRL, align 4
  %488 = add nsw i32 %487, 1
  %489 = call i32 @r8712_read8(%struct._adapter* %486, i32 %488)
  store i32 %489, i32* %3, align 4
  %490 = load %struct._adapter*, %struct._adapter** %2, align 8
  %491 = load i32, i32* @SYS_ISO_CTRL, align 4
  %492 = add nsw i32 %491, 1
  %493 = load i32, i32* %3, align 4
  %494 = and i32 %493, 104
  %495 = call i32 @r8712_write8(%struct._adapter* %490, i32 %492, i32 %494)
  %496 = load %struct._adapter*, %struct._adapter** %2, align 8
  %497 = load i32, i32* @AFE_XTAL_CTRL, align 4
  %498 = add nsw i32 %497, 1
  %499 = call i32 @r8712_read8(%struct._adapter* %496, i32 %498)
  store i32 %499, i32* %3, align 4
  %500 = load %struct._adapter*, %struct._adapter** %2, align 8
  %501 = load i32, i32* @AFE_XTAL_CTRL, align 4
  %502 = add nsw i32 %501, 1
  %503 = load i32, i32* %3, align 4
  %504 = and i32 %503, 251
  %505 = call i32 @r8712_write8(%struct._adapter* %500, i32 %502, i32 %504)
  %506 = load %struct._adapter*, %struct._adapter** %2, align 8
  %507 = load i32, i32* @AFE_PLL_CTRL, align 4
  %508 = call i32 @r8712_read8(%struct._adapter* %506, i32 %507)
  store i32 %508, i32* %3, align 4
  %509 = load %struct._adapter*, %struct._adapter** %2, align 8
  %510 = load i32, i32* @AFE_PLL_CTRL, align 4
  %511 = load i32, i32* %3, align 4
  %512 = or i32 %511, 17
  %513 = call i32 @r8712_write8(%struct._adapter* %509, i32 %510, i32 %512)
  %514 = call i32 @udelay(i32 500)
  %515 = load %struct._adapter*, %struct._adapter** %2, align 8
  %516 = load i32, i32* @AFE_PLL_CTRL, align 4
  %517 = load i32, i32* %3, align 4
  %518 = or i32 %517, 81
  %519 = call i32 @r8712_write8(%struct._adapter* %515, i32 %516, i32 %518)
  %520 = call i32 @udelay(i32 500)
  %521 = load %struct._adapter*, %struct._adapter** %2, align 8
  %522 = load i32, i32* @AFE_PLL_CTRL, align 4
  %523 = load i32, i32* %3, align 4
  %524 = or i32 %523, 17
  %525 = call i32 @r8712_write8(%struct._adapter* %521, i32 %522, i32 %524)
  %526 = call i32 @udelay(i32 500)
  %527 = load %struct._adapter*, %struct._adapter** %2, align 8
  %528 = load i32, i32* @SYS_ISO_CTRL, align 4
  %529 = call i32 @r8712_read8(%struct._adapter* %527, i32 %528)
  store i32 %529, i32* %3, align 4
  %530 = load %struct._adapter*, %struct._adapter** %2, align 8
  %531 = load i32, i32* @SYS_ISO_CTRL, align 4
  %532 = load i32, i32* %3, align 4
  %533 = and i32 %532, 238
  %534 = call i32 @r8712_write8(%struct._adapter* %530, i32 %531, i32 %533)
  %535 = load %struct._adapter*, %struct._adapter** %2, align 8
  %536 = load i32, i32* @SYS_CLKR, align 4
  %537 = call i32 @r8712_write8(%struct._adapter* %535, i32 %536, i32 0)
  %538 = load %struct._adapter*, %struct._adapter** %2, align 8
  %539 = load i32, i32* @SYS_CLKR, align 4
  %540 = call i32 @r8712_read8(%struct._adapter* %538, i32 %539)
  store i32 %540, i32* %3, align 4
  %541 = load %struct._adapter*, %struct._adapter** %2, align 8
  %542 = load i32, i32* @SYS_CLKR, align 4
  %543 = load i32, i32* %3, align 4
  %544 = or i32 %543, 160
  %545 = call i32 @r8712_write8(%struct._adapter* %541, i32 %542, i32 %544)
  %546 = load %struct._adapter*, %struct._adapter** %2, align 8
  %547 = load i32, i32* @SYS_CLKR, align 4
  %548 = add nsw i32 %547, 1
  %549 = call i32 @r8712_read8(%struct._adapter* %546, i32 %548)
  store i32 %549, i32* %3, align 4
  %550 = load %struct._adapter*, %struct._adapter** %2, align 8
  %551 = load i32, i32* @SYS_CLKR, align 4
  %552 = add nsw i32 %551, 1
  %553 = load i32, i32* %3, align 4
  %554 = or i32 %553, 24
  %555 = call i32 @r8712_write8(%struct._adapter* %550, i32 %552, i32 %554)
  %556 = load %struct._adapter*, %struct._adapter** %2, align 8
  %557 = load i32, i32* @PMC_FSM, align 4
  %558 = call i32 @r8712_write8(%struct._adapter* %556, i32 %557, i32 2)
  %559 = load %struct._adapter*, %struct._adapter** %2, align 8
  %560 = load i32, i32* @SYS_FUNC_EN, align 4
  %561 = add nsw i32 %560, 1
  %562 = call i32 @r8712_read8(%struct._adapter* %559, i32 %561)
  store i32 %562, i32* %3, align 4
  %563 = load %struct._adapter*, %struct._adapter** %2, align 8
  %564 = load i32, i32* @SYS_FUNC_EN, align 4
  %565 = add nsw i32 %564, 1
  %566 = load i32, i32* %3, align 4
  %567 = or i32 %566, 8
  %568 = call i32 @r8712_write8(%struct._adapter* %563, i32 %565, i32 %567)
  %569 = load %struct._adapter*, %struct._adapter** %2, align 8
  %570 = load i32, i32* @SYS_FUNC_EN, align 4
  %571 = add nsw i32 %570, 1
  %572 = call i32 @r8712_read8(%struct._adapter* %569, i32 %571)
  store i32 %572, i32* %3, align 4
  %573 = load %struct._adapter*, %struct._adapter** %2, align 8
  %574 = load i32, i32* @SYS_FUNC_EN, align 4
  %575 = add nsw i32 %574, 1
  %576 = load i32, i32* %3, align 4
  %577 = or i32 %576, 128
  %578 = call i32 @r8712_write8(%struct._adapter* %573, i32 %575, i32 %577)
  %579 = load %struct._adapter*, %struct._adapter** %2, align 8
  %580 = load i32, i32* @SYS_CLKR, align 4
  %581 = add nsw i32 %580, 1
  %582 = call i32 @r8712_read8(%struct._adapter* %579, i32 %581)
  store i32 %582, i32* %3, align 4
  %583 = load %struct._adapter*, %struct._adapter** %2, align 8
  %584 = load i32, i32* @SYS_CLKR, align 4
  %585 = add nsw i32 %584, 1
  %586 = load i32, i32* %3, align 4
  %587 = or i32 %586, 128
  %588 = and i32 %587, 191
  %589 = call i32 @r8712_write8(%struct._adapter* %583, i32 %585, i32 %588)
  %590 = load %struct._adapter*, %struct._adapter** %2, align 8
  %591 = load i32, i32* @CR, align 4
  %592 = call i32 @r8712_write8(%struct._adapter* %590, i32 %591, i32 252)
  %593 = load %struct._adapter*, %struct._adapter** %2, align 8
  %594 = load i32, i32* @CR, align 4
  %595 = add nsw i32 %594, 1
  %596 = call i32 @r8712_write8(%struct._adapter* %593, i32 %595, i32 55)
  %597 = load %struct._adapter*, %struct._adapter** %2, align 8
  %598 = call i32 @r8712_read8(%struct._adapter* %597, i32 270925404)
  store i32 %598, i32* %3, align 4
  %599 = load %struct._adapter*, %struct._adapter** %2, align 8
  %600 = load i32, i32* %3, align 4
  %601 = call i32 @BIT(i32 7)
  %602 = or i32 %600, %601
  %603 = call i32 @r8712_write8(%struct._adapter* %599, i32 270925404, i32 %602)
  %604 = load %struct._adapter*, %struct._adapter** %2, align 8
  %605 = load i32, i32* @SYS_CLKR, align 4
  %606 = call i32 @r8712_read8(%struct._adapter* %604, i32 %605)
  store i32 %606, i32* %3, align 4
  %607 = load %struct._adapter*, %struct._adapter** %2, align 8
  %608 = load i32, i32* @SYS_CLKR, align 4
  %609 = load i32, i32* %3, align 4
  %610 = load i32, i32* @CPU_CLKSEL, align 4
  %611 = xor i32 %610, -1
  %612 = and i32 %609, %611
  %613 = call i32 @r8712_write8(%struct._adapter* %607, i32 %608, i32 %612)
  %614 = load %struct._adapter*, %struct._adapter** %2, align 8
  %615 = call i32 @r8712_write8(%struct._adapter* %614, i32 270925340, i32 128)
  br label %616

616:                                              ; preds = %628, %409
  %617 = load %struct._adapter*, %struct._adapter** %2, align 8
  %618 = load i32, i32* @TCR, align 4
  %619 = call i32 @r8712_read8(%struct._adapter* %617, i32 %618)
  store i32 %619, i32* %3, align 4
  %620 = load i32, i32* %3, align 4
  %621 = load i32, i32* @_TXDMA_INIT_VALUE, align 4
  %622 = and i32 %620, %621
  %623 = load i32, i32* @_TXDMA_INIT_VALUE, align 4
  %624 = icmp eq i32 %622, %623
  br i1 %624, label %625, label %626

625:                                              ; preds = %616
  br label %632

626:                                              ; preds = %616
  %627 = call i32 @udelay(i32 5)
  br label %628

628:                                              ; preds = %626
  %629 = load i32, i32* %5, align 4
  %630 = add nsw i32 %629, -1
  store i32 %630, i32* %5, align 4
  %631 = icmp ne i32 %629, 0
  br i1 %631, label %616, label %632

632:                                              ; preds = %628, %625
  %633 = load i32, i32* %5, align 4
  %634 = icmp sle i32 %633, 0
  br i1 %634, label %635, label %653

635:                                              ; preds = %632
  %636 = load %struct._adapter*, %struct._adapter** %2, align 8
  %637 = load i32, i32* @CR, align 4
  %638 = call i32 @r8712_read8(%struct._adapter* %636, i32 %637)
  store i32 %638, i32* %3, align 4
  %639 = load %struct._adapter*, %struct._adapter** %2, align 8
  %640 = load i32, i32* @CR, align 4
  %641 = load i32, i32* %3, align 4
  %642 = load i32, i32* @_TXDMA_EN, align 4
  %643 = xor i32 %642, -1
  %644 = and i32 %641, %643
  %645 = call i32 @r8712_write8(%struct._adapter* %639, i32 %640, i32 %644)
  %646 = call i32 @udelay(i32 2)
  %647 = load %struct._adapter*, %struct._adapter** %2, align 8
  %648 = load i32, i32* @CR, align 4
  %649 = load i32, i32* %3, align 4
  %650 = load i32, i32* @_TXDMA_EN, align 4
  %651 = or i32 %649, %650
  %652 = call i32 @r8712_write8(%struct._adapter* %647, i32 %648, i32 %651)
  br label %653

653:                                              ; preds = %635, %632
  br label %656

654:                                              ; preds = %382
  %655 = load i32, i32* @_FAIL, align 4
  store i32 %655, i32* %4, align 4
  br label %656

656:                                              ; preds = %654, %653
  br label %657

657:                                              ; preds = %656, %180
  br label %658

658:                                              ; preds = %657, %15
  %659 = load i32, i32* %4, align 4
  ret i32 %659
}

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @r8712_write32(%struct._adapter*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
