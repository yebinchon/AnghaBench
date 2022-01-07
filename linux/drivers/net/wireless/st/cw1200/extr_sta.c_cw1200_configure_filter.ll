; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@FIF_PROBE_REQ = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cw1200_common*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  store %struct.cw1200_common* %13, %struct.cw1200_common** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FIF_OTHER_BSS, align 4
  %17 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FIF_PROBE_REQ, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @FIF_OTHER_BSS, align 4
  %27 = load i32, i32* @FIF_FCSFAIL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FIF_PROBE_REQ, align 4
  %32 = or i32 %30, %31
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %37 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @down(i32* %38)
  %40 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %41 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %40, i32 0, i32 3
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %44 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FIF_OTHER_BSS, align 4
  %49 = load i32, i32* @FIF_PROBE_REQ, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %56 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FIF_FCSFAIL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %66 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %71 = load i32, i32* @FIF_PROBE_REQ, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %78 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %80 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %87 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %89 = call i32 @wsm_lock_tx(%struct.cw1200_common* %88)
  %90 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @cw1200_update_listening(%struct.cw1200_common* %90, i32 %91)
  %93 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %94 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %93)
  br label %95

95:                                               ; preds = %84, %4
  %96 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %97 = call i32 @cw1200_update_filtering(%struct.cw1200_common* %96)
  %98 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %99 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %98, i32 0, i32 3
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %102 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @up(i32* %103)
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wsm_lock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_update_listening(%struct.cw1200_common*, i32) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_update_filtering(%struct.cw1200_common*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
