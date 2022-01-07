; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_iqk_path_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_iqk_path_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_S0S1_PATH_SWITCH = common dso_local global i32 0, align 4
@REG_FPGA0_IQK = common dso_local global i32 0, align 4
@RF_A = common dso_local global i32 0, align 4
@RF6052_REG_WE_LUT = common dso_local global i32 0, align 4
@RF6052_REG_RCK_OS = common dso_local global i32 0, align 4
@RF6052_REG_TXPA_G1 = common dso_local global i32 0, align 4
@RF6052_REG_TXPA_G2 = common dso_local global i32 0, align 4
@REG_TX_IQK = common dso_local global i32 0, align 4
@REG_RX_IQK = common dso_local global i32 0, align 4
@REG_TX_IQK_TONE_A = common dso_local global i32 0, align 4
@REG_RX_IQK_TONE_A = common dso_local global i32 0, align 4
@REG_TX_IQK_TONE_B = common dso_local global i32 0, align 4
@REG_RX_IQK_TONE_B = common dso_local global i32 0, align 4
@REG_TX_IQK_PI_A = common dso_local global i32 0, align 4
@REG_RX_IQK_PI_A = common dso_local global i32 0, align 4
@REG_TX_IQK_PI_B = common dso_local global i32 0, align 4
@REG_RX_IQK_PI_B = common dso_local global i32 0, align 4
@REG_IQK_AGC_RSP = common dso_local global i32 0, align 4
@REG_BT_CONTROL_8723BU = common dso_local global i32 0, align 4
@REG_IQK_AGC_PTS = common dso_local global i32 0, align 4
@REG_RX_POWER_AFTER_IQK_A_2 = common dso_local global i32 0, align 4
@REG_TX_POWER_BEFORE_IQK_A = common dso_local global i32 0, align 4
@REG_TX_POWER_AFTER_IQK_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8723bu_iqk_path_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8723bu_iqk_path_a(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %10 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %11 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %13 = load i32, i32* @REG_FPGA0_IQK, align 4
  %14 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %7, align 4
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %18 = load i32, i32* @REG_FPGA0_IQK, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %17, i32 %18, i32 %19)
  %21 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %22 = load i32, i32* @RF_A, align 4
  %23 = load i32, i32* @RF6052_REG_WE_LUT, align 4
  %24 = call i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv* %21, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, 524288
  store i32 %26, i32* %7, align 4
  %27 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %28 = load i32, i32* @RF_A, align 4
  %29 = load i32, i32* @RF6052_REG_WE_LUT, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %33 = load i32, i32* @RF_A, align 4
  %34 = load i32, i32* @RF6052_REG_RCK_OS, align 4
  %35 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %32, i32 %33, i32 %34, i32 131072)
  %36 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %37 = load i32, i32* @RF_A, align 4
  %38 = load i32, i32* @RF6052_REG_TXPA_G1, align 4
  %39 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %36, i32 %37, i32 %38, i32 63)
  %40 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %41 = load i32, i32* @RF_A, align 4
  %42 = load i32, i32* @RF6052_REG_TXPA_G2, align 4
  %43 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %40, i32 %41, i32 %42, i32 819079)
  %44 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %45 = load i32, i32* @REG_TX_IQK, align 4
  %46 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %44, i32 %45, i32 16808960)
  %47 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %48 = load i32, i32* @REG_RX_IQK, align 4
  %49 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %47, i32 %48, i32 16795648)
  %50 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %51 = load i32, i32* @REG_TX_IQK_TONE_A, align 4
  %52 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %50, i32 %51, i32 402689052)
  %53 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %54 = load i32, i32* @REG_RX_IQK_TONE_A, align 4
  %55 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %53, i32 %54, i32 939559964)
  %56 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %57 = load i32, i32* @REG_TX_IQK_TONE_B, align 4
  %58 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %56, i32 %57, i32 939559964)
  %59 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %60 = load i32, i32* @REG_RX_IQK_TONE_B, align 4
  %61 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %59, i32 %60, i32 939559964)
  %62 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %63 = load i32, i32* @REG_TX_IQK_PI_A, align 4
  %64 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %62, i32 %63, i32 -2112617494)
  %65 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %66 = load i32, i32* @REG_RX_IQK_PI_A, align 4
  %67 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %65, i32 %66, i32 672202752)
  %68 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %69 = load i32, i32* @REG_TX_IQK_PI_B, align 4
  %70 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %68, i32 %69, i32 -2112815104)
  %71 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %72 = load i32, i32* @REG_RX_IQK_PI_B, align 4
  %73 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %71, i32 %72, i32 672202752)
  %74 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %75 = load i32, i32* @REG_IQK_AGC_RSP, align 4
  %76 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %74, i32 %75, i32 4598033)
  %77 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %78 = load i32, i32* @REG_FPGA0_IQK, align 4
  %79 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 255
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, -2139095040
  store i32 %83, i32* %7, align 4
  %84 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %85 = load i32, i32* @REG_FPGA0_IQK, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %84, i32 %85, i32 %86)
  %88 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %89 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %96

