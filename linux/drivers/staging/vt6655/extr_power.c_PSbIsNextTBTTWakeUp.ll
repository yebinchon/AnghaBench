; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_power.c_PSbIsNextTBTTWakeUp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_power.c_PSbIsNextTBTTWakeUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32 }

@MAC_REG_PSCTL = common dso_local global i32 0, align 4
@PSCTL_LNBCN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PSbIsNextTBTTWakeUp(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %6 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %7 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %6, i32 0, i32 2
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  store %struct.ieee80211_conf* %10, %struct.ieee80211_conf** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %43

15:                                               ; preds = %1
  %16 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %25 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %28 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %32 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %37 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MAC_REG_PSCTL, align 4
  %40 = load i32, i32* @PSCTL_LNBCN, align 4
  %41 = call i32 @MACvRegBitsOn(i32 %38, i32 %39, i32 %40)
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %35, %26
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @MACvRegBitsOn(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
