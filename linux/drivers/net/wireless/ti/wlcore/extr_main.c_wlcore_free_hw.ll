; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_free_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_free_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32*, i32, i32*, i32*, i32*, i32*, i32, i32*, i32, i64, i32, i64, i32*, i32*, i32 }

@WL12XX_FW_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_free_hw(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %3 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %4 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %3, i32 0, i32 16
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  store i32 -1, i32* %7, align 8
  %8 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %9 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %8, i32 0, i32 16
  %10 = call i32 @mutex_unlock(i32* %9)
  %11 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %12 = call i32 @wlcore_sysfs_free(%struct.wl1271* %11)
  %13 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 15
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kfree(i32* %15)
  %17 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 14
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @kfree(i32* %19)
  %21 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 13
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @free_page(i64 %23)
  %25 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_kfree_skb(i32 %27)
  %29 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 11
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @get_order(i32 %34)
  %36 = call i32 @free_pages(i64 %31, i32 %35)
  %37 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %38 = call i32 @wl1271_debugfs_exit(%struct.wl1271* %37)
  %39 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 9
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @vfree(i32* %41)
  %43 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 9
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @WL12XX_FW_TYPE_NONE, align 4
  %46 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %49 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @kfree(i32* %50)
  %52 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 7
  store i32* null, i32** %53, align 8
  %54 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %59 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @kfree(i32* %60)
  %62 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %67 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @destroy_workqueue(i32 %68)
  %70 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %71 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @kfree(i32* %72)
  %74 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %75 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ieee80211_free_hw(i32 %76)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wlcore_sysfs_free(%struct.wl1271*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @wl1271_debugfs_exit(%struct.wl1271*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
