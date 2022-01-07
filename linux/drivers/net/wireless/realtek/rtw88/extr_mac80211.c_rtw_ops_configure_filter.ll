; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@BIT_AM = common dso_local global i32 0, align 4
@BIT_AB = common dso_local global i32 0, align 4
@BIT_ACRC32 = common dso_local global i32 0, align 4
@BIT_AAP = common dso_local global i32 0, align 4
@BIT_CBSSID_BCN = common dso_local global i32 0, align 4
@BIT_CBSSID_DATA = common dso_local global i32 0, align 4
@RTW_DBG_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"config rx filter, changed=0x%08x, new=0x%08x, rcr=0x%08x\0A\00", align 1
@REG_RCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @rtw_ops_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_ops_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtw_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %11, align 8
  store %struct.rtw_dev* %12, %struct.rtw_dev** %9, align 8
  %13 = load i32, i32* @FIF_ALLMULTI, align 4
  %14 = load i32, i32* @FIF_OTHER_BSS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FIF_FCSFAIL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %19 = or i32 %17, %18
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %24 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @FIF_ALLMULTI, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FIF_ALLMULTI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i32, i32* @BIT_AM, align 4
  %38 = load i32, i32* @BIT_AB, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %41 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  br label %55

45:                                               ; preds = %30
  %46 = load i32, i32* @BIT_AM, align 4
  %47 = load i32, i32* @BIT_AB, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %51 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %49
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %45, %36
  br label %56

56:                                               ; preds = %55, %4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @FIF_FCSFAIL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %56
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FIF_FCSFAIL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* @BIT_ACRC32, align 4
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %70 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %82

74:                                               ; preds = %61
  %75 = load i32, i32* @BIT_ACRC32, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %78 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %76
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %74, %67
  br label %83

83:                                               ; preds = %82, %56
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @FIF_OTHER_BSS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %83
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @FIF_OTHER_BSS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load i32, i32* @BIT_AAP, align 4
  %96 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %97 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 4
  br label %109

101:                                              ; preds = %88
  %102 = load i32, i32* @BIT_AAP, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %105 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %103
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %101, %94
  br label %110

110:                                              ; preds = %109, %83
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %110
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load i32, i32* @BIT_CBSSID_BCN, align 4
  %123 = load i32, i32* @BIT_CBSSID_DATA, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %127 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %125
  store i32 %130, i32* %128, align 4
  br label %138

131:                                              ; preds = %115
  %132 = load i32, i32* @BIT_CBSSID_BCN, align 4
  %133 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %134 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %131, %121
  br label %139

139:                                              ; preds = %138, %110
  %140 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %141 = load i32, i32* @RTW_DBG_RX, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %146 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @rtw_dbg(%struct.rtw_dev* %140, i32 %141, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %142, i32 %144, i32 %148)
  %150 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %151 = load i32, i32* @REG_RCR, align 4
  %152 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %153 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @rtw_write32(%struct.rtw_dev* %150, i32 %151, i32 %155)
  %157 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %158 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %157, i32 0, i32 0
  %159 = call i32 @mutex_unlock(i32* %158)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
