; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_check_assoc_AP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_check_assoc_AP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_80211_var_ie = type { i32, i32*, i32 }

@ARTHEROS_OUI1 = common dso_local global i32 0, align 4
@ARTHEROS_OUI2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"link to Artheros AP\0A\00", align 1
@HT_IOT_PEER_ATHEROS = common dso_local global i8 0, align 1
@BROADCOM_OUI1 = common dso_local global i32 0, align 4
@BROADCOM_OUI2 = common dso_local global i32 0, align 4
@BROADCOM_OUI3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"link to Broadcom AP\0A\00", align 1
@HT_IOT_PEER_BROADCOM = common dso_local global i8 0, align 1
@MARVELL_OUI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"link to Marvell AP\0A\00", align 1
@HT_IOT_PEER_MARVELL = common dso_local global i8 0, align 1
@RALINK_OUI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"link to Ralink AP\0A\00", align 1
@HT_IOT_PEER_RALINK = common dso_local global i8 0, align 1
@CISCO_OUI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"link to Cisco AP\0A\00", align 1
@HT_IOT_PEER_CISCO = common dso_local global i8 0, align 1
@REALTEK_OUI = common dso_local global i32 0, align 4
@HT_IOT_PEER_REALTEK = common dso_local global i8 0, align 1
@RT_HT_CAP_USE_92SE = common dso_local global i32 0, align 4
@HT_IOT_PEER_REALTEK_92SE = common dso_local global i8 0, align 1
@RT_HT_CAP_USE_SOFTAP = common dso_local global i32 0, align 4
@HT_IOT_PEER_REALTEK_SOFTAP = common dso_local global i8 0, align 1
@RT_HT_CAP_USE_JAGUAR_BCUT = common dso_local global i32 0, align 4
@HT_IOT_PEER_REALTEK_JAGUAR_BCUTAP = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"link to Realtek JAGUAR_BCUTAP\0A\00", align 1
@RT_HT_CAP_USE_JAGUAR_CCUT = common dso_local global i32 0, align 4
@HT_IOT_PEER_REALTEK_JAGUAR_CCUTAP = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"link to Realtek JAGUAR_CCUTAP\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"link to Realtek AP\0A\00", align 1
@AIRGOCAP_OUI = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"link to Airgo Cap\0A\00", align 1
@HT_IOT_PEER_AIRGO = common dso_local global i8 0, align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"link to new AP\0A\00", align 1
@HT_IOT_PEER_UNKNOWN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @check_assoc_AP(i32* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ndis_80211_var_ie*, align 8
  %8 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 4, i32* %6, align 4
  br label %9

9:                                                ; preds = %184, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %191

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to %struct.ndis_80211_var_ie*
  store %struct.ndis_80211_var_ie* %18, %struct.ndis_80211_var_ie** %7, align 8
  %19 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %20 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %183 [
    i32 128, label %22
  ]

22:                                               ; preds = %13
  %23 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %24 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @ARTHEROS_OUI1, align 4
  %27 = call i32 @memcmp(i32* %25, i32 %26, i32 3)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %31 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @ARTHEROS_OUI2, align 4
  %34 = call i32 @memcmp(i32* %32, i32 %33, i32 3)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29, %22
  %37 = call i32 @DBG_871X(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load i8, i8* @HT_IOT_PEER_ATHEROS, align 1
  store i8 %38, i8* %3, align 1
  br label %194

39:                                               ; preds = %29
  %40 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %41 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @BROADCOM_OUI1, align 4
  %44 = call i32 @memcmp(i32* %42, i32 %43, i32 3)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %48 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @BROADCOM_OUI2, align 4
  %51 = call i32 @memcmp(i32* %49, i32 %50, i32 3)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %55 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @BROADCOM_OUI3, align 4
  %58 = call i32 @memcmp(i32* %56, i32 %57, i32 3)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53, %46, %39
  %61 = call i32 @DBG_871X(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8, i8* @HT_IOT_PEER_BROADCOM, align 1
  store i8 %62, i8* %3, align 1
  br label %194

63:                                               ; preds = %53
  %64 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %65 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @MARVELL_OUI, align 4
  %68 = call i32 @memcmp(i32* %66, i32 %67, i32 3)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = call i32 @DBG_871X(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i8, i8* @HT_IOT_PEER_MARVELL, align 1
  store i8 %72, i8* %3, align 1
  br label %194

73:                                               ; preds = %63
  %74 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %75 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @RALINK_OUI, align 4
  %78 = call i32 @memcmp(i32* %76, i32 %77, i32 3)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = call i32 @DBG_871X(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i8, i8* @HT_IOT_PEER_RALINK, align 1
  store i8 %82, i8* %3, align 1
  br label %194

83:                                               ; preds = %73
  %84 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %85 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @CISCO_OUI, align 4
  %88 = call i32 @memcmp(i32* %86, i32 %87, i32 3)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = call i32 @DBG_871X(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i8, i8* @HT_IOT_PEER_CISCO, align 1
  store i8 %92, i8* %3, align 1
  br label %194

93:                                               ; preds = %83
  %94 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %95 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @REALTEK_OUI, align 4
  %98 = call i32 @memcmp(i32* %96, i32 %97, i32 3)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %172, label %100

100:                                              ; preds = %93
  %101 = load i8, i8* @HT_IOT_PEER_REALTEK, align 1
  store i8 %101, i8* %8, align 1
  %102 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %103 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp sge i32 %104, 5
  br i1 %105, label %106, label %169

106:                                              ; preds = %100
  %107 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %108 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %125

113:                                              ; preds = %106
  %114 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %115 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 5
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RT_HT_CAP_USE_92SE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i8, i8* @HT_IOT_PEER_REALTEK_92SE, align 1
  store i8 %123, i8* %8, align 1
  br label %124

124:                                              ; preds = %122, %113
  br label %125

125:                                              ; preds = %124, %106
  %126 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %127 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RT_HT_CAP_USE_SOFTAP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i8, i8* @HT_IOT_PEER_REALTEK_SOFTAP, align 1
  store i8 %135, i8* %8, align 1
  br label %136

136:                                              ; preds = %134, %125
  %137 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %138 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %168

143:                                              ; preds = %136
  %144 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %145 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 6
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @RT_HT_CAP_USE_JAGUAR_BCUT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load i8, i8* @HT_IOT_PEER_REALTEK_JAGUAR_BCUTAP, align 1
  store i8 %153, i8* %8, align 1
  %154 = call i32 @DBG_871X(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %143
  %156 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %157 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 6
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @RT_HT_CAP_USE_JAGUAR_CCUT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load i8, i8* @HT_IOT_PEER_REALTEK_JAGUAR_CCUTAP, align 1
  store i8 %165, i8* %8, align 1
  %166 = call i32 @DBG_871X(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %155
  br label %168

168:                                              ; preds = %167, %136
  br label %169

169:                                              ; preds = %168, %100
  %170 = call i32 @DBG_871X(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %171 = load i8, i8* %8, align 1
  store i8 %171, i8* %3, align 1
  br label %194

172:                                              ; preds = %93
  %173 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %174 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* @AIRGOCAP_OUI, align 4
  %177 = call i32 @memcmp(i32* %175, i32 %176, i32 3)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %172
  %180 = call i32 @DBG_871X(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %181 = load i8, i8* @HT_IOT_PEER_AIRGO, align 1
  store i8 %181, i8* %3, align 1
  br label %194

182:                                              ; preds = %172
  br label %184

183:                                              ; preds = %13
  br label %184

184:                                              ; preds = %183, %182
  %185 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %7, align 8
  %186 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 2
  %189 = load i32, i32* %6, align 4
  %190 = add i32 %189, %188
  store i32 %190, i32* %6, align 4
  br label %9

191:                                              ; preds = %9
  %192 = call i32 @DBG_871X(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %193 = load i8, i8* @HT_IOT_PEER_UNKNOWN, align 1
  store i8 %193, i8* %3, align 1
  br label %194

194:                                              ; preds = %191, %179, %169, %90, %80, %70, %60, %36
  %195 = load i8, i8* %3, align 1
  ret i8 %195
}

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @DBG_871X(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
