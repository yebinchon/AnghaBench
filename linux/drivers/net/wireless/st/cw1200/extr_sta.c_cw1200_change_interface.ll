; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_change_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_change_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"change_interface new: %d (%d), old: %d (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_change_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %14, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24, %4
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %33 = call i32 @cw1200_remove_interface(%struct.ieee80211_hw* %31, %struct.ieee80211_vif* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %42 = call i32 @cw1200_add_interface(%struct.ieee80211_hw* %40, %struct.ieee80211_vif* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %30, %24
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cw1200_remove_interface(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @cw1200_add_interface(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
