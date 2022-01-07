; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_do_unjoin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_do_unjoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wsm_reset = type { i32 }
%struct.cw1200_common = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@__const.cw1200_do_unjoin.reset = private unnamed_addr constant %struct.wsm_reset { i32 1 }, align 4
@.str = private unnamed_addr constant [38 x i8] c"Delayed unjoin is already scheduled.\0A\00", align 1
@CW1200_JOIN_STATUS_AP = common dso_local global i64 0, align 8
@CW1200_JOIN_STATUS_PASSIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"[STA] Unjoin completed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cw1200_common*)* @cw1200_do_unjoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw1200_do_unjoin(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  %3 = alloca %struct.wsm_reset, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %4 = bitcast %struct.wsm_reset* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.wsm_reset* @__const.cw1200_do_unjoin.reset to i8*), i64 4, i1 false)
  %5 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %6 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %5, i32 0, i32 18
  %7 = call i32 @cancel_delayed_work_sync(i32* %6)
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 7
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %12 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 17
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %20 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %25 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %24, i32 0, i32 16
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @wiphy_dbg(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %33

30:                                               ; preds = %18
  %31 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %32 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %23
  br label %105

34:                                               ; preds = %1
  %35 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %36 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %35, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %38 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %105

42:                                               ; preds = %34
  %43 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %44 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CW1200_JOIN_STATUS_AP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %105

49:                                               ; preds = %42
  %50 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %51 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %50, i32 0, i32 15
  %52 = call i32 @cancel_work_sync(i32* %51)
  %53 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %54 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %53, i32 0, i32 14
  %55 = call i32 @cancel_work_sync(i32* %54)
  %56 = load i64, i64* @CW1200_JOIN_STATUS_PASSIVE, align 8
  %57 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %58 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %60 = call i32 @wsm_flush_tx(%struct.cw1200_common* %59)
  %61 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %62 = call i32 @wsm_keep_alive_period(%struct.cw1200_common* %61, i32 0)
  %63 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %64 = call i32 @wsm_reset(%struct.cw1200_common* %63, %struct.wsm_reset* %3)
  %65 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %66 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %67 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 10
  %70 = call i32 @wsm_set_output_power(%struct.cw1200_common* %65, i32 %69)
  %71 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %72 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %71, i32 0, i32 13
  store i64 0, i64* %72, align 8
  %73 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %74 = call i32 @cw1200_setup_mac(%struct.cw1200_common* %73)
  %75 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %76 = call i32 @cw1200_free_event_queue(%struct.cw1200_common* %75)
  %77 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %78 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %77, i32 0, i32 12
  %79 = call i32 @cancel_work_sync(i32* %78)
  %80 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %81 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %82 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cw1200_update_listening(%struct.cw1200_common* %80, i32 %83)
  %85 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %86 = call i32 @cw1200_cqm_bssloss_sm(%struct.cw1200_common* %85, i32 0, i32 0, i32 0)
  %87 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %88 = call i32 @wsm_set_block_ack_policy(%struct.cw1200_common* %87, i32 0, i32 0)
  %89 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %90 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %89, i32 0, i32 5
  store i32 0, i32* %90, align 4
  %91 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %92 = call i32 @cw1200_update_filtering(%struct.cw1200_common* %91)
  %93 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %94 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %93, i32 0, i32 10
  %95 = call i32 @memset(i32* %94, i32 0, i32 4)
  %96 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %97 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %96, i32 0, i32 9
  %98 = call i32 @memset(i32* %97, i32 0, i32 4)
  %99 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %100 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %99, i32 0, i32 6
  store i32 0, i32* %100, align 8
  %101 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %102 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %101, i32 0, i32 8
  %103 = call i32 @memset(i32* %102, i32 0, i32 4)
  %104 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %49, %48, %41, %33
  %106 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %107 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %106, i32 0, i32 7
  %108 = call i32 @mutex_unlock(i32* %107)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @wiphy_dbg(i32, i8*) #2

declare dso_local i32 @cancel_work_sync(i32*) #2

declare dso_local i32 @wsm_flush_tx(%struct.cw1200_common*) #2

declare dso_local i32 @wsm_keep_alive_period(%struct.cw1200_common*, i32) #2

declare dso_local i32 @wsm_reset(%struct.cw1200_common*, %struct.wsm_reset*) #2

declare dso_local i32 @wsm_set_output_power(%struct.cw1200_common*, i32) #2

declare dso_local i32 @cw1200_setup_mac(%struct.cw1200_common*) #2

declare dso_local i32 @cw1200_free_event_queue(%struct.cw1200_common*) #2

declare dso_local i32 @cw1200_update_listening(%struct.cw1200_common*, i32) #2

declare dso_local i32 @cw1200_cqm_bssloss_sm(%struct.cw1200_common*, i32, i32, i32) #2

declare dso_local i32 @wsm_set_block_ack_policy(%struct.cw1200_common*, i32, i32) #2

declare dso_local i32 @cw1200_update_filtering(%struct.cw1200_common*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
