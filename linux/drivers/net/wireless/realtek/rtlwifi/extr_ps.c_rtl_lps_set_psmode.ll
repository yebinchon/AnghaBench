; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_lps_set_psmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_lps_set_psmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.ieee80211_hw*, i32, i64*)*, i64 (...)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.rtl_priv*, i64)* }
%struct.rtl_mac = type { i64, i64 }
%struct.rtl_ps_ctl = type { i64, i32, i32, i32, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i64 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@EACTIVE = common dso_local global i64 0, align 8
@COMP_RF = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"FW LPS leave ps_mode:%x\0A\00", align 1
@FW_PS_ACTIVE_MODE = common dso_local global i32 0, align 4
@HW_VAR_FW_LPS_ACTION = common dso_local global i32 0, align 4
@P2P_PS_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"FW LPS enter ps_mode:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_lps_set_psmode(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca %struct.rtl_ps_ctl*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %15)
  store %struct.rtl_ps_ctl* %16, %struct.rtl_ps_ctl** %7, align 8
  %17 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %18 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %168

23:                                               ; preds = %2
  %24 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %25 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAC80211_LINKED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %168

30:                                               ; preds = %23
  %31 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %32 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @EACTIVE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %168

41:                                               ; preds = %36, %30
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %44 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %46 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %168

49:                                               ; preds = %41
  %50 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %51 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %168

54:                                               ; preds = %49
  %55 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %56 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EACTIVE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %112

60:                                               ; preds = %54
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = load i32, i32* @COMP_RF, align 4
  %63 = load i32, i32* @DBG_DMESG, align 4
  %64 = load i32, i32* @FW_PS_ACTIVE_MODE, align 4
  %65 = call i32 @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 0, i32* %8, align 4
  %66 = load i32, i32* @FW_PS_ACTIVE_MODE, align 4
  %67 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %68 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %70 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %69, i32 0, i32 1
  store i32 0, i32* %70, align 8
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %76, align 8
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %79 = load i32, i32* @HW_VAR_FW_LPS_ACTION, align 4
  %80 = bitcast i32* %8 to i64*
  %81 = call i32 %77(%struct.ieee80211_hw* %78, i32 %79, i64* %80)
  %82 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %83 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %60
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %89 = load i32, i32* @P2P_PS_ENABLE, align 4
  %90 = call i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %60
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %93 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i64 (...)*, i64 (...)** %97, align 8
  %99 = call i64 (...) %98()
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %91
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32 (%struct.rtl_priv*, i64)*, i32 (%struct.rtl_priv*, i64)** %106, align 8
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %109 = load i64, i64* %4, align 8
  %110 = call i32 %107(%struct.rtl_priv* %108, i64 %109)
  br label %111

111:                                              ; preds = %101, %91
  br label %167

112:                                              ; preds = %54
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %114 = call i64 @rtl_get_fwlps_doze(%struct.ieee80211_hw* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %162

116:                                              ; preds = %112
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %118 = load i32, i32* @COMP_RF, align 4
  %119 = load i32, i32* @DBG_DMESG, align 4
  %120 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %121 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %125 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i64 (...)*, i64 (...)** %129, align 8
  %131 = call i64 (...) %130()
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %116
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %135 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32 (%struct.rtl_priv*, i64)*, i32 (%struct.rtl_priv*, i64)** %138, align 8
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %141 = load i64, i64* %4, align 8
  %142 = call i32 %139(%struct.rtl_priv* %140, i64 %141)
  br label %143

143:                                              ; preds = %133, %116
  store i32 1, i32* %8, align 4
  %144 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %145 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %148 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  %149 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %150 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %149, i32 0, i32 1
  store i32 2, i32* %150, align 8
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %152 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %151, i32 0, i32 0
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %156, align 8
  %158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %159 = load i32, i32* @HW_VAR_FW_LPS_ACTION, align 4
  %160 = bitcast i32* %8 to i64*
  %161 = call i32 %157(%struct.ieee80211_hw* %158, i32 %159, i64* %160)
  br label %166

162:                                              ; preds = %112
  %163 = load i64, i64* @EACTIVE, align 8
  %164 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %165 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %162, %143
  br label %167

167:                                              ; preds = %166, %111
  br label %168

168:                                              ; preds = %22, %29, %40, %167, %49, %41
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i64 @rtl_get_fwlps_doze(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
