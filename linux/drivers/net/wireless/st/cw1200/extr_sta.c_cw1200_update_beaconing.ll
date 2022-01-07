; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_update_beaconing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_update_beaconing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wsm_reset = type { i32, i32 }
%struct.cw1200_common = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i64 }

@__const.cw1200_update_beaconing.reset = private unnamed_addr constant %struct.wsm_reset { i32 1, i32 0 }, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@CW1200_JOIN_STATUS_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"ap restarting\0A\00", align 1
@CW1200_JOIN_STATUS_PASSIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"ap started join_status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*)* @cw1200_update_beaconing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_update_beaconing(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  %3 = alloca %struct.ieee80211_bss_conf*, align 8
  %4 = alloca %struct.wsm_reset, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %5 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %6 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ieee80211_bss_conf* %8, %struct.ieee80211_bss_conf** %3, align 8
  %9 = bitcast %struct.wsm_reset* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.wsm_reset* @__const.cw1200_update_beaconing.reset to i8*), i64 8, i1 false)
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %11 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %1
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %17 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CW1200_JOIN_STATUS_AP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %23 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %21, %15
  %30 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %32 = call i32 @wsm_lock_tx(%struct.cw1200_common* %31)
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %34 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CW1200_JOIN_STATUS_PASSIVE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %40 = call i32 @wsm_reset(%struct.cw1200_common* %39, %struct.wsm_reset* %4)
  br label %41

41:                                               ; preds = %38, %29
  %42 = load i64, i64* @CW1200_JOIN_STATUS_PASSIVE, align 8
  %43 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %44 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %46 = call i32 @cw1200_start_ap(%struct.cw1200_common* %45)
  %47 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %48 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %47)
  br label %54

49:                                               ; preds = %21
  %50 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %51 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %49, %41
  br label %55

55:                                               ; preds = %54, %1
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i32 @wsm_lock_tx(%struct.cw1200_common*) #2

declare dso_local i32 @wsm_reset(%struct.cw1200_common*, %struct.wsm_reset*) #2

declare dso_local i32 @cw1200_start_ap(%struct.cw1200_common*) #2

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
