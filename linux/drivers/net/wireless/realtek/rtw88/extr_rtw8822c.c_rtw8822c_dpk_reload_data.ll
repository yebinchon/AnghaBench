; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_reload_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_reload_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i64, i64, i32*, i32, i32* }

@RF_PATH_A = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i32 0, align 4
@REG_NCTL0 = common dso_local global i32 0, align 4
@BIT_SUBPAGE = common dso_local global i32 0, align 4
@RTW_BAND_2G = common dso_local global i64 0, align 8
@REG_DPD_LUT3 = common dso_local global i32 0, align 4
@REG_DPD_AGC = common dso_local global i32 0, align 4
@RTW_DPK_DPK_ON = common dso_local global i32 0, align 4
@REG_DPD_CTL0_S0 = common dso_local global i32 0, align 4
@BIT_GS_PWSF = common dso_local global i32 0, align 4
@REG_DPD_CTL0_S1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_dpk_reload_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_reload_data(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dpk_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.rtw_dpk_info* %7, %struct.rtw_dpk_info** %3, align 8
  %8 = load i32, i32* @RF_PATH_A, align 4
  %9 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @test_bit(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @RF_PATH_B, align 4
  %16 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %17 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %23 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %117

27:                                               ; preds = %21, %14, %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %111, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %31 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %114

35:                                               ; preds = %28
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %37 = load i32, i32* @REG_NCTL0, align 4
  %38 = load i32, i32* @BIT_SUBPAGE, align 4
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 %39, 1
  %41 = or i32 8, %40
  %42 = call i32 @rtw_write32_mask(%struct.rtw_dev* %36, i32 %37, i32 %38, i32 %41)
  %43 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %44 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RTW_BAND_2G, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %50 = load i32, i32* @REG_DPD_LUT3, align 4
  %51 = call i32 @rtw_write32(%struct.rtw_dev* %49, i32 %50, i32 521142272)
  br label %56

52:                                               ; preds = %35
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %54 = load i32, i32* @REG_DPD_LUT3, align 4
  %55 = call i32 @rtw_write32(%struct.rtw_dev* %53, i32 %54, i32 520945664)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %58 = load i32, i32* @REG_DPD_AGC, align 4
  %59 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %60 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rtw_write8(%struct.rtw_dev* %57, i32 %58, i32 %65)
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %71 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @test_bit(i32 %69, i32 %72)
  %74 = call i32 @rtw8822c_dpk_coef_write(%struct.rtw_dev* %67, i32 %68, i32 %73)
  %75 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @RTW_DPK_DPK_ON, align 4
  %78 = call i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %80 = load i32, i32* @REG_NCTL0, align 4
  %81 = load i32, i32* @BIT_SUBPAGE, align 4
  %82 = call i32 @rtw_write32_mask(%struct.rtw_dev* %79, i32 %80, i32 %81, i32 12)
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @RF_PATH_A, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %56
  %87 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %88 = load i32, i32* @REG_DPD_CTL0_S0, align 4
  %89 = load i32, i32* @BIT_GS_PWSF, align 4
  %90 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %91 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @rtw_write32_mask(%struct.rtw_dev* %87, i32 %88, i32 %89, i32 %96)
  br label %110

98:                                               ; preds = %56
  %99 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %100 = load i32, i32* @REG_DPD_CTL0_S1, align 4
  %101 = load i32, i32* @BIT_GS_PWSF, align 4
  %102 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %103 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rtw_write32_mask(%struct.rtw_dev* %99, i32 %100, i32 %101, i32 %108)
  br label %110

110:                                              ; preds = %98, %86
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %28

114:                                              ; preds = %28
  %115 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %116 = call i32 @rtw8822c_dpk_cal_coef1(%struct.rtw_dev* %115)
  br label %117

117:                                              ; preds = %114, %26
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw8822c_dpk_coef_write(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw8822c_dpk_cal_coef1(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
