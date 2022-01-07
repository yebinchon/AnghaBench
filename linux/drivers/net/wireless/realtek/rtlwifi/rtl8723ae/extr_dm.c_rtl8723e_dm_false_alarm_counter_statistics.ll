; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_false_alarm_counter_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_false_alarm_counter_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.false_alarm_statistics }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32 }

@ROFDM_PHYCOUNTER1 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER2 = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER3 = common dso_local global i32 0, align 4
@RCCK0_FALSEALARMREPORT = common dso_local global i32 0, align 4
@RCCK0_FACOUNTERLOWER = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@RCCK0_FACOUNTERUPPER = common dso_local global i32 0, align 4
@MASKBYTE3 = common dso_local global i32 0, align 4
@ROFDM1_LSTF = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"cnt_parity_fail = %d, cnt_rate_illegal = %d, cnt_crc8_fail = %d, cnt_mcs_fail = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"cnt_ofdm_fail = %x, cnt_cck_fail = %x, cnt_all = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_dm_false_alarm_counter_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_false_alarm_counter_statistics(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.false_alarm_statistics*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %4, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 0
  store %struct.false_alarm_statistics* %9, %struct.false_alarm_statistics** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = load i32, i32* @ROFDM_PHYCOUNTER1, align 4
  %12 = load i32, i32* @MASKDWORD, align 4
  %13 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %10, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, -65536
  %16 = lshr i32 %15, 16
  %17 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %18 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = load i32, i32* @ROFDM_PHYCOUNTER2, align 4
  %21 = load i32, i32* @MASKDWORD, align 4
  %22 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %19, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 65535
  %25 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %26 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, -65536
  %29 = lshr i32 %28, 16
  %30 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %31 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = load i32, i32* @ROFDM_PHYCOUNTER3, align 4
  %34 = load i32, i32* @MASKDWORD, align 4
  %35 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %32, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 65535
  %38 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %39 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %41 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %44 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %48 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %52 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %56 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %59 = call i32 @BIT(i32 14)
  %60 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %57, i32 %58, i32 %59, i32 1)
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %62 = load i32, i32* @RCCK0_FACOUNTERLOWER, align 4
  %63 = load i32, i32* @MASKBYTE0, align 4
  %64 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %61, i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %67 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = load i32, i32* @RCCK0_FACOUNTERUPPER, align 4
  %70 = load i32, i32* @MASKBYTE3, align 4
  %71 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %68, i32 %69, i32 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, 255
  %74 = shl i32 %73, 8
  %75 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %76 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %80 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %83 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %87 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %91 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %95 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %99 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %101 = load i32, i32* @ROFDM1_LSTF, align 4
  %102 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %100, i32 %101, i32 134217728, i32 1)
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %104 = load i32, i32* @ROFDM1_LSTF, align 4
  %105 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %103, i32 %104, i32 134217728, i32 0)
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %107 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %108 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %106, i32 %107, i32 49152, i32 0)
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %110 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %111 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %109, i32 %110, i32 49152, i32 2)
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %113 = load i32, i32* @COMP_DIG, align 4
  %114 = load i32, i32* @DBG_TRACE, align 4
  %115 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %116 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %119 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %122 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %125 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %120, i32 %123, i32 %126)
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %129 = load i32, i32* @COMP_DIG, align 4
  %130 = load i32, i32* @DBG_TRACE, align 4
  %131 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %132 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %135 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %138 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %128, i32 %129, i32 %130, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %136, i32 %139)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
