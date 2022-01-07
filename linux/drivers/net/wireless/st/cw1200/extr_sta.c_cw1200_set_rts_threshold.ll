; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_rts_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_rts_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i64, i64 }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"[STA] Setting RTS threshold: %d\0A\00", align 1
@WSM_MIB_ID_DOT11_RTS_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_set_rts_threshold(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cw1200_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.cw1200_common*, %struct.cw1200_common** %10, align 8
  store %struct.cw1200_common* %11, %struct.cw1200_common** %8, align 8
  %12 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %13 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @__cpu_to_le32(i64 %22)
  store i64 %23, i64* %7, align 8
  br label %25

24:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %27 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %47

32:                                               ; preds = %25
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %34 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %38 = load i32, i32* @WSM_MIB_ID_DOT11_RTS_THRESHOLD, align 4
  %39 = call i32 @wsm_write_mib(%struct.cw1200_common* %37, i32 %38, i64* %7, i32 8)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %45 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %32
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @__cpu_to_le32(i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @wsm_write_mib(%struct.cw1200_common*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
