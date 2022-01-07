; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_ant_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_ant_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { %struct.rtw_coex_rfe, %struct.rtw_coex_dm }
%struct.rtw_coex_rfe = type { i32, i32, i64 }
%struct.rtw_coex_dm = type { i32 }

@REG_LED_CFG = common dso_local global i32 0, align 4
@BIT_DPDT_SEL_EN = common dso_local global i32 0, align 4
@BIT_DPDT_WL_SEL = common dso_local global i32 0, align 4
@REG_RFE_CTRL8 = common dso_local global i32 0, align 4
@BIT_MASK_RFE_SEL89 = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_WLG_BT = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_WLG = common dso_local global i32 0, align 4
@REG_RFE_INV8 = common dso_local global i32 0, align 4
@BIT_MASK_RFE_INV89 = common dso_local global i32 0, align 4
@REG_PAD_CTRL1 = common dso_local global i32 0, align 4
@BIT_SW_DPDT_SEL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32)* @rtw8822b_coex_cfg_ant_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_coex_cfg_ant_switch(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_coex*, align 8
  %8 = alloca %struct.rtw_coex_dm*, align 8
  %9 = alloca %struct.rtw_coex_rfe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 0
  store %struct.rtw_coex* %13, %struct.rtw_coex** %7, align 8
  %14 = load %struct.rtw_coex*, %struct.rtw_coex** %7, align 8
  %15 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %14, i32 0, i32 1
  store %struct.rtw_coex_dm* %15, %struct.rtw_coex_dm** %8, align 8
  %16 = load %struct.rtw_coex*, %struct.rtw_coex** %7, align 8
  %17 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %16, i32 0, i32 0
  store %struct.rtw_coex_rfe* %17, %struct.rtw_coex_rfe** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 8
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %8, align 8
  %23 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %198

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  %32 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %8, align 8
  %33 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %9, align 8
  %35 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 132
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 133, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %38, %27
  %43 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %9, align 8
  %44 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  switch i32 %48, label %49 [
    i32 132, label %50
    i32 128, label %111
    i32 133, label %138
    i32 129, label %155
    i32 130, label %172
    i32 131, label %185
  ]

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %42, %49
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %52 = load i32, i32* @REG_LED_CFG, align 4
  %53 = add nsw i32 %52, 2
  %54 = load i32, i32* @BIT_DPDT_SEL_EN, align 4
  %55 = ashr i32 %54, 16
  %56 = call i32 @rtw_write8_mask(%struct.rtw_dev* %51, i32 %53, i32 %55, i32 0)
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %58 = load i32, i32* @REG_LED_CFG, align 4
  %59 = add nsw i32 %58, 3
  %60 = load i32, i32* @BIT_DPDT_WL_SEL, align 4
  %61 = ashr i32 %60, 24
  %62 = call i32 @rtw_write8_mask(%struct.rtw_dev* %57, i32 %59, i32 %61, i32 1)
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %64 = load i32, i32* @REG_RFE_CTRL8, align 4
  %65 = load i32, i32* @BIT_MASK_RFE_SEL89, align 4
  %66 = call i32 @rtw_write8_mask(%struct.rtw_dev* %63, i32 %64, i32 %65, i32 119)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @COEX_SWITCH_TO_WLG_BT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %50
  %71 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %9, align 8
  %72 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 4
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %9, align 8
  %77 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 2
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 3, i32* %11, align 4
  br label %87

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 2, i32 1
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %81, %80
  br label %105

88:                                               ; preds = %50
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @COEX_SWITCH_TO_WLG, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 2, i32 1
  store i32 %97, i32* %11, align 4
  br label %104

98:                                               ; preds = %88
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 2
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %98, %92
  br label %105

105:                                              ; preds = %104, %87
  %106 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %107 = load i32, i32* @REG_RFE_INV8, align 4
  %108 = load i32, i32* @BIT_MASK_RFE_INV89, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @rtw_write8_mask(%struct.rtw_dev* %106, i32 %107, i32 %108, i32 %109)
  br label %198

111:                                              ; preds = %42
  %112 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %113 = load i32, i32* @REG_LED_CFG, align 4
  %114 = add nsw i32 %113, 2
  %115 = load i32, i32* @BIT_DPDT_SEL_EN, align 4
  %116 = ashr i32 %115, 16
  %117 = call i32 @rtw_write8_mask(%struct.rtw_dev* %112, i32 %114, i32 %116, i32 0)
  %118 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %119 = load i32, i32* @REG_LED_CFG, align 4
  %120 = add nsw i32 %119, 3
  %121 = load i32, i32* @BIT_DPDT_WL_SEL, align 4
  %122 = ashr i32 %121, 24
  %123 = call i32 @rtw_write8_mask(%struct.rtw_dev* %118, i32 %120, i32 %122, i32 1)
  %124 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %125 = load i32, i32* @REG_RFE_CTRL8, align 4
  %126 = load i32, i32* @BIT_MASK_RFE_SEL89, align 4
  %127 = call i32 @rtw_write8_mask(%struct.rtw_dev* %124, i32 %125, i32 %126, i32 102)
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 2, i32 1
  store i32 %132, i32* %11, align 4
  %133 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %134 = load i32, i32* @REG_RFE_INV8, align 4
  %135 = load i32, i32* @BIT_MASK_RFE_INV89, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @rtw_write8_mask(%struct.rtw_dev* %133, i32 %134, i32 %135, i32 %136)
  br label %198

138:                                              ; preds = %42
  %139 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %140 = load i32, i32* @REG_LED_CFG, align 4
  %141 = add nsw i32 %140, 2
  %142 = load i32, i32* @BIT_DPDT_SEL_EN, align 4
  %143 = ashr i32 %142, 16
  %144 = call i32 @rtw_write8_mask(%struct.rtw_dev* %139, i32 %141, i32 %143, i32 0)
  %145 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %146 = load i32, i32* @REG_LED_CFG, align 4
  %147 = add nsw i32 %146, 3
  %148 = load i32, i32* @BIT_DPDT_WL_SEL, align 4
  %149 = ashr i32 %148, 24
  %150 = call i32 @rtw_write8_mask(%struct.rtw_dev* %145, i32 %147, i32 %149, i32 1)
  %151 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %152 = load i32, i32* @REG_RFE_CTRL8, align 4
  %153 = load i32, i32* @BIT_MASK_RFE_SEL89, align 4
  %154 = call i32 @rtw_write8_mask(%struct.rtw_dev* %151, i32 %152, i32 %153, i32 136)
  br label %198

155:                                              ; preds = %42
  %156 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %157 = load i32, i32* @REG_LED_CFG, align 4
  %158 = add nsw i32 %157, 2
  %159 = load i32, i32* @BIT_DPDT_SEL_EN, align 4
  %160 = ashr i32 %159, 16
  %161 = call i32 @rtw_write8_mask(%struct.rtw_dev* %156, i32 %158, i32 %160, i32 1)
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 0, i32 1
  store i32 %166, i32* %11, align 4
  %167 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %168 = load i32, i32* @REG_PAD_CTRL1, align 4
  %169 = load i32, i32* @BIT_SW_DPDT_SEL_DATA, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @rtw_write8_mask(%struct.rtw_dev* %167, i32 %168, i32 %169, i32 %170)
  br label %198

172:                                              ; preds = %42
  %173 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %174 = load i32, i32* @REG_LED_CFG, align 4
  %175 = add nsw i32 %174, 2
  %176 = load i32, i32* @BIT_DPDT_SEL_EN, align 4
  %177 = ashr i32 %176, 16
  %178 = call i32 @rtw_write8_mask(%struct.rtw_dev* %173, i32 %175, i32 %177, i32 0)
  %179 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %180 = load i32, i32* @REG_LED_CFG, align 4
  %181 = add nsw i32 %180, 3
  %182 = load i32, i32* @BIT_DPDT_WL_SEL, align 4
  %183 = ashr i32 %182, 24
  %184 = call i32 @rtw_write8_mask(%struct.rtw_dev* %179, i32 %181, i32 %183, i32 1)
  br label %198

185:                                              ; preds = %42
  %186 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %187 = load i32, i32* @REG_LED_CFG, align 4
  %188 = add nsw i32 %187, 2
  %189 = load i32, i32* @BIT_DPDT_SEL_EN, align 4
  %190 = ashr i32 %189, 16
  %191 = call i32 @rtw_write8_mask(%struct.rtw_dev* %186, i32 %188, i32 %190, i32 0)
  %192 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %193 = load i32, i32* @REG_LED_CFG, align 4
  %194 = add nsw i32 %193, 3
  %195 = load i32, i32* @BIT_DPDT_WL_SEL, align 4
  %196 = ashr i32 %195, 24
  %197 = call i32 @rtw_write8_mask(%struct.rtw_dev* %192, i32 %194, i32 %196, i32 0)
  br label %198

198:                                              ; preds = %26, %185, %172, %155, %138, %111, %105
  ret void
}

declare dso_local i32 @rtw_write8_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
