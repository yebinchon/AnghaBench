; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_charger_init_hw_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_charger_init_hw_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_chrg_info = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AXP20X_V_LTF_CHRG = common dso_local global i32 0, align 4
@CHRG_VLTFC_0C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"register(%x) write error(%d)\0A\00", align 1
@AXP20X_V_HTF_CHRG = common dso_local global i32 0, align 4
@CHRG_VHTFC_45C = common dso_local global i32 0, align 4
@AXP20X_CHRG_CTRL2 = common dso_local global i32 0, align 4
@CNTL2_CHG_OUT_TURNON = common dso_local global i32 0, align 4
@AXP20X_CHRG_CTRL1 = common dso_local global i32 0, align 4
@CHRG_CCCV_ITERM_20P = common dso_local global i32 0, align 4
@AXP20X_CC_CTRL = common dso_local global i32 0, align 4
@FG_CNTL_OCV_ADJ_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"register(%x) read error(%d)\0A\00", align 1
@CHRG_CCCV_CV_MASK = common dso_local global i32 0, align 4
@CHRG_CCCV_CV_BIT_POS = common dso_local global i32 0, align 4
@CV_4100MV = common dso_local global i32 0, align 4
@CV_4150MV = common dso_local global i32 0, align 4
@CV_4200MV = common dso_local global i32 0, align 4
@CV_4350MV = common dso_local global i32 0, align 4
@CHRG_CCCV_CC_MASK = common dso_local global i32 0, align 4
@CHRG_CCCV_CC_BIT_POS = common dso_local global i32 0, align 4
@CHRG_CCCV_CC_LSB_RES = common dso_local global i32 0, align 4
@CHRG_CCCV_CC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp288_chrg_info*)* @charger_init_hw_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charger_init_hw_regs(%struct.axp288_chrg_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axp288_chrg_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.axp288_chrg_info* %0, %struct.axp288_chrg_info** %3, align 8
  %8 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %9 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @AXP20X_V_LTF_CHRG, align 4
  %12 = load i32, i32* @CHRG_VLTFC_0C, align 4
  %13 = call i32 @regmap_write(i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %18 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* @AXP20X_V_LTF_CHRG, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %162

25:                                               ; preds = %1
  %26 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %27 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AXP20X_V_HTF_CHRG, align 4
  %30 = load i32, i32* @CHRG_VHTFC_45C, align 4
  %31 = call i32 @regmap_write(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %36 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* @AXP20X_V_HTF_CHRG, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %162

43:                                               ; preds = %25
  %44 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %45 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AXP20X_CHRG_CTRL2, align 4
  %48 = load i32, i32* @CNTL2_CHG_OUT_TURNON, align 4
  %49 = load i32, i32* @CNTL2_CHG_OUT_TURNON, align 4
  %50 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %55 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* @AXP20X_CHRG_CTRL2, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %162

62:                                               ; preds = %43
  %63 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %64 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AXP20X_CHRG_CTRL1, align 4
  %67 = load i32, i32* @CHRG_CCCV_ITERM_20P, align 4
  %68 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %67, i32 0)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %73 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* @AXP20X_CHRG_CTRL1, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %162

80:                                               ; preds = %62
  %81 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %82 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AXP20X_CC_CTRL, align 4
  %85 = load i32, i32* @FG_CNTL_OCV_ADJ_EN, align 4
  %86 = call i32 @regmap_update_bits(i32 %83, i32 %84, i32 %85, i32 0)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %91 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %90, i32 0, i32 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* @AXP20X_CC_CTRL, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %162

98:                                               ; preds = %80
  %99 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %100 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @AXP20X_CHRG_CTRL1, align 4
  %103 = call i32 @regmap_read(i32 %101, i32 %102, i32* %7)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %98
  %107 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %108 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %107, i32 0, i32 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* @AXP20X_CHRG_CTRL1, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %162

115:                                              ; preds = %98
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @CHRG_CCCV_CV_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @CHRG_CCCV_CV_BIT_POS, align 4
  %120 = lshr i32 %118, %119
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  switch i32 %121, label %138 [
    i32 131, label %122
    i32 130, label %126
    i32 129, label %130
    i32 128, label %134
  ]

122:                                              ; preds = %115
  %123 = load i32, i32* @CV_4100MV, align 4
  %124 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %125 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %138

126:                                              ; preds = %115
  %127 = load i32, i32* @CV_4150MV, align 4
  %128 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %129 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  br label %138

130:                                              ; preds = %115
  %131 = load i32, i32* @CV_4200MV, align 4
  %132 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %133 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  br label %138

134:                                              ; preds = %115
  %135 = load i32, i32* @CV_4350MV, align 4
  %136 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %137 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %115, %134, %130, %126, %122
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @CHRG_CCCV_CC_MASK, align 4
  %141 = and i32 %139, %140
  %142 = load i32, i32* @CHRG_CCCV_CC_BIT_POS, align 4
  %143 = lshr i32 %141, %142
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @CHRG_CCCV_CC_LSB_RES, align 4
  %146 = mul nsw i32 %144, %145
  %147 = load i32, i32* @CHRG_CCCV_CC_OFFSET, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %151 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %153 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %156 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %158 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %161 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %138, %106, %89, %71, %53, %34, %16
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
