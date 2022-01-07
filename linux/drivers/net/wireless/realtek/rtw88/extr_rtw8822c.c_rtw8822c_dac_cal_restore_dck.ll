; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_restore_dck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_restore_dck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i32*** }

@REG_DCKA_I_0 = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i64 0, align 8
@REG_DCKA_I_1 = common dso_local global i32 0, align 4
@REG_DCKA_Q_0 = common dso_local global i32 0, align 4
@REG_DCKA_Q_1 = common dso_local global i32 0, align 4
@REG_DCKB_I_0 = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i64 0, align 8
@REG_DCKB_I_1 = common dso_local global i32 0, align 4
@REG_DCKB_Q_0 = common dso_local global i32 0, align 4
@REG_DCKB_Q_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_dac_cal_restore_dck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_restore_dck(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dm_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 0
  store %struct.rtw_dm_info* %6, %struct.rtw_dm_info** %3, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = load i32, i32* @REG_DCKA_I_0, align 4
  %9 = call i32 @BIT(i32 19)
  %10 = call i32 @rtw_write32_set(%struct.rtw_dev* %7, i32 %8, i32 %9)
  %11 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %11, i32 0, i32 0
  %13 = load i32***, i32**** %12, align 8
  %14 = load i64, i64* @RF_PATH_A, align 8
  %15 = getelementptr inbounds i32**, i32*** %13, i64 %14
  %16 = load i32**, i32*** %15, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %22 = load i32, i32* @REG_DCKA_I_0, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @rtw_write32_mask(%struct.rtw_dev* %21, i32 %22, i32 -268435456, i32 %23)
  %25 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %26 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %25, i32 0, i32 0
  %27 = load i32***, i32**** %26, align 8
  %28 = load i64, i64* @RF_PATH_A, align 8
  %29 = getelementptr inbounds i32**, i32*** %27, i64 %28
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %36 = load i32, i32* @REG_DCKA_I_1, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @rtw_write32_mask(%struct.rtw_dev* %35, i32 %36, i32 15, i32 %37)
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %40 = load i32, i32* @REG_DCKA_Q_0, align 4
  %41 = call i32 @BIT(i32 19)
  %42 = call i32 @rtw_write32_set(%struct.rtw_dev* %39, i32 %40, i32 %41)
  %43 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %44 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %43, i32 0, i32 0
  %45 = load i32***, i32**** %44, align 8
  %46 = load i64, i64* @RF_PATH_A, align 8
  %47 = getelementptr inbounds i32**, i32*** %45, i64 %46
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %54 = load i32, i32* @REG_DCKA_Q_0, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @rtw_write32_mask(%struct.rtw_dev* %53, i32 %54, i32 -268435456, i32 %55)
  %57 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %58 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %57, i32 0, i32 0
  %59 = load i32***, i32**** %58, align 8
  %60 = load i64, i64* @RF_PATH_A, align 8
  %61 = getelementptr inbounds i32**, i32*** %59, i64 %60
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %4, align 4
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %68 = load i32, i32* @REG_DCKA_Q_1, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @rtw_write32_mask(%struct.rtw_dev* %67, i32 %68, i32 15, i32 %69)
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %72 = load i32, i32* @REG_DCKB_I_0, align 4
  %73 = call i32 @BIT(i32 19)
  %74 = call i32 @rtw_write32_set(%struct.rtw_dev* %71, i32 %72, i32 %73)
  %75 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %76 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %75, i32 0, i32 0
  %77 = load i32***, i32**** %76, align 8
  %78 = load i64, i64* @RF_PATH_B, align 8
  %79 = getelementptr inbounds i32**, i32*** %77, i64 %78
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %4, align 4
  %85 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %86 = load i32, i32* @REG_DCKB_I_0, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @rtw_write32_mask(%struct.rtw_dev* %85, i32 %86, i32 -268435456, i32 %87)
  %89 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %90 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %89, i32 0, i32 0
  %91 = load i32***, i32**** %90, align 8
  %92 = load i64, i64* @RF_PATH_B, align 8
  %93 = getelementptr inbounds i32**, i32*** %91, i64 %92
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %4, align 4
  %99 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %100 = load i32, i32* @REG_DCKB_I_1, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @rtw_write32_mask(%struct.rtw_dev* %99, i32 %100, i32 15, i32 %101)
  %103 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %104 = load i32, i32* @REG_DCKB_Q_0, align 4
  %105 = call i32 @BIT(i32 19)
  %106 = call i32 @rtw_write32_set(%struct.rtw_dev* %103, i32 %104, i32 %105)
  %107 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %108 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %107, i32 0, i32 0
  %109 = load i32***, i32**** %108, align 8
  %110 = load i64, i64* @RF_PATH_B, align 8
  %111 = getelementptr inbounds i32**, i32*** %109, i64 %110
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %4, align 4
  %117 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %118 = load i32, i32* @REG_DCKB_Q_0, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @rtw_write32_mask(%struct.rtw_dev* %117, i32 %118, i32 -268435456, i32 %119)
  %121 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %122 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %121, i32 0, i32 0
  %123 = load i32***, i32**** %122, align 8
  %124 = load i64, i64* @RF_PATH_B, align 8
  %125 = getelementptr inbounds i32**, i32*** %123, i64 %124
  %126 = load i32**, i32*** %125, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %4, align 4
  %131 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %132 = load i32, i32* @REG_DCKB_Q_1, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @rtw_write32_mask(%struct.rtw_dev* %131, i32 %132, i32 15, i32 %133)
  ret void
}

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
