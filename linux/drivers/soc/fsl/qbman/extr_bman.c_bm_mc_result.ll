; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_mc_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_mc_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bm_mc_result = type { i32 }
%struct.bm_portal = type { %struct.bm_mc }
%struct.bm_mc = type { i32, i64, i32, %union.bm_mc_result* }

@mc_hw = common dso_local global i64 0, align 8
@BM_MCC_VERB_VBIT = common dso_local global i32 0, align 4
@mc_idle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.bm_mc_result* (%struct.bm_portal*)* @bm_mc_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.bm_mc_result* @bm_mc_result(%struct.bm_portal* %0) #0 {
  %2 = alloca %union.bm_mc_result*, align 8
  %3 = alloca %struct.bm_portal*, align 8
  %4 = alloca %struct.bm_mc*, align 8
  %5 = alloca %union.bm_mc_result*, align 8
  store %struct.bm_portal* %0, %struct.bm_portal** %3, align 8
  %6 = load %struct.bm_portal*, %struct.bm_portal** %3, align 8
  %7 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %6, i32 0, i32 0
  store %struct.bm_mc* %7, %struct.bm_mc** %4, align 8
  %8 = load %struct.bm_mc*, %struct.bm_mc** %4, align 8
  %9 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %8, i32 0, i32 3
  %10 = load %union.bm_mc_result*, %union.bm_mc_result** %9, align 8
  %11 = load %struct.bm_mc*, %struct.bm_mc** %4, align 8
  %12 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %union.bm_mc_result, %union.bm_mc_result* %10, i64 %14
  store %union.bm_mc_result* %15, %union.bm_mc_result** %5, align 8
  %16 = load %struct.bm_mc*, %struct.bm_mc** %4, align 8
  %17 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @mc_hw, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @DPAA_ASSERT(i32 %21)
  %23 = load %union.bm_mc_result*, %union.bm_mc_result** %5, align 8
  %24 = bitcast %union.bm_mc_result* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load %union.bm_mc_result*, %union.bm_mc_result** %5, align 8
  %29 = call i32 @dpaa_invalidate_touch_ro(%union.bm_mc_result* %28)
  store %union.bm_mc_result* null, %union.bm_mc_result** %2, align 8
  br label %41

30:                                               ; preds = %1
  %31 = load %struct.bm_mc*, %struct.bm_mc** %4, align 8
  %32 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = xor i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @BM_MCC_VERB_VBIT, align 4
  %36 = load %struct.bm_mc*, %struct.bm_mc** %4, align 8
  %37 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = xor i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %union.bm_mc_result*, %union.bm_mc_result** %5, align 8
  store %union.bm_mc_result* %40, %union.bm_mc_result** %2, align 8
  br label %41

41:                                               ; preds = %30, %27
  %42 = load %union.bm_mc_result*, %union.bm_mc_result** %2, align 8
  ret %union.bm_mc_result* %42
}

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @dpaa_invalidate_touch_ro(%union.bm_mc_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
