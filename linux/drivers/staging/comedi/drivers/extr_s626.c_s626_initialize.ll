; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice*, %struct.s626_private* }
%struct.comedi_subdevice = type { i32 }
%struct.s626_private = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@S626_MC1_DEBI = common dso_local global i32 0, align 4
@S626_MC1_AUDIO = common dso_local global i32 0, align 4
@S626_MC1_I2C = common dso_local global i32 0, align 4
@S626_P_MC1 = common dso_local global i32 0, align 4
@S626_DEBI_CFG_SLAVE16 = common dso_local global i32 0, align 4
@S626_DEBI_TOUT = common dso_local global i32 0, align 4
@S626_DEBI_CFG_TOUT_BIT = common dso_local global i32 0, align 4
@S626_DEBI_SWAP = common dso_local global i32 0, align 4
@S626_DEBI_CFG_INTEL = common dso_local global i32 0, align 4
@S626_P_DEBICFG = common dso_local global i64 0, align 8
@S626_DEBI_PAGE_DISABLE = common dso_local global i32 0, align 4
@S626_P_DEBIPAGE = common dso_local global i64 0, align 8
@S626_GPIO_BASE = common dso_local global i32 0, align 4
@S626_GPIO1_HI = common dso_local global i32 0, align 4
@S626_P_GPIO = common dso_local global i64 0, align 8
@S626_I2C_CLKSEL = common dso_local global i32 0, align 4
@S626_I2C_ABORT = common dso_local global i32 0, align 4
@S626_P_I2CSTAT = common dso_local global i64 0, align 8
@S626_MC2_UPLD_IIC = common dso_local global i32 0, align 4
@S626_P_MC2 = common dso_local global i32 0, align 4
@s626_i2c_handshake_eoc = common dso_local global i32 0, align 4
@S626_ACON2_INIT = common dso_local global i32 0, align 4
@S626_P_ACON2 = common dso_local global i64 0, align 8
@S626_RSD1 = common dso_local global i32 0, align 4
@S626_SIB_A1 = common dso_local global i32 0, align 4
@S626_P_TSL1 = common dso_local global i64 0, align 8
@S626_EOS = common dso_local global i32 0, align 4
@S626_ACON1_ADCSTART = common dso_local global i32 0, align 4
@S626_P_ACON1 = common dso_local global i64 0, align 8
@S626_P_RPSADDR1 = common dso_local global i64 0, align 8
@S626_P_RPSPAGE1 = common dso_local global i64 0, align 8
@S626_P_RPS1_TOUT = common dso_local global i64 0, align 8
@S626_P_PCI_BT_A = common dso_local global i64 0, align 8
@S626_DAC_WDMABUF_OS = common dso_local global i32 0, align 4
@S626_P_BASEA2_OUT = common dso_local global i64 0, align 8
@S626_P_PROTA2_OUT = common dso_local global i64 0, align 8
@S626_P_PAGEA2_OUT = common dso_local global i64 0, align 8
@S626_XSD2 = common dso_local global i32 0, align 4
@S626_RSD3 = common dso_local global i32 0, align 4
@S626_SIB_A2 = common dso_local global i32 0, align 4
@S626_LF_A2 = common dso_local global i32 0, align 4
@S626_ACON1_DACSTART = common dso_local global i32 0, align 4
@S626_DAC_CHANNELS = common dso_local global i32 0, align 4
@S626_LP_RDMISC2 = common dso_local global i32 0, align 4
@S626_MISC2_BATT_ENABLE = common dso_local global i32 0, align 4
@S626_EOPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @s626_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_initialize(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.s626_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 2
  %11 = load %struct.s626_private*, %struct.s626_private** %10, align 8
  store %struct.s626_private* %11, %struct.s626_private** %4, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = load i32, i32* @S626_MC1_DEBI, align 4
  %14 = load i32, i32* @S626_MC1_AUDIO, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @S626_MC1_I2C, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @S626_P_MC1, align 4
  %19 = call i32 @s626_mc_enable(%struct.comedi_device* %12, i32 %17, i32 %18)
  %20 = load i32, i32* @S626_DEBI_CFG_SLAVE16, align 4
  %21 = load i32, i32* @S626_DEBI_TOUT, align 4
  %22 = load i32, i32* @S626_DEBI_CFG_TOUT_BIT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load i32, i32* @S626_DEBI_SWAP, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @S626_DEBI_CFG_INTEL, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @S626_P_DEBICFG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load i32, i32* @S626_DEBI_PAGE_DISABLE, align 4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @S626_P_DEBIPAGE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* @S626_GPIO_BASE, align 4
  %43 = load i32, i32* @S626_GPIO1_HI, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @S626_P_GPIO, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %52 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %51, i32 0, i32 0
  store i32 160, i32* %52, align 8
  %53 = load i32, i32* @S626_I2C_CLKSEL, align 4
  %54 = load i32, i32* @S626_I2C_ABORT, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @S626_P_I2CSTAT, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %63 = load i32, i32* @S626_MC2_UPLD_IIC, align 4
  %64 = load i32, i32* @S626_P_MC2, align 4
  %65 = call i32 @s626_mc_enable(%struct.comedi_device* %62, i32 %63, i32 %64)
  %66 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %67 = load i32, i32* @s626_i2c_handshake_eoc, align 4
  %68 = call i32 @comedi_timeout(%struct.comedi_device* %66, i32* null, i32* null, i32 %67, i32 0)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %1
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %270

73:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %97, %73
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  %78 = load i32, i32* @S626_I2C_CLKSEL, align 4
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @S626_P_I2CSTAT, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %86 = load i32, i32* @S626_MC2_UPLD_IIC, align 4
  %87 = load i32, i32* @S626_P_MC2, align 4
  %88 = call i32 @s626_mc_enable(%struct.comedi_device* %85, i32 %86, i32 %87)
  %89 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %90 = load i32, i32* @s626_i2c_handshake_eoc, align 4
  %91 = call i32 @comedi_timeout(%struct.comedi_device* %89, i32* null, i32* null, i32 %90, i32 0)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %77
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %270

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %74

100:                                              ; preds = %74
  %101 = load i32, i32* @S626_ACON2_INIT, align 4
  %102 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @S626_P_ACON2, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 %101, i64 %106)
  %108 = load i32, i32* @S626_RSD1, align 4
  %109 = load i32, i32* @S626_SIB_A1, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @S626_P_TSL1, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  %117 = load i32, i32* @S626_RSD1, align 4
  %118 = load i32, i32* @S626_SIB_A1, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @S626_EOS, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @S626_P_TSL1, align 8
  %126 = add nsw i64 %124, %125
  %127 = add nsw i64 %126, 4
  %128 = call i32 @writel(i32 %121, i64 %127)
  %129 = load i32, i32* @S626_ACON1_ADCSTART, align 4
  %130 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %131 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @S626_P_ACON1, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @writel(i32 %129, i64 %134)
  %136 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %137 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @S626_P_RPSADDR1, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @writel(i32 %140, i64 %145)
  %147 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %148 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @S626_P_RPSPAGE1, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @writel(i32 0, i64 %151)
  %153 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %154 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @S626_P_RPS1_TOUT, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @writel(i32 0, i64 %157)
  %159 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %160 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @S626_P_PCI_BT_A, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writel(i32 0, i64 %163)
  %165 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %166 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* @S626_DAC_WDMABUF_OS, align 4
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 4
  %172 = add i64 %168, %171
  store i64 %172, i64* %5, align 8
  %173 = load i64, i64* %5, align 8
  %174 = trunc i64 %173 to i32
  %175 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %176 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @S626_P_BASEA2_OUT, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @writel(i32 %174, i64 %179)
  %181 = load i64, i64* %5, align 8
  %182 = add i64 %181, 4
  %183 = trunc i64 %182 to i32
  %184 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %185 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @S626_P_PROTA2_OUT, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @writel(i32 %183, i64 %188)
  %190 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %191 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i32*
  %195 = load i32, i32* @S626_DAC_WDMABUF_OS, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %199 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %198, i32 0, i32 1
  store i32* %197, i32** %199, align 8
  %200 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %201 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @S626_P_PAGEA2_OUT, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @writel(i32 8, i64 %204)
  %206 = load i32, i32* @S626_XSD2, align 4
  %207 = load i32, i32* @S626_RSD3, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @S626_SIB_A2, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @S626_EOS, align 4
  %212 = or i32 %210, %211
  %213 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %214 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @S626_VECTPORT(i32 0)
  %217 = add nsw i64 %215, %216
  %218 = call i32 @writel(i32 %212, i64 %217)
  %219 = load i32, i32* @S626_LF_A2, align 4
  %220 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %221 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i64 @S626_VECTPORT(i32 1)
  %224 = add nsw i64 %222, %223
  %225 = call i32 @writel(i32 %219, i64 %224)
  %226 = load i32, i32* @S626_ACON1_DACSTART, align 4
  %227 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %228 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @S626_P_ACON1, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i32 @writel(i32 %226, i64 %231)
  %233 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %234 = call i32 @s626_load_trim_dacs(%struct.comedi_device* %233)
  %235 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %236 = call i32 @s626_load_trim_dacs(%struct.comedi_device* %235)
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %100
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %2, align 4
  br label %270

