; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_tx_policy_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_tx_policy_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, %struct.tx_policy_cache }
%struct.tx_policy_cache = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tx_policy }
%struct.tx_policy = type { i32, i32, i64 }
%struct.wsm_set_tx_rate_retry_policy = type { i64, %struct.wsm_tx_rate_retry_policy* }
%struct.wsm_tx_rate_retry_policy = type { i32, i32, i32, i32, i32 }

@TX_POLICY_CACHE_SIZE = common dso_local global i32 0, align 4
@WSM_TX_RATE_POLICY_FLAG_TERMINATE_WHEN_FINISHED = common dso_local global i32 0, align 4
@WSM_TX_RATE_POLICY_FLAG_COUNT_INITIAL_TRANSMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[TX policy] Upload %d policies\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*)* @tx_policy_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_policy_upload(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  %3 = alloca %struct.tx_policy_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wsm_set_tx_rate_retry_policy, align 8
  %6 = alloca %struct.tx_policy*, align 8
  %7 = alloca %struct.wsm_tx_rate_retry_policy*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 2
  store %struct.tx_policy_cache* %9, %struct.tx_policy_cache** %3, align 8
  %10 = bitcast %struct.wsm_set_tx_rate_retry_policy* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %3, align 8
  %12 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %72, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TX_POLICY_CACHE_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %75

18:                                               ; preds = %14
  %19 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %3, align 8
  %20 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.tx_policy* %25, %struct.tx_policy** %6, align 8
  %26 = load %struct.tx_policy*, %struct.tx_policy** %6, align 8
  %27 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %18
  %31 = load %struct.tx_policy*, %struct.tx_policy** %6, align 8
  %32 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.wsm_set_tx_rate_retry_policy, %struct.wsm_set_tx_rate_retry_policy* %5, i32 0, i32 1
  %37 = load %struct.wsm_tx_rate_retry_policy*, %struct.wsm_tx_rate_retry_policy** %36, align 8
  %38 = getelementptr inbounds %struct.wsm_set_tx_rate_retry_policy, %struct.wsm_set_tx_rate_retry_policy* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.wsm_tx_rate_retry_policy, %struct.wsm_tx_rate_retry_policy* %37, i64 %39
  store %struct.wsm_tx_rate_retry_policy* %40, %struct.wsm_tx_rate_retry_policy** %7, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.wsm_tx_rate_retry_policy*, %struct.wsm_tx_rate_retry_policy** %7, align 8
  %43 = getelementptr inbounds %struct.wsm_tx_rate_retry_policy, %struct.wsm_tx_rate_retry_policy* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %45 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wsm_tx_rate_retry_policy*, %struct.wsm_tx_rate_retry_policy** %7, align 8
  %48 = getelementptr inbounds %struct.wsm_tx_rate_retry_policy, %struct.wsm_tx_rate_retry_policy* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %50 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.wsm_tx_rate_retry_policy*, %struct.wsm_tx_rate_retry_policy** %7, align 8
  %53 = getelementptr inbounds %struct.wsm_tx_rate_retry_policy, %struct.wsm_tx_rate_retry_policy* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @WSM_TX_RATE_POLICY_FLAG_TERMINATE_WHEN_FINISHED, align 4
  %55 = load i32, i32* @WSM_TX_RATE_POLICY_FLAG_COUNT_INITIAL_TRANSMIT, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.wsm_tx_rate_retry_policy*, %struct.wsm_tx_rate_retry_policy** %7, align 8
  %58 = getelementptr inbounds %struct.wsm_tx_rate_retry_policy, %struct.wsm_tx_rate_retry_policy* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.wsm_tx_rate_retry_policy*, %struct.wsm_tx_rate_retry_policy** %7, align 8
  %60 = getelementptr inbounds %struct.wsm_tx_rate_retry_policy, %struct.wsm_tx_rate_retry_policy* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tx_policy*, %struct.tx_policy** %6, align 8
  %63 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcpy(i32 %61, i32 %64, i32 4)
  %66 = load %struct.tx_policy*, %struct.tx_policy** %6, align 8
  %67 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = getelementptr inbounds %struct.wsm_set_tx_rate_retry_policy, %struct.wsm_set_tx_rate_retry_policy* %5, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %35, %30, %18
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %14

75:                                               ; preds = %14
  %76 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %3, align 8
  %77 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %80 = call i32 @cw1200_debug_tx_cache_miss(%struct.cw1200_common* %79)
  %81 = getelementptr inbounds %struct.wsm_set_tx_rate_retry_policy, %struct.wsm_set_tx_rate_retry_policy* %5, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %82)
  %84 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %85 = call i32 @wsm_set_tx_rate_retry_policy(%struct.cw1200_common* %84, %struct.wsm_set_tx_rate_retry_policy* %5)
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @cw1200_debug_tx_cache_miss(%struct.cw1200_common*) #2

declare dso_local i32 @pr_debug(i8*, i64) #2

declare dso_local i32 @wsm_set_tx_rate_retry_policy(%struct.cw1200_common*, %struct.wsm_set_tx_rate_retry_policy*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
