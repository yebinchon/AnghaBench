; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_enable_listening.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_enable_listening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wsm_start = type { i8*, i32, i32, i32, i32, i32, i32 }

@WSM_PHY_BAND_2_4G = common dso_local global i8* null, align 8
@WSM_START_MODE_P2P_DEV = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@WSM_PHY_BAND_5G = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_enable_listening(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  %3 = alloca %struct.wsm_start, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %4 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %3, i32 0, i32 0
  %5 = load i8*, i8** @WSM_PHY_BAND_2_4G, align 8
  store i8* %5, i8** %4, align 8
  %6 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %3, i32 0, i32 1
  store i32 100, i32* %6, align 8
  %7 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %3, i32 0, i32 2
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %3, i32 0, i32 3
  store i32 15, i32* %8, align 8
  %9 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %3, i32 0, i32 4
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %3, i32 0, i32 5
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %3, i32 0, i32 6
  %12 = load i32, i32* @WSM_START_MODE_P2P_DEV, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %19 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i8*, i8** @WSM_PHY_BAND_5G, align 8
  br label %29

27:                                               ; preds = %17
  %28 = load i8*, i8** @WSM_PHY_BAND_2_4G, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i8* [ %26, %25 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %3, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %33 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %3, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  br label %42

38:                                               ; preds = %1
  %39 = load i8*, i8** @WSM_PHY_BAND_2_4G, align 8
  %40 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %3, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %3, i32 0, i32 4
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %29
  %43 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %44 = call i32 @wsm_start(%struct.cw1200_common* %43, %struct.wsm_start* %3)
  ret i32 %44
}

declare dso_local i32 @wsm_start(%struct.cw1200_common*, %struct.wsm_start*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
