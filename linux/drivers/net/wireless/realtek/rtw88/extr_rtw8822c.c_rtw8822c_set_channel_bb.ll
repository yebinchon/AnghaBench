; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_set_channel_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_set_channel_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_BGCTRL = common dso_local global i32 0, align 4
@BITS_RX_IQ_WEIGHT = common dso_local global i32 0, align 4
@REG_RXCCKSEL = common dso_local global i32 0, align 4
@REG_TXF4 = common dso_local global i32 0, align 4
@REG_CCK_CHECK = common dso_local global i32 0, align 4
@BIT_CHECK_CCK_EN = common dso_local global i32 0, align 4
@REG_CCKTXONLY = common dso_local global i32 0, align 4
@BIT_BB_CCK_CHECK_EN = common dso_local global i32 0, align 4
@REG_CCAMSK = common dso_local global i32 0, align 4
@REG_RXAGCCTL0 = common dso_local global i32 0, align 4
@BITS_RXAGC_CCK = common dso_local global i32 0, align 4
@REG_RXAGCCTL = common dso_local global i32 0, align 4
@BITS_RXAGC_OFDM = common dso_local global i32 0, align 4
@REG_SCOTRK = common dso_local global i32 0, align 4
@REG_TXF0 = common dso_local global i32 0, align 4
@MASKHWORD = common dso_local global i32 0, align 4
@REG_TXF1 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@REG_TXF2 = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@REG_TXF3 = common dso_local global i32 0, align 4
@REG_TXF5 = common dso_local global i32 0, align 4
@REG_TXF6 = common dso_local global i32 0, align 4
@REG_TXF7 = common dso_local global i32 0, align 4
@REG_TXDFIR0 = common dso_local global i32 0, align 4
@REG_DFIRBW = common dso_local global i32 0, align 4
@REG_TXBWCTL = common dso_local global i32 0, align 4
@REG_TXCLK = common dso_local global i32 0, align 4
@REG_CCK_SOURCE = common dso_local global i32 0, align 4
@BIT_NBI_EN = common dso_local global i32 0, align 4
@REG_SBD = common dso_local global i32 0, align 4
@BITS_SUBTUNE = common dso_local global i32 0, align 4
@REG_PT_CHSMO = common dso_local global i32 0, align 4
@BIT_PT_OPT = common dso_local global i32 0, align 4
@REG_CCKSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i32)* @rtw8822c_set_channel_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_set_channel_bb(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 14
  br i1 %10, label %11, label %175

11:                                               ; preds = %4
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %13 = load i32, i32* @REG_BGCTRL, align 4
  %14 = load i32, i32* @BITS_RX_IQ_WEIGHT, align 4
  %15 = call i32 @rtw_write32_clr(%struct.rtw_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %17 = load i32, i32* @REG_RXCCKSEL, align 4
  %18 = call i32 @rtw_write32_mask(%struct.rtw_dev* %16, i32 %17, i32 -268435456, i32 8)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %20 = load i32, i32* @REG_TXF4, align 4
  %21 = call i32 @BIT(i32 20)
  %22 = call i32 @rtw_write32_set(%struct.rtw_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %24 = load i32, i32* @REG_CCK_CHECK, align 4
  %25 = load i32, i32* @BIT_CHECK_CCK_EN, align 4
  %26 = call i32 @rtw_write32_clr(%struct.rtw_dev* %23, i32 %24, i32 %25)
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %28 = load i32, i32* @REG_CCKTXONLY, align 4
  %29 = load i32, i32* @BIT_BB_CCK_CHECK_EN, align 4
  %30 = call i32 @rtw_write32_clr(%struct.rtw_dev* %27, i32 %28, i32 %29)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %32 = load i32, i32* @REG_CCAMSK, align 4
  %33 = call i32 @rtw_write32_mask(%struct.rtw_dev* %31, i32 %32, i32 1056964608, i32 15)
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %69 [
    i32 131, label %35
    i32 130, label %52
  ]

35:                                               ; preds = %11
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %37 = load i32, i32* @REG_RXAGCCTL0, align 4
  %38 = load i32, i32* @BITS_RXAGC_CCK, align 4
  %39 = call i32 @rtw_write32_mask(%struct.rtw_dev* %36, i32 %37, i32 %38, i32 5)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %41 = load i32, i32* @REG_RXAGCCTL, align 4
  %42 = load i32, i32* @BITS_RXAGC_CCK, align 4
  %43 = call i32 @rtw_write32_mask(%struct.rtw_dev* %40, i32 %41, i32 %42, i32 5)
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %45 = load i32, i32* @REG_RXAGCCTL0, align 4
  %46 = load i32, i32* @BITS_RXAGC_OFDM, align 4
  %47 = call i32 @rtw_write32_mask(%struct.rtw_dev* %44, i32 %45, i32 %46, i32 6)
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %49 = load i32, i32* @REG_RXAGCCTL, align 4
  %50 = load i32, i32* @BITS_RXAGC_OFDM, align 4
  %51 = call i32 @rtw_write32_mask(%struct.rtw_dev* %48, i32 %49, i32 %50, i32 6)
  br label %69

52:                                               ; preds = %11
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %54 = load i32, i32* @REG_RXAGCCTL0, align 4
  %55 = load i32, i32* @BITS_RXAGC_CCK, align 4
  %56 = call i32 @rtw_write32_mask(%struct.rtw_dev* %53, i32 %54, i32 %55, i32 4)
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %58 = load i32, i32* @REG_RXAGCCTL, align 4
  %59 = load i32, i32* @BITS_RXAGC_CCK, align 4
  %60 = call i32 @rtw_write32_mask(%struct.rtw_dev* %57, i32 %58, i32 %59, i32 4)
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %62 = load i32, i32* @REG_RXAGCCTL0, align 4
  %63 = load i32, i32* @BITS_RXAGC_OFDM, align 4
  %64 = call i32 @rtw_write32_mask(%struct.rtw_dev* %61, i32 %62, i32 %63, i32 0)
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %66 = load i32, i32* @REG_RXAGCCTL, align 4
  %67 = load i32, i32* @BITS_RXAGC_OFDM, align 4
  %68 = call i32 @rtw_write32_mask(%struct.rtw_dev* %65, i32 %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %11, %52, %35
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 13
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 14
  br i1 %74, label %75, label %79

75:                                               ; preds = %72, %69
  %76 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %77 = load i32, i32* @REG_SCOTRK, align 4
  %78 = call i32 @rtw_write32_mask(%struct.rtw_dev* %76, i32 %77, i32 4095, i32 2409)
  br label %94

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 11
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 12
  br i1 %84, label %85, label %89

85:                                               ; preds = %82, %79
  %86 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %87 = load i32, i32* @REG_SCOTRK, align 4
  %88 = call i32 @rtw_write32_mask(%struct.rtw_dev* %86, i32 %87, i32 4095, i32 2410)
  br label %93

89:                                               ; preds = %82
  %90 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %91 = load i32, i32* @REG_SCOTRK, align 4
  %92 = call i32 @rtw_write32_mask(%struct.rtw_dev* %90, i32 %91, i32 4095, i32 2474)
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %75
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 14
  br i1 %96, label %97, label %130

97:                                               ; preds = %94
  %98 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %99 = load i32, i32* @REG_TXF0, align 4
  %100 = load i32, i32* @MASKHWORD, align 4
  %101 = call i32 @rtw_write32_mask(%struct.rtw_dev* %98, i32 %99, i32 %100, i32 15776)
  %102 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %103 = load i32, i32* @REG_TXF1, align 4
  %104 = load i32, i32* @MASKDWORD, align 4
  %105 = call i32 @rtw_write32_mask(%struct.rtw_dev* %102, i32 %103, i32 %104, i32 1231210801)
  %106 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %107 = load i32, i32* @REG_TXF2, align 4
  %108 = load i32, i32* @MASKLWORD, align 4
  %109 = call i32 @rtw_write32_mask(%struct.rtw_dev* %106, i32 %107, i32 %108, i32 27299)
  %110 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %111 = load i32, i32* @REG_TXF3, align 4
  %112 = load i32, i32* @MASKHWORD, align 4
  %113 = call i32 @rtw_write32_mask(%struct.rtw_dev* %110, i32 %111, i32 %112, i32 43643)
  %114 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %115 = load i32, i32* @REG_TXF4, align 4
  %116 = load i32, i32* @MASKLWORD, align 4
  %117 = call i32 @rtw_write32_mask(%struct.rtw_dev* %114, i32 %115, i32 %116, i32 62423)
  %118 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %119 = load i32, i32* @REG_TXF5, align 4
  %120 = load i32, i32* @MASKDWORD, align 4
  %121 = call i32 @rtw_write32_mask(%struct.rtw_dev* %118, i32 %119, i32 %120, i32 0)
  %122 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %123 = load i32, i32* @REG_TXF6, align 4
  %124 = load i32, i32* @MASKDWORD, align 4
  %125 = call i32 @rtw_write32_mask(%struct.rtw_dev* %122, i32 %123, i32 %124, i32 -16702379)
  %126 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %127 = load i32, i32* @REG_TXF7, align 4
  %128 = load i32, i32* @MASKDWORD, align 4
  %129 = call i32 @rtw_write32_mask(%struct.rtw_dev* %126, i32 %127, i32 %128, i32 65535)
  br label %163

130:                                              ; preds = %94
  %131 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %132 = load i32, i32* @REG_TXF0, align 4
  %133 = load i32, i32* @MASKHWORD, align 4
  %134 = call i32 @rtw_write32_mask(%struct.rtw_dev* %131, i32 %132, i32 %133, i32 21124)
  %135 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %136 = load i32, i32* @REG_TXF1, align 4
  %137 = load i32, i32* @MASKDWORD, align 4
  %138 = call i32 @rtw_write32_mask(%struct.rtw_dev* %135, i32 %136, i32 %137, i32 1041825480)
  %139 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %140 = load i32, i32* @REG_TXF2, align 4
  %141 = load i32, i32* @MASKLWORD, align 4
  %142 = call i32 @rtw_write32_mask(%struct.rtw_dev* %139, i32 %140, i32 %141, i32 2696)
  %143 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %144 = load i32, i32* @REG_TXF3, align 4
  %145 = load i32, i32* @MASKHWORD, align 4
  %146 = call i32 @rtw_write32_mask(%struct.rtw_dev* %143, i32 %144, i32 %145, i32 44228)
  %147 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %148 = load i32, i32* @REG_TXF4, align 4
  %149 = load i32, i32* @MASKLWORD, align 4
  %150 = call i32 @rtw_write32_mask(%struct.rtw_dev* %147, i32 %148, i32 %149, i32 51378)
  %151 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %152 = load i32, i32* @REG_TXF5, align 4
  %153 = load i32, i32* @MASKDWORD, align 4
  %154 = call i32 @rtw_write32_mask(%struct.rtw_dev* %151, i32 %152, i32 %153, i32 16445662)
  %155 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %156 = load i32, i32* @REG_TXF6, align 4
  %157 = load i32, i32* @MASKDWORD, align 4
  %158 = call i32 @rtw_write32_mask(%struct.rtw_dev* %155, i32 %156, i32 %157, i32 1188676)
  %159 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %160 = load i32, i32* @REG_TXF7, align 4
  %161 = load i32, i32* @MASKDWORD, align 4
  %162 = call i32 @rtw_write32_mask(%struct.rtw_dev* %159, i32 %160, i32 %161, i32 268435455)
  br label %163

163:                                              ; preds = %130, %97
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %164, 13
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %168 = load i32, i32* @REG_TXDFIR0, align 4
  %169 = call i32 @rtw_write32_mask(%struct.rtw_dev* %167, i32 %168, i32 112, i32 3)
  br label %174

170:                                              ; preds = %163
  %171 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %172 = load i32, i32* @REG_TXDFIR0, align 4
  %173 = call i32 @rtw_write32_mask(%struct.rtw_dev* %171, i32 %172, i32 112, i32 1)
  br label %174

174:                                              ; preds = %170, %166
  br label %314

175:                                              ; preds = %4
  %176 = load i32, i32* %6, align 4
  %177 = icmp sgt i32 %176, 35
  br i1 %177, label %178, label %313

178:                                              ; preds = %175
  %179 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %180 = load i32, i32* @REG_CCKTXONLY, align 4
  %181 = load i32, i32* @BIT_BB_CCK_CHECK_EN, align 4
  %182 = call i32 @rtw_write32_set(%struct.rtw_dev* %179, i32 %180, i32 %181)
  %183 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %184 = load i32, i32* @REG_CCK_CHECK, align 4
  %185 = load i32, i32* @BIT_CHECK_CCK_EN, align 4
  %186 = call i32 @rtw_write32_set(%struct.rtw_dev* %183, i32 %184, i32 %185)
  %187 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %188 = load i32, i32* @REG_BGCTRL, align 4
  %189 = load i32, i32* @BITS_RX_IQ_WEIGHT, align 4
  %190 = call i32 @rtw_write32_set(%struct.rtw_dev* %187, i32 %188, i32 %189)
  %191 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %192 = load i32, i32* @REG_TXF4, align 4
  %193 = call i32 @BIT(i32 20)
  %194 = call i32 @rtw_write32_clr(%struct.rtw_dev* %191, i32 %192, i32 %193)
  %195 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %196 = load i32, i32* @REG_RXCCKSEL, align 4
  %197 = call i32 @rtw_write32_mask(%struct.rtw_dev* %195, i32 %196, i32 -268435456, i32 0)
  %198 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %199 = load i32, i32* @REG_CCAMSK, align 4
  %200 = call i32 @rtw_write32_mask(%struct.rtw_dev* %198, i32 %199, i32 1056964608, i32 34)
  %201 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %202 = load i32, i32* @REG_TXDFIR0, align 4
  %203 = call i32 @rtw_write32_mask(%struct.rtw_dev* %201, i32 %202, i32 112, i32 3)
  %204 = load i32, i32* %6, align 4
  %205 = icmp sge i32 %204, 36
  br i1 %205, label %206, label %218

206:                                              ; preds = %178
  %207 = load i32, i32* %6, align 4
  %208 = icmp sle i32 %207, 64
  br i1 %208, label %209, label %218

209:                                              ; preds = %206
  %210 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %211 = load i32, i32* @REG_RXAGCCTL0, align 4
  %212 = load i32, i32* @BITS_RXAGC_OFDM, align 4
  %213 = call i32 @rtw_write32_mask(%struct.rtw_dev* %210, i32 %211, i32 %212, i32 1)
  %214 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %215 = load i32, i32* @REG_RXAGCCTL, align 4
  %216 = load i32, i32* @BITS_RXAGC_OFDM, align 4
  %217 = call i32 @rtw_write32_mask(%struct.rtw_dev* %214, i32 %215, i32 %216, i32 1)
  br label %247

218:                                              ; preds = %206, %178
  %219 = load i32, i32* %6, align 4
  %220 = icmp sge i32 %219, 100
  br i1 %220, label %221, label %233

221:                                              ; preds = %218
  %222 = load i32, i32* %6, align 4
  %223 = icmp sle i32 %222, 144
  br i1 %223, label %224, label %233

224:                                              ; preds = %221
  %225 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %226 = load i32, i32* @REG_RXAGCCTL0, align 4
  %227 = load i32, i32* @BITS_RXAGC_OFDM, align 4
  %228 = call i32 @rtw_write32_mask(%struct.rtw_dev* %225, i32 %226, i32 %227, i32 2)
  %229 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %230 = load i32, i32* @REG_RXAGCCTL, align 4
  %231 = load i32, i32* @BITS_RXAGC_OFDM, align 4
  %232 = call i32 @rtw_write32_mask(%struct.rtw_dev* %229, i32 %230, i32 %231, i32 2)
  br label %246

233:                                              ; preds = %221, %218
  %234 = load i32, i32* %6, align 4
  %235 = icmp sge i32 %234, 149
  br i1 %235, label %236, label %245

236:                                              ; preds = %233
  %237 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %238 = load i32, i32* @REG_RXAGCCTL0, align 4
  %239 = load i32, i32* @BITS_RXAGC_OFDM, align 4
  %240 = call i32 @rtw_write32_mask(%struct.rtw_dev* %237, i32 %238, i32 %239, i32 3)
  %241 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %242 = load i32, i32* @REG_RXAGCCTL, align 4
  %243 = load i32, i32* @BITS_RXAGC_OFDM, align 4
  %244 = call i32 @rtw_write32_mask(%struct.rtw_dev* %241, i32 %242, i32 %243, i32 3)
  br label %245

245:                                              ; preds = %236, %233
  br label %246

246:                                              ; preds = %245, %224
  br label %247

247:                                              ; preds = %246, %209
  %248 = load i32, i32* %6, align 4
  %249 = icmp sge i32 %248, 36
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = load i32, i32* %6, align 4
  %252 = icmp sle i32 %251, 51
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %255 = load i32, i32* @REG_SCOTRK, align 4
  %256 = call i32 @rtw_write32_mask(%struct.rtw_dev* %254, i32 %255, i32 4095, i32 1172)
  br label %312

257:                                              ; preds = %250, %247
  %258 = load i32, i32* %6, align 4
  %259 = icmp sge i32 %258, 52
  br i1 %259, label %260, label %267

260:                                              ; preds = %257
  %261 = load i32, i32* %6, align 4
  %262 = icmp sle i32 %261, 55
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  %264 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %265 = load i32, i32* @REG_SCOTRK, align 4
  %266 = call i32 @rtw_write32_mask(%struct.rtw_dev* %264, i32 %265, i32 4095, i32 1171)
  br label %311

267:                                              ; preds = %260, %257
  %268 = load i32, i32* %6, align 4
  %269 = icmp sge i32 %268, 56
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load i32, i32* %6, align 4
  %272 = icmp sle i32 %271, 111
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %275 = load i32, i32* @REG_SCOTRK, align 4
  %276 = call i32 @rtw_write32_mask(%struct.rtw_dev* %274, i32 %275, i32 4095, i32 1107)
  br label %310

277:                                              ; preds = %270, %267
  %278 = load i32, i32* %6, align 4
  %279 = icmp sge i32 %278, 112
  br i1 %279, label %280, label %287

280:                                              ; preds = %277
  %281 = load i32, i32* %6, align 4
  %282 = icmp sle i32 %281, 119
  br i1 %282, label %283, label %287

283:                                              ; preds = %280
  %284 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %285 = load i32, i32* @REG_SCOTRK, align 4
  %286 = call i32 @rtw_write32_mask(%struct.rtw_dev* %284, i32 %285, i32 4095, i32 1106)
  br label %309

287:                                              ; preds = %280, %277
  %288 = load i32, i32* %6, align 4
  %289 = icmp sge i32 %288, 120
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = load i32, i32* %6, align 4
  %292 = icmp sle i32 %291, 172
  br i1 %292, label %293, label %297

293:                                              ; preds = %290
  %294 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %295 = load i32, i32* @REG_SCOTRK, align 4
  %296 = call i32 @rtw_write32_mask(%struct.rtw_dev* %294, i32 %295, i32 4095, i32 1042)
  br label %308

297:                                              ; preds = %290, %287
  %298 = load i32, i32* %6, align 4
  %299 = icmp sge i32 %298, 173
  br i1 %299, label %300, label %307

300:                                              ; preds = %297
  %301 = load i32, i32* %6, align 4
  %302 = icmp sle i32 %301, 177
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %305 = load i32, i32* @REG_SCOTRK, align 4
  %306 = call i32 @rtw_write32_mask(%struct.rtw_dev* %304, i32 %305, i32 4095, i32 1041)
  br label %307

307:                                              ; preds = %303, %300, %297
  br label %308

308:                                              ; preds = %307, %293
  br label %309

309:                                              ; preds = %308, %283
  br label %310

310:                                              ; preds = %309, %273
  br label %311

311:                                              ; preds = %310, %263
  br label %312

312:                                              ; preds = %311, %253
  br label %313

313:                                              ; preds = %312, %175
  br label %314

314:                                              ; preds = %313, %174
  %315 = load i32, i32* %7, align 4
  switch i32 %315, label %456 [
    i32 131, label %316
    i32 130, label %344
    i32 128, label %378
    i32 129, label %400
    i32 132, label %428
  ]

316:                                              ; preds = %314
  %317 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %318 = load i32, i32* @REG_DFIRBW, align 4
  %319 = call i32 @rtw_write32_mask(%struct.rtw_dev* %317, i32 %318, i32 16368, i32 411)
  %320 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %321 = load i32, i32* @REG_TXBWCTL, align 4
  %322 = call i32 @rtw_write32_mask(%struct.rtw_dev* %320, i32 %321, i32 15, i32 0)
  %323 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %324 = load i32, i32* @REG_TXBWCTL, align 4
  %325 = call i32 @rtw_write32_mask(%struct.rtw_dev* %323, i32 %324, i32 65472, i32 0)
  %326 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %327 = load i32, i32* @REG_TXCLK, align 4
  %328 = call i32 @rtw_write32_mask(%struct.rtw_dev* %326, i32 %327, i32 1792, i32 7)
  %329 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %330 = load i32, i32* @REG_TXCLK, align 4
  %331 = call i32 @rtw_write32_mask(%struct.rtw_dev* %329, i32 %330, i32 7340032, i32 6)
  %332 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %333 = load i32, i32* @REG_CCK_SOURCE, align 4
  %334 = load i32, i32* @BIT_NBI_EN, align 4
  %335 = call i32 @rtw_write32_mask(%struct.rtw_dev* %332, i32 %333, i32 %334, i32 0)
  %336 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %337 = load i32, i32* @REG_SBD, align 4
  %338 = load i32, i32* @BITS_SUBTUNE, align 4
  %339 = call i32 @rtw_write32_mask(%struct.rtw_dev* %336, i32 %337, i32 %338, i32 1)
  %340 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %341 = load i32, i32* @REG_PT_CHSMO, align 4
  %342 = load i32, i32* @BIT_PT_OPT, align 4
  %343 = call i32 @rtw_write32_mask(%struct.rtw_dev* %340, i32 %341, i32 %342, i32 0)
  br label %456

344:                                              ; preds = %314
  %345 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %346 = load i32, i32* @REG_CCKSB, align 4
  %347 = call i32 @BIT(i32 4)
  %348 = load i32, i32* %8, align 4
  %349 = icmp eq i32 %348, 1
  %350 = zext i1 %349 to i64
  %351 = select i1 %349, i32 1, i32 0
  %352 = call i32 @rtw_write32_mask(%struct.rtw_dev* %345, i32 %346, i32 %347, i32 %351)
  %353 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %354 = load i32, i32* @REG_TXBWCTL, align 4
  %355 = call i32 @rtw_write32_mask(%struct.rtw_dev* %353, i32 %354, i32 15, i32 5)
  %356 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %357 = load i32, i32* @REG_TXBWCTL, align 4
  %358 = call i32 @rtw_write32_mask(%struct.rtw_dev* %356, i32 %357, i32 192, i32 0)
  %359 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %360 = load i32, i32* @REG_TXBWCTL, align 4
  %361 = load i32, i32* %8, align 4
  %362 = load i32, i32* %8, align 4
  %363 = shl i32 %362, 4
  %364 = or i32 %361, %363
  %365 = call i32 @rtw_write32_mask(%struct.rtw_dev* %359, i32 %360, i32 65280, i32 %364)
  %366 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %367 = load i32, i32* @REG_CCK_SOURCE, align 4
  %368 = load i32, i32* @BIT_NBI_EN, align 4
  %369 = call i32 @rtw_write32_mask(%struct.rtw_dev* %366, i32 %367, i32 %368, i32 1)
  %370 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %371 = load i32, i32* @REG_SBD, align 4
  %372 = load i32, i32* @BITS_SUBTUNE, align 4
  %373 = call i32 @rtw_write32_mask(%struct.rtw_dev* %370, i32 %371, i32 %372, i32 1)
  %374 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %375 = load i32, i32* @REG_PT_CHSMO, align 4
  %376 = load i32, i32* @BIT_PT_OPT, align 4
  %377 = call i32 @rtw_write32_mask(%struct.rtw_dev* %374, i32 %375, i32 %376, i32 1)
  br label %456

378:                                              ; preds = %314
  %379 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %380 = load i32, i32* @REG_TXBWCTL, align 4
  %381 = call i32 @rtw_write32_mask(%struct.rtw_dev* %379, i32 %380, i32 15, i32 10)
  %382 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %383 = load i32, i32* @REG_TXBWCTL, align 4
  %384 = call i32 @rtw_write32_mask(%struct.rtw_dev* %382, i32 %383, i32 192, i32 0)
  %385 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %386 = load i32, i32* @REG_TXBWCTL, align 4
  %387 = load i32, i32* %8, align 4
  %388 = load i32, i32* %8, align 4
  %389 = shl i32 %388, 4
  %390 = or i32 %387, %389
  %391 = call i32 @rtw_write32_mask(%struct.rtw_dev* %385, i32 %386, i32 65280, i32 %390)
  %392 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %393 = load i32, i32* @REG_SBD, align 4
  %394 = load i32, i32* @BITS_SUBTUNE, align 4
  %395 = call i32 @rtw_write32_mask(%struct.rtw_dev* %392, i32 %393, i32 %394, i32 6)
  %396 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %397 = load i32, i32* @REG_PT_CHSMO, align 4
  %398 = load i32, i32* @BIT_PT_OPT, align 4
  %399 = call i32 @rtw_write32_mask(%struct.rtw_dev* %396, i32 %397, i32 %398, i32 1)
  br label %456

400:                                              ; preds = %314
  %401 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %402 = load i32, i32* @REG_DFIRBW, align 4
  %403 = call i32 @rtw_write32_mask(%struct.rtw_dev* %401, i32 %402, i32 16368, i32 683)
  %404 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %405 = load i32, i32* @REG_TXBWCTL, align 4
  %406 = call i32 @rtw_write32_mask(%struct.rtw_dev* %404, i32 %405, i32 15, i32 0)
  %407 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %408 = load i32, i32* @REG_TXBWCTL, align 4
  %409 = call i32 @rtw_write32_mask(%struct.rtw_dev* %407, i32 %408, i32 65472, i32 1)
  %410 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %411 = load i32, i32* @REG_TXCLK, align 4
  %412 = call i32 @rtw_write32_mask(%struct.rtw_dev* %410, i32 %411, i32 1792, i32 4)
  %413 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %414 = load i32, i32* @REG_TXCLK, align 4
  %415 = call i32 @rtw_write32_mask(%struct.rtw_dev* %413, i32 %414, i32 7340032, i32 4)
  %416 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %417 = load i32, i32* @REG_CCK_SOURCE, align 4
  %418 = load i32, i32* @BIT_NBI_EN, align 4
  %419 = call i32 @rtw_write32_mask(%struct.rtw_dev* %416, i32 %417, i32 %418, i32 0)
  %420 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %421 = load i32, i32* @REG_SBD, align 4
  %422 = load i32, i32* @BITS_SUBTUNE, align 4
  %423 = call i32 @rtw_write32_mask(%struct.rtw_dev* %420, i32 %421, i32 %422, i32 1)
  %424 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %425 = load i32, i32* @REG_PT_CHSMO, align 4
  %426 = load i32, i32* @BIT_PT_OPT, align 4
  %427 = call i32 @rtw_write32_mask(%struct.rtw_dev* %424, i32 %425, i32 %426, i32 0)
  br label %456

428:                                              ; preds = %314
  %429 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %430 = load i32, i32* @REG_DFIRBW, align 4
  %431 = call i32 @rtw_write32_mask(%struct.rtw_dev* %429, i32 %430, i32 16368, i32 683)
  %432 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %433 = load i32, i32* @REG_TXBWCTL, align 4
  %434 = call i32 @rtw_write32_mask(%struct.rtw_dev* %432, i32 %433, i32 15, i32 0)
  %435 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %436 = load i32, i32* @REG_TXBWCTL, align 4
  %437 = call i32 @rtw_write32_mask(%struct.rtw_dev* %435, i32 %436, i32 65472, i32 2)
  %438 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %439 = load i32, i32* @REG_TXCLK, align 4
  %440 = call i32 @rtw_write32_mask(%struct.rtw_dev* %438, i32 %439, i32 1792, i32 6)
  %441 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %442 = load i32, i32* @REG_TXCLK, align 4
  %443 = call i32 @rtw_write32_mask(%struct.rtw_dev* %441, i32 %442, i32 7340032, i32 5)
  %444 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %445 = load i32, i32* @REG_CCK_SOURCE, align 4
  %446 = load i32, i32* @BIT_NBI_EN, align 4
  %447 = call i32 @rtw_write32_mask(%struct.rtw_dev* %444, i32 %445, i32 %446, i32 0)
  %448 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %449 = load i32, i32* @REG_SBD, align 4
  %450 = load i32, i32* @BITS_SUBTUNE, align 4
  %451 = call i32 @rtw_write32_mask(%struct.rtw_dev* %448, i32 %449, i32 %450, i32 1)
  %452 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %453 = load i32, i32* @REG_PT_CHSMO, align 4
  %454 = load i32, i32* @BIT_PT_OPT, align 4
  %455 = call i32 @rtw_write32_mask(%struct.rtw_dev* %452, i32 %453, i32 %454, i32 0)
  br label %456

456:                                              ; preds = %314, %428, %400, %378, %344, %316
  ret void
}

declare dso_local i32 @rtw_write32_clr(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
