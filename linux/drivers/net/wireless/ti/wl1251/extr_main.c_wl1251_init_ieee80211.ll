; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_init_ieee80211.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_init_ieee80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32** }

@WL1251_TKIP_IV_SPACE = common dso_local global i64 0, align 8
@SIGNAL_DBM = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@wl1251_band_2ghz = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@wl1251_init_ieee80211.nokia_oui = internal constant [3 x i32] [i32 0, i32 31, i32 223], align 4
@.str = private unnamed_addr constant [47 x i8] c"MAC address in eeprom or nvs data is not valid\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Setting random MAC address: %pM\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_init_ieee80211(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %4 = load i64, i64* @WL1251_TKIP_IV_SPACE, align 8
  %5 = add i64 4, %4
  %6 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %7 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i64 %5, i64* %9, align 8
  %10 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %11 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* @SIGNAL_DBM, align 4
  %14 = call i32 @ieee80211_hw_set(%struct.TYPE_4__* %12, i32 %13)
  %15 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %16 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* @SUPPORTS_PS, align 4
  %19 = call i32 @ieee80211_hw_set(%struct.TYPE_4__* %17, i32 %18)
  %20 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = or i32 %21, %23
  %25 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %26 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %24, i32* %30, align 8
  %31 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %32 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %38 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32**, i32*** %42, align 8
  %44 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  store i32* @wl1251_band_2ghz, i32** %45, align 8
  %46 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %47 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 4, i32* %49, align 8
  %50 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %51 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %1
  %55 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %56 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %61 = call i32 @wl1251_fetch_nvs(%struct.wl1251* %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %125

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %54, %1
  %67 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %68 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %73 = call i32 @wl1251_read_eeprom_mac(%struct.wl1251* %72)
  store i32 %73, i32* %3, align 4
  br label %77

74:                                               ; preds = %66
  %75 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %76 = call i32 @wl1251_read_nvs_mac(%struct.wl1251* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %3, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %82 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @is_valid_ether_addr(i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %86, %80, %77
  %90 = load i32, i32* %3, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %89
  %93 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %94 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @memcpy(i64 %95, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @wl1251_init_ieee80211.nokia_oui, i64 0, i64 0), i32 3)
  %97 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %98 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 3
  %101 = call i32 @get_random_bytes(i64 %100, i32 3)
  %102 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %103 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %92
  %107 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %108 = call i32 @wl1251_write_nvs_mac(%struct.wl1251* %107)
  br label %109

109:                                              ; preds = %106, %92
  %110 = call i32 (i8*, ...) @wl1251_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %111 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %112 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i8*, ...) @wl1251_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %113)
  br label %115

115:                                              ; preds = %109, %89
  %116 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %117 = call i32 @wl1251_register_hw(%struct.wl1251* %116)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %125

121:                                              ; preds = %115
  %122 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %123 = call i32 @wl1251_debugfs_init(%struct.wl1251* %122)
  %124 = call i32 @wl1251_notice(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %120, %64
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @ieee80211_hw_set(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wl1251_fetch_nvs(%struct.wl1251*) #1

declare dso_local i32 @wl1251_read_eeprom_mac(%struct.wl1251*) #1

declare dso_local i32 @wl1251_read_nvs_mac(%struct.wl1251*) #1

declare dso_local i32 @is_valid_ether_addr(i64) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @get_random_bytes(i64, i32) #1

declare dso_local i32 @wl1251_write_nvs_mac(%struct.wl1251*) #1

declare dso_local i32 @wl1251_warning(i8*, ...) #1

declare dso_local i32 @wl1251_register_hw(%struct.wl1251*) #1

declare dso_local i32 @wl1251_debugfs_init(%struct.wl1251*) #1

declare dso_local i32 @wl1251_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
