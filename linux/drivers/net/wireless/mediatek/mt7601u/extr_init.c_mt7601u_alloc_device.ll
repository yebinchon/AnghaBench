; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_alloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211_hw*, %struct.device* }
%struct.ieee80211_hw = type { %struct.mt7601u_dev* }
%struct.device = type { i32 }

@mt7601u_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mt7601u\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mt7601u_dev* @mt7601u_alloc_device(%struct.device* %0) #0 {
  %2 = alloca %struct.mt7601u_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.mt7601u_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 64, i32* @mt7601u_ops)
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %8 = icmp ne %struct.ieee80211_hw* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mt7601u_dev* null, %struct.mt7601u_dev** %2, align 8
  br label %66

10:                                               ; preds = %1
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %12, align 8
  store %struct.mt7601u_dev* %13, %struct.mt7601u_dev** %5, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %16 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %15, i32 0, i32 13
  store %struct.device* %14, %struct.device** %16, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %19 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %18, i32 0, i32 12
  store %struct.ieee80211_hw* %17, %struct.ieee80211_hw** %19, align 8
  %20 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %21 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %20, i32 0, i32 11
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %24 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %23, i32 0, i32 10
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %27 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %26, i32 0, i32 9
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %30 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %29, i32 0, i32 8
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %32, i32 0, i32 7
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %36 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %35, i32 0, i32 6
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %39 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %38, i32 0, i32 5
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %42 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %41, i32 0, i32 4
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %45 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %44, i32 0, i32 3
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %48 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %47, i32 0, i32 2
  %49 = call i32 @atomic_set(i32* %48, i32 1)
  %50 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %51 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %50, i32 0, i32 1
  %52 = call i32 @skb_queue_head_init(i32* %51)
  %53 = load i32, i32* @WQ_UNBOUND, align 4
  %54 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %53, i32 0)
  %55 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %56 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %58 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %10
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %63 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %62)
  store %struct.mt7601u_dev* null, %struct.mt7601u_dev** %2, align 8
  br label %66

64:                                               ; preds = %10
  %65 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  store %struct.mt7601u_dev* %65, %struct.mt7601u_dev** %2, align 8
  br label %66

66:                                               ; preds = %64, %61, %9
  %67 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  ret %struct.mt7601u_dev* %67
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
