; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_false_alarm_counter_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_false_alarm_counter_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.false_alarm_statistics }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ROFDM_PHYCOUNTER1 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER2 = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER3 = common dso_local global i32 0, align 4
@ROFDM0_FRAMESYNC = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92c_dm_false_alarm_counter_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_dm_false_alarm_counter_statistics(%struct.ieee80211_hw* %0) #0 {
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
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %41 = load i32, i32* @ROFDM0_FRAMESYNC, align 4
  %42 = load i32, i32* @MASKDWORD, align 4
  %43 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %40, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 65535
  %46 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %47 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, -65536
  %50 = lshr i32 %49, 16
  %51 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %52 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %54 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %57 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %61 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %65 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %69 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %73 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %77 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %79 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %80 = call i32 @BIT(i32 14)
  %81 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %78, i32 %79, i32 %80, i32 1)
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %83 = load i32, i32* @RCCK0_FACOUNTERLOWER, align 4
  %84 = load i32, i32* @MASKBYTE0, align 4
  %85 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %82, i32 %83, i32 %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %88 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %90 = load i32, i32* @RCCK0_FACOUNTERUPPER, align 4
  %91 = load i32, i32* @MASKBYTE3, align 4
  %92 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %89, i32 %90, i32 %91)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = and i32 %93, 255
  %95 = shl i32 %94, 8
  %96 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %97 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %101 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %104 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %108 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %112 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %110, %113
  %115 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %116 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %114, %117
  %119 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %120 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %122 = load i32, i32* @ROFDM1_LSTF, align 4
  %123 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %121, i32 %122, i32 134217728, i32 1)
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %125 = load i32, i32* @ROFDM1_LSTF, align 4
  %126 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %124, i32 %125, i32 134217728, i32 0)
  %127 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %128 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %129 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %127, i32 %128, i32 49152, i32 0)
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %131 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %132 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %130, i32 %131, i32 49152, i32 2)
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %134 = load i32, i32* @COMP_DIG, align 4
  %135 = load i32, i32* @DBG_TRACE, align 4
  %136 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %137 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %140 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %143 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %146 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %133, i32 %134, i32 %135, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %141, i32 %144, i32 %147)
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %150 = load i32, i32* @COMP_DIG, align 4
  %151 = load i32, i32* @DBG_TRACE, align 4
  %152 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %153 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %156 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %159 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %154, i32 %157, i32 %160)
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
