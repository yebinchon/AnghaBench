; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_rf_saving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_rf_saving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32, i32, i32, i32, i32, %struct.ps_t }
%struct.ps_t = type { i32, i64, i64 }

@RFPGA0_XCD_RFINTERFACESW = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@ROFDM0_AGCPARAMETER1 = common dso_local global i32 0, align 4
@RFPGA0_XCD_SWITCHCONTROL = common dso_local global i32 0, align 4
@RF_NORMAL = common dso_local global i64 0, align 8
@RF_SAVE = common dso_local global i64 0, align 8
@RF_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92c_dm_rf_saving(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.ps_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 5
  store %struct.ps_t* %10, %struct.ps_t** %6, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %50, label %15

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = load i32, i32* @RFPGA0_XCD_RFINTERFACESW, align 4
  %18 = load i32, i32* @MASKDWORD, align 4
  %19 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %16, i32 %17, i32 %18)
  %20 = and i32 %19, 1884160
  %21 = ashr i32 %20, 14
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = load i32, i32* @ROFDM0_AGCPARAMETER1, align 4
  %26 = load i32, i32* @MASKDWORD, align 4
  %27 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %24, i32 %25, i32 %26)
  %28 = call i32 @BIT(i32 3)
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 3
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = load i32, i32* @RFPGA0_XCD_SWITCHCONTROL, align 4
  %35 = load i32, i32* @MASKDWORD, align 4
  %36 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %33, i32 %34, i32 %35)
  %37 = and i32 %36, -16777216
  %38 = lshr i32 %37, 24
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %42 = load i32, i32* @MASKDWORD, align 4
  %43 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %41, i32 2676, i32 %42)
  %44 = and i32 %43, 61440
  %45 = ashr i32 %44, 12
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %47 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %15, %2
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %98, label %53

53:                                               ; preds = %50
  %54 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %55 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %53
  %59 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %60 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RF_NORMAL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %66 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %67, 30
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i64, i64* @RF_SAVE, align 8
  %71 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %72 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  br label %77

73:                                               ; preds = %64
  %74 = load i64, i64* @RF_NORMAL, align 8
  %75 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %76 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  br label %92

78:                                               ; preds = %58
  %79 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %80 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sle i32 %81, 25
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i64, i64* @RF_NORMAL, align 8
  %85 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %86 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  br label %91

87:                                               ; preds = %78
  %88 = load i64, i64* @RF_SAVE, align 8
  %89 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %90 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %77
  br label %97

93:                                               ; preds = %53
  %94 = load i64, i64* @RF_MAX, align 8
  %95 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %96 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %92
  br label %102

98:                                               ; preds = %50
  %99 = load i64, i64* @RF_NORMAL, align 8
  %100 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %101 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %97
  %103 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %104 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %107 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %172

110:                                              ; preds = %102
  %111 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %112 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @RF_SAVE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %110
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %118 = load i32, i32* @RFPGA0_XCD_RFINTERFACESW, align 4
  %119 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %117, i32 %118, i32 1835008, i32 2)
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %121 = load i32, i32* @ROFDM0_AGCPARAMETER1, align 4
  %122 = call i32 @BIT(i32 3)
  %123 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %120, i32 %121, i32 %122, i32 0)
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %125 = load i32, i32* @RFPGA0_XCD_SWITCHCONTROL, align 4
  %126 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %124, i32 %125, i32 -16777216, i32 99)
  %127 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %128 = load i32, i32* @RFPGA0_XCD_RFINTERFACESW, align 4
  %129 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %127, i32 %128, i32 49152, i32 2)
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %131 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %130, i32 2676, i32 61440, i32 3)
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %133 = call i32 @BIT(i32 28)
  %134 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %132, i32 2072, i32 %133, i32 0)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %136 = call i32 @BIT(i32 28)
  %137 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %135, i32 2072, i32 %136, i32 1)
  br label %166

138:                                              ; preds = %110
  %139 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %140 = load i32, i32* @RFPGA0_XCD_RFINTERFACESW, align 4
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %142 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %139, i32 %140, i32 1884160, i32 %143)
  %145 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %146 = load i32, i32* @ROFDM0_AGCPARAMETER1, align 4
  %147 = call i32 @BIT(i32 3)
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %149 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %145, i32 %146, i32 %147, i32 %150)
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %153 = load i32, i32* @RFPGA0_XCD_SWITCHCONTROL, align 4
  %154 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %155 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %152, i32 %153, i32 -16777216, i32 %156)
  %158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %160 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %158, i32 2676, i32 61440, i32 %161)
  %163 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %164 = call i32 @BIT(i32 28)
  %165 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %163, i32 2072, i32 %164, i32 0)
  br label %166

166:                                              ; preds = %138, %116
  %167 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %168 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %171 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %166, %102
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
