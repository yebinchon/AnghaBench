; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_one_shot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_one_shot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@RTW_DPK_CAL_PWR = common dso_local global i64 0, align 8
@REG_DPD_CTL0 = common dso_local global i32 0, align 4
@REG_RXSRAM_CTL = common dso_local global i32 0, align 4
@BIT_RPT_SEL = common dso_local global i32 0, align 4
@REG_STAT_RPT = common dso_local global i32 0, align 4
@RTW_DBG_RFK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"[DPK] one-shot over 20ms\0A\00", align 1
@REG_NCTL0 = common dso_local global i32 0, align 4
@BIT_SUBPAGE = common dso_local global i32 0, align 4
@REG_R_CONFIG = common dso_local global i32 0, align 4
@BIT_IQ_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rtw_dev*, i64, i64)* @rtw8822c_dpk_one_shot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtw8822c_dpk_one_shot(%struct.rtw_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %10 = call i32 @rtw8822c_dpk_set_gnt_wl(%struct.rtw_dev* %9, i32 1)
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @RTW_DPK_CAL_PWR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %16 = load i32, i32* @REG_DPD_CTL0, align 4
  %17 = call i32 @BIT(i32 12)
  %18 = call i32 @rtw_write32_mask(%struct.rtw_dev* %15, i32 %16, i32 %17, i32 1)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %20 = load i32, i32* @REG_DPD_CTL0, align 4
  %21 = call i32 @BIT(i32 12)
  %22 = call i32 @rtw_write32_mask(%struct.rtw_dev* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %24 = load i32, i32* @REG_RXSRAM_CTL, align 4
  %25 = load i32, i32* @BIT_RPT_SEL, align 4
  %26 = call i32 @rtw_write32_mask(%struct.rtw_dev* %23, i32 %24, i32 %25, i32 0)
  %27 = call i32 @msleep(i32 10)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %29 = load i32, i32* @REG_STAT_RPT, align 4
  %30 = call i32 @BIT(i32 31)
  %31 = call i32 @check_hw_ready(%struct.rtw_dev* %28, i32 %29, i32 %30, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %14
  store i64 1, i64* %8, align 8
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %35 = load i32, i32* @RTW_DBG_RFK, align 4
  %36 = call i32 @rtw_dbg(%struct.rtw_dev* %34, i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %14
  br label %85

38:                                               ; preds = %3
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %40 = load i32, i32* @REG_NCTL0, align 4
  %41 = load i32, i32* @BIT_SUBPAGE, align 4
  %42 = load i64, i64* %5, align 8
  %43 = shl i64 %42, 1
  %44 = or i64 8, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @rtw_write32_mask(%struct.rtw_dev* %39, i32 %40, i32 %41, i32 %45)
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %48 = load i32, i32* @REG_R_CONFIG, align 4
  %49 = load i32, i32* @BIT_IQ_SWITCH, align 4
  %50 = call i32 @rtw_write32_mask(%struct.rtw_dev* %47, i32 %48, i32 %49, i32 9)
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @rtw8822c_dpk_get_cmd(%struct.rtw_dev* %51, i64 %52, i64 %53)
  store i64 %54, i64* %7, align 8
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %56 = load i32, i32* @REG_NCTL0, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @rtw_write32(%struct.rtw_dev* %55, i32 %56, i64 %57)
  %59 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %60 = load i32, i32* @REG_NCTL0, align 4
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i32 @rtw_write32(%struct.rtw_dev* %59, i32 %60, i64 %62)
  %64 = call i32 @msleep(i32 10)
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %66 = call i32 @check_hw_ready(%struct.rtw_dev* %65, i32 11676, i32 255, i32 85)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %38
  store i64 1, i64* %8, align 8
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %70 = load i32, i32* @RTW_DBG_RFK, align 4
  %71 = call i32 @rtw_dbg(%struct.rtw_dev* %69, i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %38
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %74 = load i32, i32* @REG_NCTL0, align 4
  %75 = load i32, i32* @BIT_SUBPAGE, align 4
  %76 = load i64, i64* %5, align 8
  %77 = shl i64 %76, 1
  %78 = or i64 8, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @rtw_write32_mask(%struct.rtw_dev* %73, i32 %74, i32 %75, i32 %79)
  %81 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %82 = load i32, i32* @REG_R_CONFIG, align 4
  %83 = load i32, i32* @BIT_IQ_SWITCH, align 4
  %84 = call i32 @rtw_write32_mask(%struct.rtw_dev* %81, i32 %82, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %72, %37
  %86 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %87 = call i32 @rtw8822c_dpk_set_gnt_wl(%struct.rtw_dev* %86, i32 0)
  %88 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %89 = call i32 @rtw_write8(%struct.rtw_dev* %88, i32 6928, i32 0)
  %90 = load i64, i64* %8, align 8
  ret i64 %90
}

declare dso_local i32 @rtw8822c_dpk_set_gnt_wl(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @check_hw_ready(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*) #1

declare dso_local i64 @rtw8822c_dpk_get_cmd(%struct.rtw_dev*, i64, i64) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i64) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
