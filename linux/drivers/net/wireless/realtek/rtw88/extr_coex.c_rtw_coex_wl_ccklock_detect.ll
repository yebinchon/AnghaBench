; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_wl_ccklock_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_wl_ccklock_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_wl_ccklock_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_wl_ccklock_detect(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 0
  store %struct.rtw_coex* %6, %struct.rtw_coex** %3, align 8
  %7 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %7, i32 0, i32 0
  store %struct.rtw_coex_stat* %8, %struct.rtw_coex_stat** %4, align 8
  %9 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %10 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %12 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %14 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %13, i32 0, i32 2
  store i32 0, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
