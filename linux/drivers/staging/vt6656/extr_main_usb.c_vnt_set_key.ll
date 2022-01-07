; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @vnt_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.vnt_private*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  store %struct.vnt_private* %15, %struct.vnt_private** %12, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %44 [
    i32 128, label %17
    i32 129, label %28
  ]

17:                                               ; preds = %5
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %21 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %22 = call i32 @vnt_set_keys(%struct.ieee80211_hw* %18, %struct.ieee80211_sta* %19, %struct.ieee80211_vif* %20, %struct.ieee80211_key_conf* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %46

27:                                               ; preds = %17
  br label %45

28:                                               ; preds = %5
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %33 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %32, i32 0, i32 0
  %34 = call i32 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %38 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %41 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %40, i32 0, i32 0
  %42 = call i32 @clear_bit(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %36, %28
  br label %44

44:                                               ; preds = %5, %43
  br label %45

45:                                               ; preds = %44, %27
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @vnt_set_keys(%struct.ieee80211_hw*, %struct.ieee80211_sta*, %struct.ieee80211_vif*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
