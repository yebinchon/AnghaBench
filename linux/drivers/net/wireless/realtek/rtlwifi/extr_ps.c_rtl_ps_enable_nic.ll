; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_ps_enable_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_ps_enable_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*, i32, i32*)*, i64 (%struct.ieee80211_hw*)* }
%struct.TYPE_6__ = type { i32 (%struct.ieee80211_hw*)* }
%struct.rtl_ps_ctl = type { i32 }
%struct.rtl_hal = type { i64 }
%struct.rtl_mac = type { i32 }

@INTF_PCI = common dso_local global i64 0, align 8
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Driver is already down!\0A\00", align 1
@HW_VAR_RETRY_LIMIT = common dso_local global i32 0, align 4
@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_ps_enable_nic(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca %struct.rtl_mac*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %11)
  store %struct.rtl_ps_ctl* %12, %struct.rtl_ps_ctl** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %17)
  store %struct.rtl_mac* %18, %struct.rtl_mac** %7, align 8
  %19 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INTF_PCI, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %28, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = call i32 %29(%struct.ieee80211_hw* %30)
  br label %32

32:                                               ; preds = %24, %1
  %33 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %34 = call i64 @is_hal_stop(%struct.rtl_hal* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %38 = load i32, i32* @COMP_ERR, align 4
  %39 = load i32, i32* @DBG_WARNING, align 4
  %40 = call i32 @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %43 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 5
  %48 = load i64 (%struct.ieee80211_hw*)*, i64 (%struct.ieee80211_hw*)** %47, align 8
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %50 = call i64 %48(%struct.ieee80211_hw* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %113

53:                                               ; preds = %41
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %59, align 8
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %62 = load i32, i32* @HW_VAR_RETRY_LIMIT, align 4
  %63 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %64 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %63, i32 0, i32 0
  %65 = call i32 %60(%struct.ieee80211_hw* %61, i32 %62, i32* %64)
  %66 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %67 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %68 = call i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl* %66, i32 %67)
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %70 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %74, align 8
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %77 = call i32 %75(%struct.ieee80211_hw* %76)
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %79 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %83, align 8
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %86 = call i32 %84(%struct.ieee80211_hw* %85)
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %92, align 8
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %96 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = call i32 @cfg80211_get_chandef_type(i32* %97)
  %99 = call i32 %93(%struct.ieee80211_hw* %94, i32 %98)
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %101 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %105, align 8
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %108 = call i32 %106(%struct.ieee80211_hw* %107)
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %110 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = call i32 @rtl_watch_dog_timer_callback(i32* %111)
  store i32 1, i32* %2, align 4
  br label %113

113:                                              ; preds = %53, %52
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @cfg80211_get_chandef_type(i32*) #1

declare dso_local i32 @rtl_watch_dog_timer_callback(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
