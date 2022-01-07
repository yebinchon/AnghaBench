; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_rf_saving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_rf_saving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.ps_t }
%struct.ps_t = type { i32, i64, i64 }

@rtl8723e_dm_rf_saving.initialize = internal global i32 0, align 4
@rtl8723e_dm_rf_saving.reg_874 = internal global i32 0, align 4
@rtl8723e_dm_rf_saving.reg_c70 = internal global i32 0, align 4
@rtl8723e_dm_rf_saving.reg_85c = internal global i32 0, align 4
@rtl8723e_dm_rf_saving.reg_a74 = internal global i32 0, align 4
@RFPGA0_XCD_RFINTERFACESW = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@ROFDM0_AGCPARAMETER1 = common dso_local global i32 0, align 4
@RFPGA0_XCD_SWITCHCONTROL = common dso_local global i32 0, align 4
@RF_NORMAL = common dso_local global i64 0, align 8
@RF_SAVE = common dso_local global i64 0, align 8
@RF_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_dm_rf_saving(%struct.ieee80211_hw* %0, i32 %1) #0 {
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
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 0
  store %struct.ps_t* %10, %struct.ps_t** %6, align 8
  %11 = load i32, i32* @rtl8723e_dm_rf_saving.initialize, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = load i32, i32* @RFPGA0_XCD_RFINTERFACESW, align 4
  %16 = load i32, i32* @MASKDWORD, align 4
  %17 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %14, i32 %15, i32 %16)
  %18 = and i32 %17, 1884160
  %19 = ashr i32 %18, 14
  store i32 %19, i32* @rtl8723e_dm_rf_saving.reg_874, align 4
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = load i32, i32* @ROFDM0_AGCPARAMETER1, align 4
  %22 = load i32, i32* @MASKDWORD, align 4
  %23 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %20, i32 %21, i32 %22)
  %24 = call i32 @BIT(i32 3)
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 3
  store i32 %26, i32* @rtl8723e_dm_rf_saving.reg_c70, align 4
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = load i32, i32* @RFPGA0_XCD_SWITCHCONTROL, align 4
  %29 = load i32, i32* @MASKDWORD, align 4
  %30 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %27, i32 %28, i32 %29)
  %31 = and i32 %30, -16777216
  %32 = lshr i32 %31, 24
  store i32 %32, i32* @rtl8723e_dm_rf_saving.reg_85c, align 4
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = load i32, i32* @MASKDWORD, align 4
  %35 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %33, i32 2676, i32 %34)
  %36 = and i32 %35, 61440
  %37 = ashr i32 %36, 12
  store i32 %37, i32* @rtl8723e_dm_rf_saving.reg_a74, align 4
  store i32 1, i32* @rtl8723e_dm_rf_saving.initialize, align 4
  br label %38

38:                                               ; preds = %13, %2
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %86, label %41

41:                                               ; preds = %38
  %42 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %43 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %41
  %47 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %48 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RF_NORMAL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %54 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 30
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i64, i64* @RF_SAVE, align 8
  %59 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %60 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  br label %65

61:                                               ; preds = %52
  %62 = load i64, i64* @RF_NORMAL, align 8
  %63 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %64 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %80

66:                                               ; preds = %46
  %67 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %68 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sle i32 %69, 25
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i64, i64* @RF_NORMAL, align 8
  %73 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %74 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load i64, i64* @RF_SAVE, align 8
  %77 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %78 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %65
  br label %85

81:                                               ; preds = %41
  %82 = load i64, i64* @RF_MAX, align 8
  %83 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %84 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %80
  br label %90

86:                                               ; preds = %38
  %87 = load i64, i64* @RF_NORMAL, align 8
  %88 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %89 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %85
  %91 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %92 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %95 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %160

98:                                               ; preds = %90
  %99 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %100 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @RF_SAVE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %98
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %106 = load i32, i32* @RFPGA0_XCD_RFINTERFACESW, align 4
  %107 = call i32 @BIT(i32 5)
  %108 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %105, i32 %106, i32 %107, i32 1)
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %110 = load i32, i32* @RFPGA0_XCD_RFINTERFACESW, align 4
  %111 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %109, i32 %110, i32 1835008, i32 2)
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %113 = load i32, i32* @ROFDM0_AGCPARAMETER1, align 4
  %114 = call i32 @BIT(i32 3)
  %115 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %112, i32 %113, i32 %114, i32 0)
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %117 = load i32, i32* @RFPGA0_XCD_SWITCHCONTROL, align 4
  %118 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %116, i32 %117, i32 -16777216, i32 99)
  %119 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %120 = load i32, i32* @RFPGA0_XCD_RFINTERFACESW, align 4
  %121 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %119, i32 %120, i32 49152, i32 2)
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %123 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %122, i32 2676, i32 61440, i32 3)
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %125 = call i32 @BIT(i32 28)
  %126 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %124, i32 2072, i32 %125, i32 0)
  %127 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %128 = call i32 @BIT(i32 28)
  %129 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %127, i32 2072, i32 %128, i32 1)
  br label %154

130:                                              ; preds = %98
  %131 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %132 = load i32, i32* @RFPGA0_XCD_RFINTERFACESW, align 4
  %133 = load i32, i32* @rtl8723e_dm_rf_saving.reg_874, align 4
  %134 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %131, i32 %132, i32 1884160, i32 %133)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %136 = load i32, i32* @ROFDM0_AGCPARAMETER1, align 4
  %137 = call i32 @BIT(i32 3)
  %138 = load i32, i32* @rtl8723e_dm_rf_saving.reg_c70, align 4
  %139 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %135, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %141 = load i32, i32* @RFPGA0_XCD_SWITCHCONTROL, align 4
  %142 = load i32, i32* @rtl8723e_dm_rf_saving.reg_85c, align 4
  %143 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %140, i32 %141, i32 -16777216, i32 %142)
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %145 = load i32, i32* @rtl8723e_dm_rf_saving.reg_a74, align 4
  %146 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %144, i32 2676, i32 61440, i32 %145)
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %148 = call i32 @BIT(i32 28)
  %149 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %147, i32 2072, i32 %148, i32 0)
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %151 = load i32, i32* @RFPGA0_XCD_RFINTERFACESW, align 4
  %152 = call i32 @BIT(i32 5)
  %153 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %150, i32 %151, i32 %152, i32 0)
  br label %154

154:                                              ; preds = %130, %104
  %155 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %156 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ps_t*, %struct.ps_t** %6, align 8
  %159 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %154, %90
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
