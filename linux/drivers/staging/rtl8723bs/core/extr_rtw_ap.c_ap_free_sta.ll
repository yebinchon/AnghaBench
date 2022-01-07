; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_ap_free_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_ap_free_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sta_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@_FW_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_free_sta(%struct.adapter* %0, %struct.sta_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %12 = icmp ne %struct.sta_info* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %10, align 4
  store i32 %14, i32* %5, align 4
  br label %76

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load %struct.adapter*, %struct.adapter** %6, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @send_delba(%struct.adapter* %19, i32 0, i32 %22)
  %24 = load %struct.adapter*, %struct.adapter** %6, align 8
  %25 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @send_delba(%struct.adapter* %24, i32 1, i32 %27)
  %29 = load %struct.adapter*, %struct.adapter** %6, align 8
  %30 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @issue_deauth(%struct.adapter* %29, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %18, %15
  %36 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %37 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.adapter*, %struct.adapter** %6, align 8
  %43 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %44 = call i32 @rtw_clearstakey_cmd(%struct.adapter* %42, %struct.sta_info* %43, i32 1)
  %45 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 1
  %47 = call i32 @spin_lock_bh(i32* %46)
  %48 = load i32, i32* @_FW_LINKED, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load %struct.adapter*, %struct.adapter** %6, align 8
  %58 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %59 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @rtw_cfg80211_indicate_sta_disassoc(%struct.adapter* %57, i32 %60, i32 %61)
  %63 = load %struct.adapter*, %struct.adapter** %6, align 8
  %64 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @report_del_sta_event(%struct.adapter* %63, i32 %66, i32 %67)
  %69 = load %struct.adapter*, %struct.adapter** %6, align 8
  %70 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %71 = call i32 @bss_cap_update_on_sta_leave(%struct.adapter* %69, %struct.sta_info* %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.adapter*, %struct.adapter** %6, align 8
  %73 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %74 = call i32 @rtw_free_stainfo(%struct.adapter* %72, %struct.sta_info* %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %35, %13
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @send_delba(%struct.adapter*, i32, i32) #1

declare dso_local i32 @issue_deauth(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_clearstakey_cmd(%struct.adapter*, %struct.sta_info*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rtw_cfg80211_indicate_sta_disassoc(%struct.adapter*, i32, i32) #1

declare dso_local i32 @report_del_sta_event(%struct.adapter*, i32, i32) #1

declare dso_local i32 @bss_cap_update_on_sta_leave(%struct.adapter*, %struct.sta_info*) #1

declare dso_local i32 @rtw_free_stainfo(%struct.adapter*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