92:                                               ; preds = %1
  %93 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %94 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %95 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %93, i32 %94, i32 0)
  br label %100

96:                                               ; preds = %1
  %97 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %98 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %99 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %97, i32 %98, i32 640)
  br label %100

100:                                              ; preds = %96, %92
  %101 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %102 = load i32, i32* @REG_BT_CONTROL_8723BU, align 4
  %103 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %101, i32 %102, i32 2048)
  %104 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %105 = load i32, i32* @REG_IQK_AGC_PTS, align 4
  %106 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %104, i32 %105, i32 -117440512)
  %107 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %108 = load i32, i32* @REG_IQK_AGC_PTS, align 4
  %109 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %107, i32 %108, i32 -134217728)
  %110 = call i32 @mdelay(i32 1)
  %111 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %112 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %111, i32 %112, i32 %113)
  %115 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %116 = load i32, i32* @REG_FPGA0_IQK, align 4
  %117 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %115, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, 255
  store i32 %119, i32* %7, align 4
  %120 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %121 = load i32, i32* @REG_FPGA0_IQK, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %120, i32 %121, i32 %122)
  %124 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %125 = load i32, i32* @REG_RX_POWER_AFTER_IQK_A_2, align 4
  %126 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %124, i32 %125)
  store i32 %126, i32* %3, align 4
  %127 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %128 = load i32, i32* @REG_TX_POWER_BEFORE_IQK_A, align 4
  %129 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %127, i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %131 = load i32, i32* @REG_TX_POWER_AFTER_IQK_A, align 4
  %132 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %130, i32 %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = ashr i32 %133, 16
  %135 = and i32 %134, 1023
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, 512
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %100
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 1024, %140
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %139, %100
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @BIT(i32 28)
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %169, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %4, align 4
  %149 = and i32 %148, 67043328
  %150 = icmp ne i32 %149, 21102592
  br i1 %150, label %151, label %169

151:                                              ; preds = %147
  %152 = load i32, i32* %5, align 4
  %153 = and i32 %152, 67043328
  %154 = icmp ne i32 %153, 4325376
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = load i32, i32* %4, align 4
  %157 = and i32 %156, 67043328
  %158 = icmp slt i32 %157, 17825792
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i32, i32* %4, align 4
  %161 = and i32 %160, 67043328
  %162 = icmp sgt i32 %161, 15728640
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 15
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %8, align 4
  %168 = or i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %170

169:                                              ; preds = %163, %159, %155, %151, %147, %142
  br label %171

170:                                              ; preds = %166
  br label %171

171:                                              ; preds = %170, %169
  %172 = load i32, i32* %8, align 4
  ret i32 %172
}

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