241:                                              ; preds = %100
  store i32 0, i32* %6, align 4
  br label %242

242:                                              ; preds = %255, %241
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* @S626_DAC_CHANNELS, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %258

246:                                              ; preds = %242
  %247 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @s626_set_dac(%struct.comedi_device* %247, i32 %248, i32 0)
  store i32 %249, i32* %8, align 4
  %250 = load i32, i32* %8, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = load i32, i32* %8, align 4
  store i32 %253, i32* %2, align 4
  br label %270

254:                                              ; preds = %246
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %6, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %6, align 4
  br label %242

258:                                              ; preds = %242
  %259 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %260 = call i32 @s626_counters_init(%struct.comedi_device* %259)
  %261 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %262 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %263 = load i32, i32* @S626_LP_RDMISC2, align 4
  %264 = call i32 @s626_debi_read(%struct.comedi_device* %262, i32 %263)
  %265 = load i32, i32* @S626_MISC2_BATT_ENABLE, align 4
  %266 = and i32 %264, %265
  %267 = call i32 @s626_write_misc2(%struct.comedi_device* %261, i32 %266)
  %268 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %269 = call i32 @s626_dio_init(%struct.comedi_device* %268)
  store i32 0, i32* %2, align 4
  br label %270

270:                                              ; preds = %258, %252, %239, %94, %71
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local i32 @s626_mc_enable(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, i32*, i32*, i32, i32) #1

declare dso_local i64 @S626_VECTPORT(i32) #1

declare dso_local i32 @s626_load_trim_dacs(%struct.comedi_device*) #1

declare dso_local i32 @s626_set_dac(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @s626_counters_init(%struct.comedi_device*) #1

declare dso_local i32 @s626_write_misc2(%struct.comedi_device*, i32) #1

declare dso_local i32 @s626_debi_read(%struct.comedi_device*, i32) #1

declare dso_local i32 @s626_dio_init(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
