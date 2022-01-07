; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c_rtl92s_set_fw_pwrmode_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c_rtl92s_set_fw_pwrmode_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_mac = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rtl_ps_ctl = type { i32 }
%struct.h2c_set_pwrmode_parm = type { i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@FW_PS_MIN_MODE = common dso_local global i64 0, align 8
@FW_PS_MAX_MODE = common dso_local global i64 0, align 8
@FW_H2C_SETPWRMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92s_set_fw_pwrmode_cmd(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rtl_ps_ctl*, align 8
  %7 = alloca %struct.h2c_set_pwrmode_parm, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call i32 @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_mac* @rtl_mac(i32 %10)
  store %struct.rtl_mac* %11, %struct.rtl_mac** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call i32 @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_ps_ctl* @rtl_psc(i32 %13)
  store %struct.rtl_ps_ctl* %14, %struct.rtl_ps_ctl** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 11
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 9
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 8
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = bitcast %struct.h2c_set_pwrmode_parm* %7 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 8
  %25 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %26 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SET_BITS_TO_LE_2BYTE(i64* %24, i32 0, i32 16, i32 %30)
  %32 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %34 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 2
  store i32 10, i32* %38, align 4
  %39 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FW_PS_MIN_MODE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %2
  %44 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %45 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  br label %70

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FW_PS_MAX_MODE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %57 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %63 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %61, %67
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %55, %50
  br label %70

70:                                               ; preds = %69, %43
  %71 = load i32, i32* %8, align 4
  %72 = icmp sge i32 %71, 500
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 3
  store i32 1, i32* %74, align 8
  br label %104

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = icmp sge i32 %76, 300
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 500
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 3
  store i32 2, i32* %82, align 8
  br label %103

83:                                               ; preds = %78, %75
  %84 = load i32, i32* %8, align 4
  %85 = icmp sge i32 %84, 200
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 300
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 3
  store i32 3, i32* %90, align 8
  br label %102

91:                                               ; preds = %86, %83
  %92 = load i32, i32* %8, align 4
  %93 = icmp sge i32 %92, 20
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 200
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 3
  store i32 5, i32* %98, align 8
  br label %101

99:                                               ; preds = %94, %91
  %100 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, %struct.h2c_set_pwrmode_parm* %7, i32 0, i32 3
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %99, %97
  br label %102

102:                                              ; preds = %101, %89
  br label %103

103:                                              ; preds = %102, %81
  br label %104

104:                                              ; preds = %103, %73
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %106 = load i32, i32* @FW_H2C_SETPWRMODE, align 4
  %107 = bitcast %struct.h2c_set_pwrmode_parm* %7 to i64*
  %108 = call i32 @_rtl92s_firmware_set_h2c_cmd(%struct.ieee80211_hw* %105, i32 %106, i64* %107)
  ret void
}

declare dso_local %struct.rtl_mac* @rtl_mac(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(i32) #1

declare dso_local i32 @SET_BITS_TO_LE_2BYTE(i64*, i32, i32, i32) #1

declare dso_local i32 @_rtl92s_firmware_set_h2c_cmd(%struct.ieee80211_hw*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
