; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c___cw1200_sta_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c___cw1200_sta_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, i32)* @__cw1200_sta_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cw1200_sta_notify(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cw1200_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.cw1200_common*, %struct.cw1200_common** %13, align 8
  store %struct.cw1200_common* %14, %struct.cw1200_common** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @BIT(i32 %18)
  store i32 %19, i32* %10, align 4
  br label %32

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 129
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %31

27:                                               ; preds = %20
  %28 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %29 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %26
  br label %32

32:                                               ; preds = %31, %17
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %34 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %105 [
    i32 128, label %39
    i32 129, label %66
  ]

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %39
  %43 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %44 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %49 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %54 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %57 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %56, i32 0, i32 6
  %58 = call i32 @queue_work(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %52, %47, %42
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %62 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %39
  br label %105

66:                                               ; preds = %32
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %73 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %10, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %79 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %83 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %69
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %91 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %96 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %99 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %98, i32 0, i32 3
  %100 = call i32 @queue_work(i32 %97, i32* %99)
  br label %101

101:                                              ; preds = %94, %89, %86, %69
  %102 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %103 = call i32 @cw1200_bh_wakeup(%struct.cw1200_common* %102)
  br label %104

104:                                              ; preds = %101, %66
  br label %105

105:                                              ; preds = %32, %104, %65
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @cw1200_bh_wakeup(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
