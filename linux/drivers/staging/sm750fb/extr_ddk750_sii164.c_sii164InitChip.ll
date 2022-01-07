; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_sii164.c_sii164InitChip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_sii164.c_sii164InitChip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_I2C_SCL = common dso_local global i32 0, align 4
@DEFAULT_I2C_SDA = common dso_local global i32 0, align 4
@SII164_VENDOR_ID = common dso_local global i64 0, align 8
@SII164_DEVICE_ID = common dso_local global i64 0, align 8
@SII164_CONFIGURATION_LATCH_FALLING = common dso_local global i8 0, align 1
@SII164_CONFIGURATION_LATCH_RISING = common dso_local global i8 0, align 1
@SII164_CONFIGURATION_BUS_12BITS = common dso_local global i8 0, align 1
@SII164_CONFIGURATION_BUS_24BITS = common dso_local global i8 0, align 1
@SII164_CONFIGURATION_CLOCK_SINGLE = common dso_local global i8 0, align 1
@SII164_CONFIGURATION_CLOCK_DUAL = common dso_local global i8 0, align 1
@SII164_CONFIGURATION_HSYNC_FORCE_LOW = common dso_local global i8 0, align 1
@SII164_CONFIGURATION_HSYNC_AS_IS = common dso_local global i8 0, align 1
@SII164_CONFIGURATION_VSYNC_FORCE_LOW = common dso_local global i8 0, align 1
@SII164_CONFIGURATION_VSYNC_AS_IS = common dso_local global i8 0, align 1
@SII164_I2C_ADDRESS = common dso_local global i32 0, align 4
@SII164_CONFIGURATION = common dso_local global i32 0, align 4
@SII164_DESKEW_DISABLE = common dso_local global i8 0, align 1
@SII164_DESKEW_ENABLE = common dso_local global i8 0, align 1
@SII164_DESKEW_1_STEP = common dso_local global i8 0, align 1
@SII164_DESKEW_2_STEP = common dso_local global i8 0, align 1
@SII164_DESKEW_3_STEP = common dso_local global i8 0, align 1
@SII164_DESKEW_4_STEP = common dso_local global i8 0, align 1
@SII164_DESKEW_5_STEP = common dso_local global i8 0, align 1
@SII164_DESKEW_6_STEP = common dso_local global i8 0, align 1
@SII164_DESKEW_7_STEP = common dso_local global i8 0, align 1
@SII164_DESKEW_8_STEP = common dso_local global i8 0, align 1
@SII164_DESKEW = common dso_local global i32 0, align 4
@SII164_PLL_FILTER_SYNC_CONTINUOUS_DISABLE = common dso_local global i8 0, align 1
@SII164_PLL_FILTER_SYNC_CONTINUOUS_ENABLE = common dso_local global i8 0, align 1
@SII164_PLL_FILTER_DISABLE = common dso_local global i8 0, align 1
@SII164_PLL_FILTER_ENABLE = common dso_local global i8 0, align 1
@SII164_PLL = common dso_local global i32 0, align 4
@SII164_CONFIGURATION_POWER_NORMAL = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sii164InitChip(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7, i8 zeroext %8, i8 zeroext %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store i8 %0, i8* %12, align 1
  store i8 %1, i8* %13, align 1
  store i8 %2, i8* %14, align 1
  store i8 %3, i8* %15, align 1
  store i8 %4, i8* %16, align 1
  store i8 %5, i8* %17, align 1
  store i8 %6, i8* %18, align 1
  store i8 %7, i8* %19, align 1
  store i8 %8, i8* %20, align 1
  store i8 %9, i8* %21, align 1
  %23 = load i32, i32* @DEFAULT_I2C_SCL, align 4
  %24 = load i32, i32* @DEFAULT_I2C_SDA, align 4
  %25 = call i32 @sm750_sw_i2c_init(i32 %23, i32 %24)
  %26 = call i64 (...) @sii164GetVendorID()
  %27 = load i64, i64* @SII164_VENDOR_ID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %240

29:                                               ; preds = %10
  %30 = call i64 (...) @sii164GetDeviceID()
  %31 = load i64, i64* @SII164_DEVICE_ID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %240

33:                                               ; preds = %29
  %34 = load i8, i8* %12, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8, i8* @SII164_CONFIGURATION_LATCH_FALLING, align 1
  store i8 %38, i8* %22, align 1
  br label %41

39:                                               ; preds = %33
  %40 = load i8, i8* @SII164_CONFIGURATION_LATCH_RISING, align 1
  store i8 %40, i8* %22, align 1
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i8, i8* %13, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i8, i8* @SII164_CONFIGURATION_BUS_12BITS, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %22, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %47
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %22, align 1
  br label %59

52:                                               ; preds = %41
  %53 = load i8, i8* @SII164_CONFIGURATION_BUS_24BITS, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %22, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %22, align 1
  br label %59

59:                                               ; preds = %52, %45
  %60 = load i8, i8* %14, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i8, i8* @SII164_CONFIGURATION_CLOCK_SINGLE, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %22, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %22, align 1
  br label %77

70:                                               ; preds = %59
  %71 = load i8, i8* @SII164_CONFIGURATION_CLOCK_DUAL, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %22, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, %72
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %22, align 1
  br label %77

77:                                               ; preds = %70, %63
  %78 = load i8, i8* %15, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i8, i8* @SII164_CONFIGURATION_HSYNC_FORCE_LOW, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* %22, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %85, %83
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %22, align 1
  br label %95

88:                                               ; preds = %77
  %89 = load i8, i8* @SII164_CONFIGURATION_HSYNC_AS_IS, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* %22, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %92, %90
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %22, align 1
  br label %95

95:                                               ; preds = %88, %81
  %96 = load i8, i8* %16, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i8, i8* @SII164_CONFIGURATION_VSYNC_FORCE_LOW, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* %22, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, %101
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %22, align 1
  br label %113

106:                                              ; preds = %95
  %107 = load i8, i8* @SII164_CONFIGURATION_VSYNC_AS_IS, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8, i8* %22, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %110, %108
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %22, align 1
  br label %113

113:                                              ; preds = %106, %99
  %114 = load i32, i32* @SII164_I2C_ADDRESS, align 4
  %115 = load i32, i32* @SII164_CONFIGURATION, align 4
  %116 = load i8, i8* %22, align 1
  %117 = call i32 @i2cWriteReg(i32 %114, i32 %115, i8 zeroext %116)
  %118 = load i8, i8* %17, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i8, i8* @SII164_DESKEW_DISABLE, align 1
  store i8 %122, i8* %22, align 1
  br label %125

123:                                              ; preds = %113
  %124 = load i8, i8* @SII164_DESKEW_ENABLE, align 1
  store i8 %124, i8* %22, align 1
  br label %125

125:                                              ; preds = %123, %121
  %126 = load i8, i8* %18, align 1
  %127 = zext i8 %126 to i32
  switch i32 %127, label %184 [
    i32 0, label %128
    i32 1, label %135
    i32 2, label %142
    i32 3, label %149
    i32 4, label %156
    i32 5, label %163
    i32 6, label %170
    i32 7, label %177
  ]

128:                                              ; preds = %125
  %129 = load i8, i8* @SII164_DESKEW_1_STEP, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* %22, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %132, %130
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %22, align 1
  br label %184

135:                                              ; preds = %125
  %136 = load i8, i8* @SII164_DESKEW_2_STEP, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* %22, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %139, %137
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %22, align 1
  br label %184

142:                                              ; preds = %125
  %143 = load i8, i8* @SII164_DESKEW_3_STEP, align 1
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* %22, align 1
  %146 = zext i8 %145 to i32
  %147 = or i32 %146, %144
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %22, align 1
  br label %184

149:                                              ; preds = %125
  %150 = load i8, i8* @SII164_DESKEW_4_STEP, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8, i8* %22, align 1
  %153 = zext i8 %152 to i32
  %154 = or i32 %153, %151
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %22, align 1
  br label %184

156:                                              ; preds = %125
  %157 = load i8, i8* @SII164_DESKEW_5_STEP, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8, i8* %22, align 1
  %160 = zext i8 %159 to i32
  %161 = or i32 %160, %158
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %22, align 1
  br label %184

163:                                              ; preds = %125
  %164 = load i8, i8* @SII164_DESKEW_6_STEP, align 1
  %165 = zext i8 %164 to i32
  %166 = load i8, i8* %22, align 1
  %167 = zext i8 %166 to i32
  %168 = or i32 %167, %165
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %22, align 1
  br label %184

170:                                              ; preds = %125
  %171 = load i8, i8* @SII164_DESKEW_7_STEP, align 1
  %172 = zext i8 %171 to i32
  %173 = load i8, i8* %22, align 1
  %174 = zext i8 %173 to i32
  %175 = or i32 %174, %172
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %22, align 1
  br label %184

177:                                              ; preds = %125
  %178 = load i8, i8* @SII164_DESKEW_8_STEP, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8, i8* %22, align 1
  %181 = zext i8 %180 to i32
  %182 = or i32 %181, %179
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %22, align 1
  br label %184

184:                                              ; preds = %125, %177, %170, %163, %156, %149, %142, %135, %128
  %185 = load i32, i32* @SII164_I2C_ADDRESS, align 4
  %186 = load i32, i32* @SII164_DESKEW, align 4
  %187 = load i8, i8* %22, align 1
  %188 = call i32 @i2cWriteReg(i32 %185, i32 %186, i8 zeroext %187)
  %189 = load i8, i8* %19, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = load i8, i8* @SII164_PLL_FILTER_SYNC_CONTINUOUS_DISABLE, align 1
  store i8 %193, i8* %22, align 1
  br label %196

194:                                              ; preds = %184
  %195 = load i8, i8* @SII164_PLL_FILTER_SYNC_CONTINUOUS_ENABLE, align 1
  store i8 %195, i8* %22, align 1
  br label %196

196:                                              ; preds = %194, %192
  %197 = load i8, i8* %20, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %196
  %201 = load i8, i8* @SII164_PLL_FILTER_DISABLE, align 1
  %202 = zext i8 %201 to i32
  %203 = load i8, i8* %22, align 1
  %204 = zext i8 %203 to i32
  %205 = or i32 %204, %202
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %22, align 1
  br label %214

207:                                              ; preds = %196
  %208 = load i8, i8* @SII164_PLL_FILTER_ENABLE, align 1
  %209 = zext i8 %208 to i32
  %210 = load i8, i8* %22, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %211, %209
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %22, align 1
  br label %214

214:                                              ; preds = %207, %200
  %215 = load i8, i8* %21, align 1
  %216 = zext i8 %215 to i32
  %217 = and i32 %216, 7
  %218 = shl i32 %217, 1
  %219 = load i8, i8* %22, align 1
  %220 = zext i8 %219 to i32
  %221 = or i32 %220, %218
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %22, align 1
  %223 = load i32, i32* @SII164_I2C_ADDRESS, align 4
  %224 = load i32, i32* @SII164_PLL, align 4
  %225 = load i8, i8* %22, align 1
  %226 = call i32 @i2cWriteReg(i32 %223, i32 %224, i8 zeroext %225)
  %227 = load i32, i32* @SII164_I2C_ADDRESS, align 4
  %228 = load i32, i32* @SII164_CONFIGURATION, align 4
  %229 = call zeroext i8 @i2cReadReg(i32 %227, i32 %228)
  store i8 %229, i8* %22, align 1
  %230 = load i8, i8* @SII164_CONFIGURATION_POWER_NORMAL, align 1
  %231 = zext i8 %230 to i32
  %232 = load i8, i8* %22, align 1
  %233 = zext i8 %232 to i32
  %234 = or i32 %233, %231
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %22, align 1
  %236 = load i32, i32* @SII164_I2C_ADDRESS, align 4
  %237 = load i32, i32* @SII164_CONFIGURATION, align 4
  %238 = load i8, i8* %22, align 1
  %239 = call i32 @i2cWriteReg(i32 %236, i32 %237, i8 zeroext %238)
  store i64 0, i64* %11, align 8
  br label %241

240:                                              ; preds = %29, %10
  store i64 -1, i64* %11, align 8
  br label %241

241:                                              ; preds = %240, %214
  %242 = load i64, i64* %11, align 8
  ret i64 %242
}

declare dso_local i32 @sm750_sw_i2c_init(i32, i32) #1

declare dso_local i64 @sii164GetVendorID(...) #1

declare dso_local i64 @sii164GetDeviceID(...) #1

declare dso_local i32 @i2cWriteReg(i32, i32, i8 zeroext) #1

declare dso_local zeroext i8 @i2cReadReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
