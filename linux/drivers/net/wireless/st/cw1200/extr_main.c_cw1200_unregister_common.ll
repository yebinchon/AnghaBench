; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_main.c_cw1200_unregister_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_main.c_cw1200_unregister_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i32, i32, i32*, i32*, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @cw1200_unregister_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw1200_unregister_common(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  store %struct.cw1200_common* %7, %struct.cw1200_common** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %8)
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %11 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %10, i32 0, i32 7
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %14 = call i32 @cw1200_unregister_bh(%struct.cw1200_common* %13)
  %15 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %16 = call i32 @cw1200_debug_release(%struct.cw1200_common* %15)
  %17 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %18 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %17, i32 0, i32 6
  %19 = call i32 @mutex_destroy(i32* %18)
  %20 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %21 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %20, i32 0, i32 5
  %22 = call i32 @wsm_buf_deinit(i32* %21)
  %23 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %24 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @destroy_workqueue(i32* %25)
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %28 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %35 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @release_firmware(i32* %36)
  %38 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %39 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %1
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %46 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @cw1200_queue_deinit(i32* %50)
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %41

55:                                               ; preds = %41
  %56 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %57 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %56, i32 0, i32 1
  %58 = call i32 @cw1200_queue_stats_deinit(i32* %57)
  ret void
}

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cw1200_unregister_bh(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_debug_release(%struct.cw1200_common*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @wsm_buf_deinit(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @release_firmware(i32*) #1

declare dso_local i32 @cw1200_queue_deinit(i32*) #1

declare dso_local i32 @cw1200_queue_stats_deinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
