; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wake_queue_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wake_queue_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32*, i32, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__, i32, i32 (%struct.sk_buff*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.rtl_80211_hdr_3addr = type { i32 }

@IEEE_SOFTMAC_SINGLE_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_wake_queue(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtl_80211_hdr_3addr*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %6 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %6, i32 0, i32 2
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %117

15:                                               ; preds = %1
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE_SOFTMAC_SINGLE_QUEUE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %68, %24
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %32 = call %struct.sk_buff* @dequeue_mgmt(%struct.ieee80211_device* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %4, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i1 [ false, %25 ], [ %33, %30 ]
  br i1 %35, label %36, label %80

36:                                               ; preds = %34
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.rtl_80211_hdr_3addr*
  store %struct.rtl_80211_hdr_3addr* %40, %struct.rtl_80211_hdr_3addr** %5, align 8
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 4
  %47 = call i32 @cpu_to_le16(i32 %46)
  %48 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %5, align 8
  %49 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 4095
  br i1 %55, label %56, label %61

56:                                               ; preds = %36
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %58 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 0, i32* %60, align 4
  br label %68

61:                                               ; preds = %36
  %62 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %63 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %56
  %69 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %70 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %69, i32 0, i32 8
  %71 = load i32 (%struct.sk_buff*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32)** %70, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %74 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %77 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %71(%struct.sk_buff* %72, i32 %75, i32 %78)
  br label %25

80:                                               ; preds = %34
  br label %81

81:                                               ; preds = %80, %15
  %82 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %83 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %94 = call i32 @ieee80211_resume_tx(%struct.ieee80211_device* %93)
  br label %95

95:                                               ; preds = %92, %86, %81
  %96 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %97 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %95
  %101 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %102 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @netif_queue_stopped(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %108 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %113 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @netif_wake_queue(i32 %114)
  br label %116

116:                                              ; preds = %106, %100, %95
  br label %117

117:                                              ; preds = %116, %14
  %118 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %119 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %118, i32 0, i32 2
  %120 = load i64, i64* %3, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @dequeue_mgmt(%struct.ieee80211_device*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_resume_tx(%struct.ieee80211_device*) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
