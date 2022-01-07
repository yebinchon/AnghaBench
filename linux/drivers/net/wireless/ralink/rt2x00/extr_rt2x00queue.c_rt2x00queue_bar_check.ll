; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_bar_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_bar_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32, i64 }
%struct.ieee80211_bar = type { i32, i32, i32, i32, i32 }
%struct.rt2x00_bar_list_entry = type { i32, i32, i32, i32, i32, i64, %struct.queue_entry* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*)* @rt2x00queue_bar_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00queue_bar_check(%struct.queue_entry* %0) #0 {
  %2 = alloca %struct.queue_entry*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.ieee80211_bar*, align 8
  %5 = alloca %struct.rt2x00_bar_list_entry*, align 8
  store %struct.queue_entry* %0, %struct.queue_entry** %2, align 8
  %6 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %7 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %3, align 8
  %11 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %12 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.ieee80211_bar*
  store %struct.ieee80211_bar* %21, %struct.ieee80211_bar** %4, align 8
  %22 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ieee80211_is_back_req(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %79

32:                                               ; preds = %1
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.rt2x00_bar_list_entry* @kmalloc(i32 40, i32 %33)
  store %struct.rt2x00_bar_list_entry* %34, %struct.rt2x00_bar_list_entry** %5, align 8
  %35 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %36 = icmp ne %struct.rt2x00_bar_list_entry* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %79

38:                                               ; preds = %32
  %39 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %40 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %41 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %40, i32 0, i32 6
  store %struct.queue_entry* %39, %struct.queue_entry** %41, align 8
  %42 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %43 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %45 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32 %46, i32 %49, i32 4)
  %51 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %52 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32 %53, i32 %56, i32 4)
  %58 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %62 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %4, align 8
  %64 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %67 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %69 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %68, i32 0, i32 0
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %72 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %71, i32 0, i32 0
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %74 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %73, i32 0, i32 1
  %75 = call i32 @list_add_tail_rcu(i32* %72, i32* %74)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %77 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_bh(i32* %77)
  br label %79

79:                                               ; preds = %38, %37, %31
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ieee80211_is_back_req(i32) #1

declare dso_local %struct.rt2x00_bar_list_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
