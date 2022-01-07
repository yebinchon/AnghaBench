; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl8192ce_bt_var_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl8192ce_bt_var_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i64 }

@BT_OTHER_ACTION = common dso_local global i32 0, align 4
@BT_SCO = common dso_local global i32 0, align 4
@BT_BUSY = common dso_local global i32 0, align 4
@BT_OTHERBUSY = common dso_local global i32 0, align 4
@BT_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8192ce_bt_var_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192ce_bt_var_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %4)
  store %struct.rtl_priv* %5, %struct.rtl_priv** %3, align 8
  %6 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 15
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 8
  store i64 %9, i64* %12, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 13
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 14
  store i32 %16, i32* %19, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 12
  store i32 %23, i32* %26, align 4
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  br label %48

40:                                               ; preds = %1
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %40, %32
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 10
  store i32 %52, i32* %55, align 4
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %123

61:                                               ; preds = %48
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %63 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* @BT_OTHER_ACTION, align 4
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %70 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 7
  store i32 %68, i32* %71, align 8
  br label %113

72:                                               ; preds = %61
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* @BT_SCO, align 4
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 7
  store i32 %79, i32* %82, align 8
  br label %112

83:                                               ; preds = %72
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %85 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i32, i32* @BT_BUSY, align 4
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %92 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 7
  store i32 %90, i32* %93, align 8
  br label %111

94:                                               ; preds = %83
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %96 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 5
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i32, i32* @BT_OTHERBUSY, align 4
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 7
  store i32 %101, i32* %104, align 8
  br label %110

105:                                              ; preds = %94
  %106 = load i32, i32* @BT_IDLE, align 4
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %108 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 7
  store i32 %106, i32* %109, align 8
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %89
  br label %112

112:                                              ; preds = %111, %78
  br label %113

113:                                              ; preds = %112, %67
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %115 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 6
  store i64 0, i64* %116, align 8
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 5
  store i64 0, i64* %119, align 8
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  store i32 255, i32* %122, align 8
  br label %123

123:                                              ; preds = %113, %48
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
