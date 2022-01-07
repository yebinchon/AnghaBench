; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_check_assoc_AP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_check_assoc_AP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_802_11_var_ie = type { i32, i64, i32 }

@ARTHEROS_OUI1 = common dso_local global i32 0, align 4
@ARTHEROS_OUI2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"link to Artheros AP\0A\00", align 1
@HT_IOT_PEER_ATHEROS = common dso_local global i8 0, align 1
@BROADCOM_OUI1 = common dso_local global i32 0, align 4
@BROADCOM_OUI2 = common dso_local global i32 0, align 4
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
@.str.5 = private unnamed_addr constant [21 x i8] c"link to Realtek 96B\0A\00", align 1
@HT_IOT_PEER_REALTEK = common dso_local global i8 0, align 1
@AIRGOCAP_OUI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"link to Airgo Cap\0A\00", align 1
@HT_IOT_PEER_AIRGO = common dso_local global i8 0, align 1
@EPIGRAM_OUI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"link to Tenda W311R AP\0A\00", align 1
@HT_IOT_PEER_TENDA = common dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Capture EPIGRAM_OUI\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"link to new AP\0A\00", align 1
@HT_IOT_PEER_UNKNOWN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @check_assoc_AP(i32* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ndis_802_11_var_ie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 4, i32* %6, align 4
  br label %10

10:                                               ; preds = %138, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %147

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = bitcast i32* %18 to %struct.ndis_802_11_var_ie*
  store %struct.ndis_802_11_var_ie* %19, %struct.ndis_802_11_var_ie** %7, align 8
  %20 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %21 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %137 [
    i32 128, label %23
  ]

23:                                               ; preds = %14
  %24 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %25 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ARTHEROS_OUI1, align 4
  %28 = call i32 @memcmp(i32 %26, i32 %27, i32 3)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %32 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ARTHEROS_OUI2, align 4
  %35 = call i32 @memcmp(i32 %33, i32 %34, i32 3)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30, %23
  %38 = call i32 @DBG_88E(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %39 = load i8, i8* @HT_IOT_PEER_ATHEROS, align 1
  store i8 %39, i8* %3, align 1
  br label %168

40:                                               ; preds = %30
  %41 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %42 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BROADCOM_OUI1, align 4
  %45 = call i32 @memcmp(i32 %43, i32 %44, i32 3)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %49 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BROADCOM_OUI2, align 4
  %52 = call i32 @memcmp(i32 %50, i32 %51, i32 3)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47, %40
  %55 = call i32 @DBG_88E(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8, i8* @HT_IOT_PEER_BROADCOM, align 1
  store i8 %56, i8* %3, align 1
  br label %168

57:                                               ; preds = %47
  %58 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %59 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MARVELL_OUI, align 4
  %62 = call i32 @memcmp(i32 %60, i32 %61, i32 3)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = call i32 @DBG_88E(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i8, i8* @HT_IOT_PEER_MARVELL, align 1
  store i8 %66, i8* %3, align 1
  br label %168

67:                                               ; preds = %57
  %68 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %69 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @RALINK_OUI, align 4
  %72 = call i32 @memcmp(i32 %70, i32 %71, i32 3)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 1, i32* %9, align 4
  br label %81

78:                                               ; preds = %74
  %79 = call i32 @DBG_88E(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i8, i8* @HT_IOT_PEER_RALINK, align 1
  store i8 %80, i8* %3, align 1
  br label %168

81:                                               ; preds = %77
  br label %133

82:                                               ; preds = %67
  %83 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %84 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CISCO_OUI, align 4
  %87 = call i32 @memcmp(i32 %85, i32 %86, i32 3)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = call i32 @DBG_88E(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i8, i8* @HT_IOT_PEER_CISCO, align 1
  store i8 %91, i8* %3, align 1
  br label %168

92:                                               ; preds = %82
  %93 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %94 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @REALTEK_OUI, align 4
  %97 = call i32 @memcmp(i32 %95, i32 %96, i32 3)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = call i32 @DBG_88E(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i8, i8* @HT_IOT_PEER_REALTEK, align 1
  store i8 %101, i8* %3, align 1
  br label %168

102:                                              ; preds = %92
  %103 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %104 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AIRGOCAP_OUI, align 4
  %107 = call i32 @memcmp(i32 %105, i32 %106, i32 3)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %102
  %110 = call i32 @DBG_88E(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i8, i8* @HT_IOT_PEER_AIRGO, align 1
  store i8 %111, i8* %3, align 1
  br label %168

112:                                              ; preds = %102
  %113 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %114 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @EPIGRAM_OUI, align 4
  %117 = call i32 @memcmp(i32 %115, i32 %116, i32 3)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %112
  store i32 1, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = call i32 @DBG_88E(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %124 = load i8, i8* @HT_IOT_PEER_TENDA, align 1
  store i8 %124, i8* %3, align 1
  br label %168

125:                                              ; preds = %119
  %126 = call i32 @DBG_88E(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125
  br label %129

128:                                              ; preds = %112
  br label %138

129:                                              ; preds = %127
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %81
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %14, %136
  br label %138

138:                                              ; preds = %137, %128
  %139 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %7, align 8
  %140 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 2
  %143 = load i32, i32* %6, align 4
  %144 = zext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %6, align 4
  br label %10

147:                                              ; preds = %10
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = call i32 @DBG_88E(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %155 = load i8, i8* @HT_IOT_PEER_RALINK, align 1
  store i8 %155, i8* %3, align 1
  br label %168

156:                                              ; preds = %150, %147
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = call i32 @DBG_88E(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %164 = load i8, i8* @HT_IOT_PEER_TENDA, align 1
  store i8 %164, i8* %3, align 1
  br label %168

165:                                              ; preds = %159, %156
  %166 = call i32 @DBG_88E(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %167 = load i8, i8* @HT_IOT_PEER_UNKNOWN, align 1
  store i8 %167, i8* %3, align 1
  br label %168

168:                                              ; preds = %165, %162, %153, %122, %109, %99, %89, %78, %64, %54, %37
  %169 = load i8, i8* %3, align 1
  ret i8 %169
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @DBG_88E(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
